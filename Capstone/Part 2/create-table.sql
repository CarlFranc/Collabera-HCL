CREATE TABLE X_USERFAVORITES(
	FAV_ID BIGINT NOT NULL,
	USER_ID BIGINT,
	FAV_COLOUR VARCHAR(25),
	FAV_FOOD VARCHAR(50),
	PRIMARY KEY(FAV_ID)
);
ALTER TABLE X_USERFAVORITES
ADD OPTCOUNTER SMALLINT;

SELECT * FROM X_USERFAVORITES;

SELECT * FROM KEYS WHERE TABLENAME = 'X_USERFAVORITES';
SELECT * FROM KEYS;
INSERT INTO KEYS VALUES(10001,'X_USERFAVORITES', 'FAV_ID', 10000, 500, 0, 2147483647,0,1048576,1);
commit;

