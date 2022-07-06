USE codeup_test_db;
SELECT 'Albums' AS 'Before 1991';
SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;
SELECT 'Genre' AS 'Disco Genre';
SELECT * FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';
SELECT 'Artist' AS 'Name of Artist';
SELECT * FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';

