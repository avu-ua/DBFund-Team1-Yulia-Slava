-- TRIGGER 1 - IF A 'GENRE_NAME' IS DELETED FROM TABLE 'GENRES', ANY COMPOSITION(S)
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

-- Before- trigger
CREATE OR REPLACE TRIGGER before_delete_genre
BEFORE DELETE ON genres
FOR EACH ROW
EXECUTE FUNCTION update_deleted_genre();


-- TRIGGER 2 - ADDS UNDERSCORE CHARACTER IN TITLE OF THE NEWLY INSERTED COMPOSITION
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

-- Before- trigger
CREATE OR REPLACE TRIGGER before_insert_composition
BEFORE INSERT ON compositions
FOR EACH ROW
EXECUTE FUNCTION update_duplicate_title();