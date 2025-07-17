--------------------------------------------------------
--  File created - Sunday-April-28-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "PRIYANKA"."ADMIN" 
   (	"ADMINID" NUMBER(*,0), 
	"ADMINNAME" VARCHAR2(255 BYTE), 
	"CONTACTDETAILS" VARCHAR2(255 BYTE), 
	"EMAILADDRESS" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOKINGS
--------------------------------------------------------

  CREATE TABLE "PRIYANKA"."BOOKINGS" 
   (	"BOOKING_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"NUM_TICKETS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOVIES
--------------------------------------------------------

  CREATE TABLE "PRIYANKA"."MOVIES" 
   (	"MOVIE_ID" NUMBER(*,0), 
	"TITLE" VARCHAR2(255 BYTE), 
	"GENRE" VARCHAR2(100 BYTE), 
	"DURATION" NUMBER(*,0), 
	"RELEASE_DATE" DATE, 
	"DIRECTOR" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PAYMENTS
--------------------------------------------------------

  CREATE TABLE "PRIYANKA"."PAYMENTS" 
   (	"PAYMENT_ID" NUMBER(*,0), 
	"CUSTOMER_ID" NUMBER(*,0), 
	"AMOUNT" NUMBER(10,2), 
	"PAYMENT_DATE" DATE, 
	"PAYMENT_METHOD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T1
--------------------------------------------------------

  CREATE TABLE "PRIYANKA"."T1" 
   (	"C1" NUMBER(*,0), 
	"C12" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table THEATERS
--------------------------------------------------------

  CREATE TABLE "PRIYANKA"."THEATERS" 
   (	"THEATER_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(100 BYTE), 
	"LOCATION" VARCHAR2(100 BYTE), 
	"CAPACITY" NUMBER(*,0), 
	"TOTAL_SEATS" NUMBER(*,0), 
	"BOOKED_SEATS" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_LOGIN
--------------------------------------------------------

  CREATE TABLE "PRIYANKA"."USER_LOGIN" 
   (	"USERNAME" VARCHAR2(25 BYTE), 
	"PASS_WORD" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into PRIYANKA.ADMIN
SET DEFINE OFF;
REM INSERTING into PRIYANKA.BOOKINGS
SET DEFINE OFF;
Insert into PRIYANKA.BOOKINGS (BOOKING_ID,NAME,EMAIL,PHONE,NUM_TICKETS) values (1234,'PRIYANKA','PR1@GMAIL.COM','07696777566',4);
Insert into PRIYANKA.BOOKINGS (BOOKING_ID,NAME,EMAIL,PHONE,NUM_TICKETS) values (9878789,'RAMAN','raman@gmail.com','9876579000',3);
Insert into PRIYANKA.BOOKINGS (BOOKING_ID,NAME,EMAIL,PHONE,NUM_TICKETS) values (74837934,'ajay','ajay@gmail.com','8794638295',2);
Insert into PRIYANKA.BOOKINGS (BOOKING_ID,NAME,EMAIL,PHONE,NUM_TICKETS) values (1234567892,'priyanka','priyanka@gmail.com','123456789',2);
Insert into PRIYANKA.BOOKINGS (BOOKING_ID,NAME,EMAIL,PHONE,NUM_TICKETS) values (9870654,'priyanka','priyanka@gmail.com','+917696777566',8);
Insert into PRIYANKA.BOOKINGS (BOOKING_ID,NAME,EMAIL,PHONE,NUM_TICKETS) values (7689864,'Ajay','ajay@gmail.com','987654621',9);
Insert into PRIYANKA.BOOKINGS (BOOKING_ID,NAME,EMAIL,PHONE,NUM_TICKETS) values (9320958,'sonia','sonia@gmail.com','2345939493',2);
REM INSERTING into PRIYANKA.MOVIES
SET DEFINE OFF;
REM INSERTING into PRIYANKA.PAYMENTS
SET DEFINE OFF;
REM INSERTING into PRIYANKA.T1
SET DEFINE OFF;
REM INSERTING into PRIYANKA.THEATERS
SET DEFINE OFF;
REM INSERTING into PRIYANKA.USER_LOGIN
SET DEFINE OFF;
Insert into PRIYANKA.USER_LOGIN (USERNAME,PASS_WORD) values ('priyanka','1243');
Insert into PRIYANKA.USER_LOGIN (USERNAME,PASS_WORD) values ('priyanka','1234');
Insert into PRIYANKA.USER_LOGIN (USERNAME,PASS_WORD) values ('priyanka','1234');
Insert into PRIYANKA.USER_LOGIN (USERNAME,PASS_WORD) values ('priyanka','1234');
Insert into PRIYANKA.USER_LOGIN (USERNAME,PASS_WORD) values ('priyanka','1234');
Insert into PRIYANKA.USER_LOGIN (USERNAME,PASS_WORD) values ('RAMAN','098000');
Insert into PRIYANKA.USER_LOGIN (USERNAME,PASS_WORD) values ('priyanka','pri');
Insert into PRIYANKA.USER_LOGIN (USERNAME,PASS_WORD) values ('priyanka','priw');
Insert into PRIYANKA.USER_LOGIN (USERNAME,PASS_WORD) values ('manjot','manjot');
Insert into PRIYANKA.USER_LOGIN (USERNAME,PASS_WORD) values ('ajay ','12345');
--------------------------------------------------------
--  Constraints for Table THEATERS
--------------------------------------------------------

  ALTER TABLE "PRIYANKA"."THEATERS" ADD PRIMARY KEY ("THEATER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOOKINGS
--------------------------------------------------------

  ALTER TABLE "PRIYANKA"."BOOKINGS" ADD PRIMARY KEY ("BOOKING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYMENTS
--------------------------------------------------------

  ALTER TABLE "PRIYANKA"."PAYMENTS" ADD PRIMARY KEY ("PAYMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "PRIYANKA"."ADMIN" ADD PRIMARY KEY ("ADMINID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_LOGIN
--------------------------------------------------------

  ALTER TABLE "PRIYANKA"."USER_LOGIN" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "PRIYANKA"."USER_LOGIN" MODIFY ("PASS_WORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIES
--------------------------------------------------------

  ALTER TABLE "PRIYANKA"."MOVIES" ADD PRIMARY KEY ("MOVIE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
