create table  dog_master (
    dog_code VARCHAR2(30),
    classify varchar2(20),
    com_count NUMBER(20),
    com_place varchar2(20),
    CONSTRAINT pk_component PRIMARY KEY (dog_code)
);

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('1','¸»Æ¼Áî',5,'Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('2','¸»Æ¼Áî',4,'Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('3','¸»Æ¼Áî',4,'Siheung');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('4','Æ÷¸Þ¶ó´Ï¾È',6,'Busan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('5','Æ÷¸Þ¶ó´Ï¾È',3,'Daegu');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('6','Æ÷¸Þ¶ó´Ï¾È',7,'Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('7','Æ÷¸Þ¶ó´Ï¾È',7,'Geojedo');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('8','Çªµé',5,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('9','Çªµé',4,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('10','Çªµé',4,'Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('11','½ÃÃò',85,'Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('12','½ÃÃò',1100,'Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('13','½ÃÃò',135,'Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('14','½ÃÃò',273,'Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('15','½ÃÃò',285,'Suwon');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('16','Ä¡¿Í¿Í',6,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('17','Ä¡¿Í¿Í',7,'Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('18','Ä¡¿Í¿Í',5,'Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('19','Áøµ¾°³',7,'Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('20','Áøµ¾°³',8,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('21','Áøµ¾°³',12,'Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('22','Áøµ¾°³',10,'Yongin');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('23','¹Í½º°ß',3,'Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('24','¹Í½º°ß',7,'Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('25','¹Í½º°ß',2,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('26','¹Í½º°ß',5,'Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('27','¹Í½º°ß',6,'Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('28','ºñ¼õ',35,'Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('29','ºñ¼õ',8,'Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('30','ºñ¼õ',15,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('31','ºñ¼õ',20,'Siheung');

commit;

select * from dog_master;