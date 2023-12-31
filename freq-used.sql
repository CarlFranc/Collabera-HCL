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

UPDATE CMDREG SET CLASSNAME = 'com.ibm.commerce.orderitems.commands.OrderItemAddCmdImpl'
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
SELECT * FROM CATENTRY WHERE PARTNUMBER IN ('GVE034_340101','CAC024_240101','GVE034_340501') AND CATENTRY_ID IN (12747, 12624, 12755);
SELECT * FROM CATENTRY WHERE PARTNUMBER IN ('AuroraWMDRS-172','AuroraWMDRS-173','AuroraWMDRS-452');
SELECT * FROM CATENTRY WHERE PARTNUMBER IN ('GDA035_350101','GDA035_3501', 'GDA035_350201', 'GDA035_3502', 'WAC007_071101','WAC007_0711');

SELECT * FROM CATENTDESC WHERE CATENTRY_ID = 10212 AND LANGUAGE_ID = -1;
--

SELECT * FROM CATENTRY WHERE BASEITEM_ID = 10045;
SELECT * FROM CATENTRY WHERE CATENTRY_ID = 12623;

SELECT * FROM CATENTTYPE;
SELECT * FROM CATENTDESC WHERE CATENTRY_ID IN (10211, 10212, 10466) AND LANGUAGE_ID = -1;
SELECT * FROM TI_RATING;
SELECT * FROM CATENTRY WHERE CATENTRY_ID IN (10744,10745,10746,10747,10749);

SELECT * FROM TI_DELTA_CATENTRY;
SELECT * FROM CATENTRY WHERE PARTNUMBER NOT LIKE 'Aurora%' and CATENTTYPE_ID = 'ItemBean';
select * from SRCHATTR where srchattr_id = 10003;
select * from SRCHATTRPROP;

SELECT * FROM SRCHATTR; WHERE SRCHATTR_ID IN (12687);
INSERT INTO SRCHATTR(SRCHATTR_ID,INDEXSCOPE,INDEXTYPE,IDENTIFIER,OPTCOUNTER)
VALUES(10002, '0', 'CatalogEntry', '_cat.productRanking', 0);


SELECT * FROM SRCHATTRPROP WHERE SRCHATTR_ID IN (10001, 10002, 10003);
INSERT INTO SRCHATTRPROP(SRCHATTR_ID, PROPERTYNAME, PROPERTYVALUE, OPTCOUNTER)
VALUES(10002, 'PRODUCT_RANKING', 'productRanking', 0);

SELECT * FROM SRCHATTRDESC WHERE SRCHATTR_ID IN (10001, 10002, 10003);
INSERT INTO SRCHATTRDESC(SRCHATTR_ID, LANGUAGE_ID, DISPLAYNAME, DESCRIPTION)
VALUES(10002, -1, 'Product Ranking', null);

INSERT INTO SRCHATTR(SRCHATTR_ID,INDEXSCOPE,INDEXTYPE,IDENTIFIER,OPTCOUNTER)
VALUES(10003, '0', 'CatalogEntry', '_cat.ratingCompany', 0);

INSERT INTO SRCHATTRPROP(SRCHATTR_ID, PROPERTYNAME, PROPERTYVALUE, OPTCOUNTER)
VALUES(10003, 'RATING_COMPANY', 'ratingCompany', 0);

INSERT INTO SRCHATTRDESC(SRCHATTR_ID, LANGUAGE_ID, DISPLAYNAME, DESCRIPTION)
VALUES(10003, -1, 'Rating Company', null);

INSERT INTO SRCHATTRDESC(SRCHATTR_ID, LANGUAGE_ID, DISPLAYNAME, DESCRIPTION, OPTCOUNTER)
VALUES(10002, -2, 'translatedText', null, 0);
INSERT INTO SRCHATTRDESC(SRCHATTR_ID, LANGUAGE_ID, DISPLAYNAME, DESCRIPTION, OPTCOUNTER)
VALUES(10003, -2, 'translatedText', null, 0);

SELECT * FROM SRCHATTR WHERE SRCHATTR_ID IN (10002, 10003);
SELECT * FROM SRCHATTRPROP WHERE SRCHATTR_ID IN (10002, 10003);
SELECT * FROM SRCHATTRDESC WHERE SRCHATTR_ID IN (10002, 10003);

DELETE FROM SRCHATTR WHERE SRCHATTR_ID IN (10002, 10003);
COMMIT;

