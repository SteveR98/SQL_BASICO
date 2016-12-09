 CREATE TABLE "HR"."AFICIONADOS" 
   (	"AFICIONADO_ID" NUMBER(9,0), 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"DNI" VARCHAR2(20 BYTE), 
	"FECHANACIMIENTO" DATE, 
	"AFICION" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AFICIONADOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."AFICIONADOS_PK" ON "HR"."AFICIONADOS" ("AFICIONADO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table AFICIONADOS
--------------------------------------------------------

  ALTER TABLE "HR"."AFICIONADOS" MODIFY ("AFICION" NOT NULL ENABLE);
  ALTER TABLE "HR"."AFICIONADOS" ADD CONSTRAINT "AFICIONADOS_PK" PRIMARY KEY ("AFICIONADO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."AFICIONADOS" MODIFY ("FECHANACIMIENTO" NOT NULL ENABLE);
  ALTER TABLE "HR"."AFICIONADOS" MODIFY ("DNI" NOT NULL ENABLE);
  ALTER TABLE "HR"."AFICIONADOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "HR"."AFICIONADOS" MODIFY ("AFICIONADO_ID" NOT NULL ENABLE);