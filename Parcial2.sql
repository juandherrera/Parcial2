CREATE TABLESPACE mid_term 
    DATAFILE 'mid_term.dbf' SIZE 50M;
    
    
 CREATE USER jherrera
    IDENTIFIED BY jherrera
    DEFAULT TABLESPACE mid_term;
    GRANT CONNECT TO jherrera;
    GRANT CREATE SESSION TO jherrera;
    GRANT CREATE TABLE TO jherrera;
    GRANT UNLIMITED TABLESPACE to jherrera;
    
    CREATE ROLE MINI_DBA;
    GRANT CREATE SEQUENCE TO MINI_DBA
    GRANT CREATE TABLE TO MINI_DBA
    
    CREATE ROLE STUDENT;
    GRANT CREATE SESSION TO STUDENT
    GRANT MINI_DBA TO STUDENT
    
    GRANT STUDENT TO jherrera
    
    --con el usuario
    
    CREATE SEQUENCE MUNICIPIOS_SEQ
    START WITH 10
    increment by 1
    maxvalue 100;
    
    CREATE SEQUENCE MUNICIPIOS_SEQ
    START WITH 5000
    increment by 1
    maxvalue 6000;
    
    CREATE TABLE MUNICIPIOS
    ID INT PRIMARY KEY,
    NOMBRE VARCHAR2 (255);
    
    CREATE TABLE CAPTURAS
    ID INT PRIMARY KEY,
    FECHA VARCHAR2(255),
    DEPARTAMENTO VARCHAR2 (255),
    DIA VARCHAR2 (255),
    BARRIO VARCHAR2 (255),
    ZONA VARCHAR2(255),
    CLASE_SITIO VARCHAR2(255),
    EDAD INT,
    SEXO VARCHAR2(255),
    ESTADO CIVIL VARCHAR2(255),
    CLASE_EMPLEADO VARCHAR2(255),
    PROFESION VARCHAR2(255),
    ESCOLARIDAD VARCHAR2(255),
    DELITO VARCHAR2(255),
    CONSTRAINT FK_MUNICIPIO_ID FOREIGN KEY(MUNICIPIO_ID) REFERENCES MUNICIPIOS(ID)
    
    