SELECT * FROM X_VI_CE_0_1 WHERE PK IN (10772,10773,12684,12685,12686,12687);

SELECT * FROM ATTR WHERE ATTR_ID IN (7000000000000000001,
7000000000000000002,
7000000000000000001,
7000000000000000002,
7000000000000000001,
7000000000000000002);
SELECT * FROM CATENTRY;
SELECT * FROM CATENTRYATTR WHERE CATENTRY_ID IN (10211, 10212, 10466);
SELECT * FROM ATTRVAL WHERE ATTR_ID IN (7000000000000000001,
7000000000000000002,
7000000000000000001,
7000000000000000002,
7000000000000000001,
7000000000000000002);

SELECT * FROM ATTRVALDESC WHERE ATTR_ID IN (7000000000000000001,
7000000000000000002,
7000000000000000001,
7000000000000000002,
7000000000000000001,
7000000000000000002) AND LANGUAGE_ID = -1;

SELECT * FROM ATTR WHERE IDENTIFIER = 'GiftWrappable';
SELECT * FROM ATTRVAL WHERE ATTR_ID = 7000000000000000501;
SELECT * FROM ATTRVALDESC WHERE LANGUAGE_ID = -1 AND ATTR_ID = 7000000000000000501;
SELECT * FROM CATENTRYATTR WHERE CATENTRY_ID IN (10211, 10212, 10466);
SELECT * FROM CATENTRYATTR WHERE CATENTRY_ID  = 10211;
SELECT * FROM X_VI_CE_0_1 WHERE X_PRODUCTRANKING IS NOT NULL;
SELECT * FROM ATTRVAL WHERE ATTRVAL_ID IN (7000000000000000002,
7000000000000000013,
7000000000000003001,
7000000000000000003,
7000000000000000013,
7000000000000003001,
7000000000000000002,
7000000000000000012,
7000000000000003001);
SELECT * FROM CATENTRY WHERE PARTNUMBER = 'CAC024_240101';
SELECT * FROM ATTR;
SELECT * FROM ATTRVAL;

SELECT A.ATTR_ID, A.IDENTIFIER, A.ATTRDICT_ID, B.ATTRVAL_ID, B.IDENTIFIER, C. VALUE, C.STRINGVALUE, C.LANGUAGE_ID, D.CATENTRY_ID
FROM ATTR A
INNER JOIN ATTRVAL B
ON A.ATTR_ID = B.ATTR_ID
INNER JOIN ATTRVALDESC C
ON C.ATTR_ID = A.ATTR_ID
INNER JOIN CATENTRYATTR D
ON A.ATTR_ID = D.ATTR_ID
WHERE D.CATENTRY_ID IN (10211) AND LANGUAGE_ID = -1 AND A.ATTR_ID = 7000000000000000501;

SELECT D.CATENTRY_ID, E.PARTNUMBER, A.ATTR_ID, A.IDENTIFIER, A.ATTRDICT_ID, B.ATTRVAL_ID, B.IDENTIFIER, C. VALUE, C.STRINGVALUE, C.LANGUAGE_ID
FROM ATTR A, ATTRVAL B, ATTRVALDESC C, CATENTRYATTR D, CATENTRY E
WHERE 
A.ATTR_ID = B.ATTR_ID AND
C.ATTR_ID = A.ATTR_ID AND
B.ATTRVAL_ID = C.ATTRVAL_ID AND 
D.ATTR_ID = B.ATTR_ID AND
D.ATTRVAL_ID = B.ATTRVAL_ID AND 
D.ATTR_ID = A.ATTR_ID AND
D.ATTR_ID = C.ATTR_ID AND 
D.ATTRVAL_ID = C.ATTRVAL_ID AND
E.CATENTRY_ID = D.CATENTRY_ID AND
C.LANGUAGE_ID = -1 AND D.CATENTRY_ID = 12685; AND A.ATTR_ID = 7000000000000000501 ;

SELECT * FROM TI_DELTA_CATENTRY;
SELECT * FROM CATENTRY WHERE CATENTRY_ID IN (10772,10773,12684,12685,12686,12687);

/* DELETE FROM ORDITEMEXTATTR;
COMMIT; */
SELECT * FROM ORDITEMEXTATTR;

SELECT * FROM ORDERITEMS;
select * from catentry where baseitem_id = 10006;
