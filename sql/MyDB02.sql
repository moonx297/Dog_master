create table  dog_master (
    dog_code VARCHAR2(30),
    classify varchar2(20),
    com_count NUMBER(20),
    com_place varchar2(20),
    CONSTRAINT pk_component PRIMARY KEY (dog_code)
);

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('1','¸»Æ¼Áî',5,'Y-Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('2','¸»Æ¼Áî',4,'S-Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('3','¸»Æ¼Áî',4,'S-Siheung');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('4','Æ÷¸Þ¶ó´Ï¾È',6,'B-Busan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('5','Æ÷¸Þ¶ó´Ï¾È',3,'D-Daegu');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('6','Æ÷¸Þ¶ó´Ï¾È',7,'G-Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('7','Æ÷¸Þ¶ó´Ï¾È',7,'G-Geojedo');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('8','Çªµé',5,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('9','Çªµé',4,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('10','Çªµé',4,'A-Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('11','½ÃÃò',85,'Y-Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('12','½ÃÃò',1100,'Y-Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('13','½ÃÃò',135,'S-Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('14','½ÃÃò',273,'S-Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('15','½ÃÃò',285,'S-Suwon');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('16','Ä¡¿Í¿Í',6,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('17','Ä¡¿Í¿Í',7,'G-Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('18','Ä¡¿Í¿Í',5,'A-Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('19','Áøµ¾°³',7,'S-Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('20','Áøµ¾°³',8,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('21','Áøµ¾°³',12,'S-Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('22','Áøµ¾°³',10,'Y-Yongin');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('23','¹Í½º°ß',3,'Y-Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('24','¹Í½º°ß',7,'S-Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('25','¹Í½º°ß',2,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('26','¹Í½º°ß',5,'G-Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('27','¹Í½º°ß',6,'A-Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('28','ºñ¼õ',35,'Y-Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('29','ºñ¼õ',8,'G-Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('30','ºñ¼õ',15,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('31','ºñ¼õ',20,'S-Siheung');

commit;

select * from dog_master;