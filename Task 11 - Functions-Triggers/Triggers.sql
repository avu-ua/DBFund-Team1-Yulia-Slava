-- TRIGGER 1: IF A 'GENRE_NAME' IS DELETED FROM TABLE 'GENRES', ANY COMPOSITION(S)
-- THAT HAS/HAVE THAT GENRE NAME AS ITS/THEIR ONLY GENRE, GET ASSIGNED GENRE NAME 'UNCLASSIFIED' INSTEAD

-- Function called by the trigger
CREATE OR REPLACE FUNCTION update_deleted_genre()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM genres
        WHERE composition_id = OLD.composition_id
        AND genre_name <> OLD.genre_name
        ) THEN
        INSERT INTO genres (composition_id, genre_name)
        VALUES (OLD.composition_id, 'unclassified');
    END IF;

    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- Trigger
CREATE OR REPLACE TRIGGER before_delete_genre
BEFORE DELETE ON genres
FOR EACH ROW
EXECUTE FUNCTION update_deleted_genre();



-- TRIGGER 2: ADDS UNDERSCORE CHARACTER IN TITLE OF THE NEWLY INSERTED COMPOSITION
-- IF IT IS DUPLICATIVE OF ALREADY EXISTING TITLE 

-- Function called by the trigger
CREATE OR REPLACE FUNCTION update_duplicate_title()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT *
        FROM compositions
        WHERE title = NEW.title
    ) THEN
        NEW.title = NEW.title || '_';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger
CREATE OR REPLACE TRIGGER before_insert_composition
BEFORE INSERT ON compositions
FOR EACH ROW
EXECUTE FUNCTION update_duplicate_title();



-- TRIGGER 3: UPON DELETION OF A COMPOSITION FROM TABLE 'COMPOSITIONS', DELETES ROWS FROM
-- ALL OTHER TABLES WHICH REFERENCE THE ROW DELETED IN 'COMPOSITIONS'

-- Function called by the trigger
CREATE OR REPLACE FUNCTION cascaded_composition_deletion()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM authors WHERE composition_id = OLD.composition_id;
    DELETE FROM genres WHERE composition_id = OLD.composition_id;
    DELETE FROM limited_access_rights WHERE composition_id = OLD.composition_id;
    DELETE FROM playlists WHERE composition_id = OLD.composition_id;
    DELETE FROM commentaries WHERE composition_id = OLD.composition_id;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- Trigger
CREATE OR REPLACE TRIGGER trigger_cascaded_composition_deletion
BEFORE DELETE ON compositions
FOR EACH ROW
EXECUTE FUNCTION cascaded_composition_deletion();