﻿--------------------------------------------------------
--  File created - Wednesday-February-20-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_CHATLOG
--------------------------------------------------------

   CREATE SEQUENCE  "SPRING"."SEQ_CHATLOG"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CHATLOG
--------------------------------------------------------

  CREATE TABLE "SPRING"."CHATLOG" 
   (	"CHATNO" NUMBER, 
	"CHATID" CHAR(20 BYTE), 
	"MEMBERID" VARCHAR2(256 BYTE), 
	"MSG" VARCHAR2(2000 BYTE), 
	"TIME" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CHATROOM
--------------------------------------------------------

  CREATE TABLE "SPRING"."CHATROOM" 
   (	"CHATID" CHAR(20 BYTE), 
	"MEMBERID" VARCHAR2(256 BYTE), 
	"LASTCHECK" NUMBER DEFAULT 0, 
	"STATUS" CHAR(1 BYTE) DEFAULT 'Y', 
	"STARTDATE" DATE DEFAULT sysdate, 
	"ENDDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "SPRING"."MEMBER" 
   (	"MEMBERID" VARCHAR2(15 BYTE), 
	"PASSWORD" VARCHAR2(300 BYTE), 
	"MEMBERNAME" VARCHAR2(20 BYTE), 
	"GENDER" CHAR(1 BYTE), 
	"AGE" NUMBER, 
	"EMAIL" VARCHAR2(30 BYTE), 
	"PHONE" CHAR(11 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"HOBBY" VARCHAR2(50 BYTE), 
	"ENROLLDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SPRING.CHATLOG
SET DEFINE OFF;
Insert into SPRING.CHATLOG (CHATNO,CHATID,MEMBERID,MSG,TIME) values (141,'chat_9oJihI0a0TM9256','11A38D10E80D5C6EEF1D1BFCFDE86FB9','안녕하세요~ ',1550639715155);
Insert into SPRING.CHATLOG (CHATNO,CHATID,MEMBERID,MSG,TIME) values (142,'chat_9oJihI0a0TM9256','11A38D10E80D5C6EEF1D1BFCFDE86FB9','상품문의요, 에어맥스95 스투시 265 사이즈 있나요?',1550639740069);
Insert into SPRING.CHATLOG (CHATNO,CHATID,MEMBERID,MSG,TIME) values (143,'chat_362n10730aoywoy','tuuk','환불요청합니다.',1550639774884);
Insert into SPRING.CHATLOG (CHATNO,CHATID,MEMBERID,MSG,TIME) values (144,'chat_362n10730aoywoy','tuuk','배송된 상품이 제가 주문한 게 아니에요~',1550639795190);
Insert into SPRING.CHATLOG (CHATNO,CHATID,MEMBERID,MSG,TIME) values (145,'chat_362n10730aoywoy','admin','안녕하세요, 고객님',1550639838502);
Insert into SPRING.CHATLOG (CHATNO,CHATID,MEMBERID,MSG,TIME) values (146,'chat_362n10730aoywoy','admin','불편을 드려 죄송합니다.',1550639844567);
Insert into SPRING.CHATLOG (CHATNO,CHATID,MEMBERID,MSG,TIME) values (147,'chat_362n10730aoywoy','tuuk','됐고요, 빨리 환불해주세요~',1550639868831);
REM INSERTING into SPRING.CHATROOM
SET DEFINE OFF;
Insert into SPRING.CHATROOM (CHATID,MEMBERID,LASTCHECK,STATUS,STARTDATE,ENDDATE) values ('chat_9oJihI0a0TM9256','admin',0,'Y',to_date('20-02-19','DD-MM-RR'),null);
Insert into SPRING.CHATROOM (CHATID,MEMBERID,LASTCHECK,STATUS,STARTDATE,ENDDATE) values ('chat_9oJihI0a0TM9256','11A38D10E80D5C6EEF1D1BFCFDE86FB9',1550639740069,'Y',to_date('20-02-19','DD-MM-RR'),null);
Insert into SPRING.CHATROOM (CHATID,MEMBERID,LASTCHECK,STATUS,STARTDATE,ENDDATE) values ('chat_362n10730aoywoy','admin',1550639844567,'Y',to_date('20-02-19','DD-MM-RR'),null);
Insert into SPRING.CHATROOM (CHATID,MEMBERID,LASTCHECK,STATUS,STARTDATE,ENDDATE) values ('chat_362n10730aoywoy','tuuk',1550640094342,'Y',to_date('20-02-19','DD-MM-RR'),null);
REM INSERTING into SPRING.MEMBER
SET DEFINE OFF;
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('seo1234','$2a$10$60yMyC975ps67oHXHMQOZOM6lfvO6Njy0V.eGwUvygccdGXH.Cami','서태웅','M',19,null,'01012341324','서울','게임,여행',to_date('02-06-18','DD-MM-RR'));
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('nobodj','$2a$10$hI24F0H0m.Xw5AhTiv/tIeV5K2F4GJCsw2nrDuZE7iH2UiT6qq7ca','김동현','M',30000,'dongxuan09@naver.com','01040021863','관악구 봉천동','운동,독서,여행',to_date('24-05-18','DD-MM-RR'));
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('abcde','$2a$10$0RMoztmrhyGGtnbSqmbnM.UdrkML2bPl8k63amxwl3ggjNnRMQ1Iu','아무개','M',25,'abcde@naver.com','01012345678','서울시 강남구','운동,등산,독서',to_date('08-05-18','DD-MM-RR'));
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('qwerty','$2a$10$6wLRctSpj6rDSkoDPNdUSeN3mO/lfhAJzD083EZ13sVgT/gPyMeUa','김말년','F',30,'qwerty@naver.com','01098765432','서울시 관악구','운동,등산',to_date('08-05-18','DD-MM-RR'));
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('admin','$2a$10$3EkkjNlIVdmFILuXatM6R.vh8LdjHBBcdpggFDQB/b9wu0dyE9xR.','관리자','F',33,'admin@naver.com','01012345678','서울시 강남구','독서',to_date('08-05-18','DD-MM-RR'));
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('test','bfb447a9b23ae686f075f5f6dc6a5caeee74c561','테스트','F',10,'tester@email.com','01012341234',null,'운동,등산',to_date('12-05-18','DD-MM-RR'));
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('test3','$2a$10$73Y8NPMncJ5SMB6YqtpU2eRPH2I6d/W.Qqy4SM.osF8TmjWxrH3ae','혀고','M',32,'df@mailc.com','01012341234','서울시 관악구','운동,독서,게임',to_date('12-05-18','DD-MM-RR'));
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('test1','bfb447a9b23ae686f075f5f6dc6a5caeee74c561','테스트 salt','F',23,'gmail@gamil.com','01012341234',null,'운동,여행',to_date('12-05-18','DD-MM-RR'));
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('test2','21ce93ad18e10be1baabe2eea4faef09abda3456','테스트 salt2','M',23,'gmail@gamil.com','01012341234',null,'운동,등산,여행',to_date('12-05-18','DD-MM-RR'));
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('nohobby','$2a$10$r7Twhki7MUg5G1q/9sP.junkWzr5jSMkxspi3BaC.36tPtBsd2Qm2','노취미','M',23,'abc@naver.com','01012341234',null,null,to_date('14-05-18','DD-MM-RR'));
Insert into SPRING.MEMBER (MEMBERID,PASSWORD,MEMBERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('tuuk','$2a$10$vGBJMekm/yafNEmoTxuVW.q4SAR8XXVvO4AHOzo/qX2WRD4yIZe7S','강백호','M',38,'tuuk@gmail.com','01012341234',null,null,to_date('03-01-19','DD-MM-RR'));
--------------------------------------------------------
--  DDL for Index PK_CHATLOG
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."PK_CHATLOG" ON "SPRING"."CHATLOG" ("CHATNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_CHATROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."PK_CHATROOM" ON "SPRING"."CHATROOM" ("CHATID", "MEMBERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007266
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C007266" ON "SPRING"."MEMBER" ("MEMBERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CHATLOG
--------------------------------------------------------

  ALTER TABLE "SPRING"."CHATLOG" ADD CONSTRAINT "PK_CHATLOG" PRIMARY KEY ("CHATNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SPRING"."CHATLOG" MODIFY ("TIME" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."CHATLOG" MODIFY ("CHATID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CHATROOM
--------------------------------------------------------

  ALTER TABLE "SPRING"."CHATROOM" ADD CONSTRAINT "PK_CHATROOM" PRIMARY KEY ("CHATID", "MEMBERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SPRING"."CHATROOM" ADD CONSTRAINT "CK_CHATROOM_STATUS" CHECK (status in('Y','N')) ENABLE;
  ALTER TABLE "SPRING"."CHATROOM" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."CHATROOM" MODIFY ("MEMBERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "SPRING"."MEMBER" ADD PRIMARY KEY ("MEMBERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SPRING"."MEMBER" ADD CHECK (GENDER IN ('M','F')) ENABLE;
  ALTER TABLE "SPRING"."MEMBER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MEMBER" MODIFY ("MEMBERNAME" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MEMBER" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CHATLOG
--------------------------------------------------------

  ALTER TABLE "SPRING"."CHATLOG" ADD CONSTRAINT "FK_CHATID_MEMBERID" FOREIGN KEY ("CHATID", "MEMBERID")
	  REFERENCES "SPRING"."CHATROOM" ("CHATID", "MEMBERID") ENABLE;
