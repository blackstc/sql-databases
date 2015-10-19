DROP TABLE urls;
CREATE TABLE urls (
  id SERIAL PRIMARY KEY,
  original_url text NOT NULL,
  count integer DEFAULT 0
);

INSERT INTO urls (original_url, count) VALUES ('www.google.com', 7);
INSERT INTO urls (original_url, count) VALUES ('www.twitter.com', 1);
INSERT INTO urls (original_url, count) VALUES ('www.facebook.com', 3);
INSERT INTO urls (original_url, count) VALUES ('www.instagram.com', 4);
INSERT INTO urls (original_url) VALUES ('www.devour.com');

-- Display all of the rows in the urls table with all of the columns
SELECT * FROM urls;

-- Display all of the rows in the urls table with only the original_url column
SELECT original_url FROM urls;

-- Display one row from the urls table with a specific id
SELECT * FROM urls WHERE id = 1 LIMIT 1;

-- Display one row from the urls table with a specific original_url
SELECT * FROM urls WHERE original_url = 'www.twitter.com' LIMIT 1;

-- Update one of the rows with a specific id to have a new count
UPDATE urls SET count = 1337 WHERE id = 3;
SELECT * FROM urls WHERE id = 3;

-- Delete one row that matches an original_url
DELETE FROM urls WHERE original_url = 'www.instagram.com';
SELECT * FROM urls;
