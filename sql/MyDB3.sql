create table  dog_master (
    age VARCHAR2(30),
    classify varchar2(20),
    com_count NUMBER(20),
    com_place varchar2(20),
    CONSTRAINT pk_component PRIMARY KEY (age)
);

INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('BT-01','��Ƽ��',5,'Yongin');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('BT-02','��Ƽ��',4,'Suwon');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('BT-03','��Ƽ��',4,'Siheung');

INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('CS-01','���޶�Ͼ�',6,'Busan');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('CS-02','���޶�Ͼ�',3,'Daegu');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('CS-03','���޶�Ͼ�',7,'������');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('CS-04','���޶�Ͼ�',7,'������');

INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('EP-01','Ǫ��',5,'Ansan');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('EP-02','Ǫ��',4,'Ansan');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('EP-03','Ǫ��',4,'Ansan');

INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('NS-01','����',85,'Yongin');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('NS-02','����',1100,'Yongin');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('NS-03','����',135,'Suwon');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('NS-04','����',273,'Suwon');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('NS-05','����',285,'Suwon');

INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('SW-01','ġ�Ϳ�',6,'S11');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('SW-02','ġ�Ϳ�',7,'S11');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('SW-03','ġ�Ϳ�',5,'S11');

INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('TI-01','������',7,'T7');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('TI-02','������',8,'T7');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('TI-03','������',12,'T8');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('TI-04','������',10,'T8');

INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('WH-01','�ͽ���',3,'W13');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('WH-02','�ͽ���',7,'W13');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('WH-03','�ͽ���',2,'W14');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('WH-04','�ͽ���',5,'W14');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('WH-05','�ͽ���',6,'W15');

INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('WP-01','���',35,'W19');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('WP-02','���',8,'W19');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('WP-03','���',15,'W19');
INSERT INTO dog_master(age,classify,com_count,com_place) VALUES ('WP-04','���',20,'W19');

commit;

select * from dog_master;