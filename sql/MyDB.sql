create table  dog_master (
    dog_code VARCHAR2(30),
    classify varchar2(20),
    com_count NUMBER(20),
    com_place varchar2(20),
    CONSTRAINT pk_component PRIMARY KEY (dog_code)
);

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('1','��Ƽ��',5,'Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('2','��Ƽ��',4,'Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('3','��Ƽ��',4,'Siheung');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('4','���޶�Ͼ�',6,'Busan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('5','���޶�Ͼ�',3,'Daegu');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('6','���޶�Ͼ�',7,'Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('7','���޶�Ͼ�',7,'Geojedo');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('8','Ǫ��',5,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('9','Ǫ��',4,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('10','Ǫ��',4,'Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('11','����',85,'Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('12','����',1100,'Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('13','����',135,'Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('14','����',273,'Suwon');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('15','����',285,'Suwon');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('16','ġ�Ϳ�',6,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('17','ġ�Ϳ�',7,'Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('18','ġ�Ϳ�',5,'Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('19','������',7,'Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('20','������',8,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('21','������',12,'Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('22','������',10,'Yongin');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('23','�ͽ���',3,'Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('24','�ͽ���',7,'Siheung');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('25','�ͽ���',2,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('26','�ͽ���',5,'Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('27','�ͽ���',6,'Ansan');

INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('28','���',35,'Yongin');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('29','���',8,'Geojedo');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('30','���',15,'Ansan');
INSERT INTO dog_master(dog_code,classify,com_count,com_place) VALUES ('31','���',20,'Siheung');

commit;

select * from dog_master;