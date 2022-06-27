create table  dog_master (
    dog_code VARCHAR2(30),
    classify varchar2(20),
    com_count NUMBER(20),
    com_place varchar2(20),
    CONSTRAINT pk_component PRIMARY KEY (dog_code)
);

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('1','��Ƽ��',5,'Y-Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('2','��Ƽ��',4,'S-Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('3','��Ƽ��',4,'S-Siheung');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('4','���޶�Ͼ�',6,'B-Busan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('5','���޶�Ͼ�',3,'D-Daegu');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('6','���޶�Ͼ�',7,'G-Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('7','���޶�Ͼ�',7,'G-Geojedo');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('8','Ǫ��',5,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('9','Ǫ��',4,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('10','Ǫ��',4,'A-Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('11','����',85,'Y-Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('12','����',1100,'Y-Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('13','����',135,'S-Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('14','����',273,'S-Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('15','����',285,'S-Suwon');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('16','ġ�Ϳ�',6,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('17','ġ�Ϳ�',7,'G-Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('18','ġ�Ϳ�',5,'A-Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('19','������',7,'S-Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('20','������',8,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('21','������',12,'S-Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('22','������',10,'Y-Yongin');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('23','�ͽ���',3,'Y-Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('24','�ͽ���',7,'S-Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('25','�ͽ���',2,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('26','�ͽ���',5,'G-Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('27','�ͽ���',6,'A-Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('28','���',35,'Y-Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('29','���',8,'G-Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('30','���',15,'A-Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('31','���',20,'S-Siheung');

commit;

select * from dog_master;