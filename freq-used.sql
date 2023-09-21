--FFMCENTER_ID = 10501
--STORE_ID = 1;
select * from catalog where IDENTIFIER=10001;
select * from storeent; where IDENTIFIER='STORE_IDENTIFIER';
select * from storerel; where store_id=1 and streltyp_id=-4 and relatedstore_id not in (1);--10501
select * from storecat; where storeent_id=10501 and mastercatalog='1'
select * from store;
SELECT * FROM CATENTRY WHERE PARTNUMBER IN ('CLA022_220301','HME037_370201');
SELECT * FROM CATENTRY WHERE CATENTRY_ID IN (12665, 12789, 12788) AND LANGUAGE_ID = -1;
SELECT * FROM CATENTDESC WHERE CATENTRY_ID IN (12665, 12789, 12788) AND LANGUAGE_ID = -1;
SELECT * FROM INVENTORY WHERE CATENTRY_ID = 12665 AND STORE_ID = 1;
SELECT * FROM JOBSTATUS;
SELECT * FROM STORECONF;
SELECT * FROM CMDREG; --ALL ROWS WITH STOREENT_ID = 0 MEANS OPEN TO ALL STORES

SELECT * FROM CATENTRY;
SELECT * FROM CMDREG;
INSERT INTO CMDREG(STOREENT_ID, INTERFACENAME, DESCRIPTION, CLASSNAME, TARGET)
VALUES (0, 'com.joey.commerce.command.MyTestControllerCmd', 'My ControllerCommand Test', 'com.joey.commerce.command.MyTestAControllerCmdImpl','Local');
COMMIT;

SELECT * FROM CMDREG WHERE INTERFACENAME = 'com.joey.commerce.command.MyTestControllerCmd';

SELECT * FROM KEYS; WHERE TABLENAME = 'catentry';

select max(catentry_i) from catentry;
select * from keys where tablename = 'users';
select min(users_id) from users;


INSERT INTO CMDREG(STOREENT_ID, INTERFACENAME, DESCRIPTION, CLASSNAME, TARGET)
VALUES (0, 'com.joey.commerce.command.MyTestControllerCmd', 'My ControllerCommand Test', 'com.joey.commerce.command.MyTestAControllerCmdImpl','Local');

SELECT * FROM CMDREG where INTERFACENAME = 'com.ibm.commerce.orderitems.commands.OrderItemAddCmd';

UPDATE CMDREG SET CLASSNAME = 'com.custom.commerce.orders.commands.MyOrderItemAddCmdImpl'
WHERE INTERFACENAME = 'com.ibm.commerce.orderitems.commands.OrderItemAddCmd';

UPDATE CMDREG SET CLASSNAME = 'com.ibm.commerce.orderitems.commands.OrderItemAddCmdImpl'
WHERE INTERFACENAME = 'com.ibm.commerce.orderitems.commands.OrderItemAddCmd';
COMMIT;

SELECT * FROM CATENTRY WHERE PARTNUMBER IN ('GVE034_340101','CAC024_240101','GVE034_340501');

select * from catalog; --MASTER CATALOGS
select * from catgroup where catgroup_id = 10030;
select * from catgroup where identifier like '%Apparel%';

select * from CATGRPREL; where catalog_id = 10001 and catgroup_id_parent = 2;
select * from CATGRPREL WHERE CATGROUP_ID_CHILD = 10030;
select * from CATGPENREL where catentry_id = 12747;
select * from catentry where catentry_id = 12747;
select * from catentry where catenttype_id != 'ProductBean';
select * from catentdesc where language_id = -1 and catentry_id = 12747;
select * from ffmcenter;
select * from member;
select * from MBRATTR where mbrattr_id = ;

select * from TI_DELTA_CATENTRY;
SELECT * FROM TI_RATING;
SELECT * FROM SRCHATTR WHERE SRCHATTR_ID = 10001;
SELECT * FROM SRCHATTR;
INSERT INTO SRCHATTR(SRCHATTR_ID,INDEXSCOPE,INDEXTYPE,IDENTIFIER,OPTCOUNTER)
VALUES(10001, '0', 'CatalogEntry', '_cat.customerRanking', 0);

SELECT * FROM SRCHATTRPROP;
INSERT INTO SRCHATTRPROP(SRCHATTR_ID, PROPERTYNAME, PROPERTYVALUE, OPTCOUNTER)
VALUES(10001, 'merchandising-Sort-Numeric', 'customerRanking', 0);

SELECT * FROM SRCHATTRDESC;
INSERT INTO SRCHATTRDESC(SRCHATTR_ID, LANGUAGE_ID, DISPLAYNAME, DESCRIPTION)
VALUES(10001, -1, 'Customer Ranking', null);
INSERT INTO SRCHATTRDESC(SRCHATTR_ID, LANGUAGE_ID, DISPLAYNAME, DESCRIPTION, OPTCOUNTER)
VALUES(10001, -2, 'translatedText', null, 0);

commit;

SELECT * FROM TI_RATING;
SELECT * FROM ORDERS;
SELECT * FROM ORDERITEMS;
SELECT * FROM USERS;

SELECT * FROM ATTR WHERE ATTR_ID IN (7000000000000000097, 7000000000000000096);
SELECT * FROM ATTRDESC WHERE ATTR_ID IN (7000000000000000097, 7000000000000000096) AND LANGUAGE_ID = -1;
SELECT * FROM CATENTRYATTR WHERE CATENTRY_ID = 12689;
SELECT * FROM CATENTRY WHERE PARTNUMBER = 'GDA035_350301';
SELECT * FROM STORECENT wherE CATENTRY_ID IN (14001, 14003, 14002, 12747, 12624, 12755);
SELECT * FROM STORECENT WHERE STOREENT_ID != 10501;
SELECT * FROM CATALOG;
select * from catalog where IDENTIFIER=10001;
