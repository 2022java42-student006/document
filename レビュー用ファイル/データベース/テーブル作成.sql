create table public.member_information (
  mem_id serial 
  , name character varying(20) not null
  , mem_address character varying(100)
  , tel character varying(20) not null
  , email character varying(100) not null
  , birthday date
  ,login_id int NOT NULL
  ,password varchar(12) NOT NULL
  , en_date date
  , se_date date
  , primary key (mem_id)
);
create table public.member_information_login(
  login_id varchar(7) 
  , mem_id integer not null
  , password varchar(12) 
  , primary key (login_id)
  );
  
create table public.accommodation_information(
  ac_id serial not null,
	ac_name VARCHAR(20) NOT NULL,
	ac_code INTEGER,
	ac_address VARCHAR(50) NOT NULL,
    ac_tel VARCHAR(20) NOT NULL,
    ac_room INTEGER NOT NULL,
    primary key(ac_id)
    );

create table public.accommodation_information_time(
  ac_reserved_id SERIAL ,
  ac_id INTEGER not null,
  checkin_time time not null,
  checkout_time time not null,
  primary key(ac_reserved_id)
  );
  
create table public.reservation (
  reserved_id SERIAL
  , mem_id INTEGER NOT NULL
  , plan_id int not null
  , ci_date date NOT NULL
  , co_date date NOT NULL
  ,primary key (reserved_id)
);

CREATE TABLE public.plan_information(
  plan_id serial
  ,ac_id INTEGER NOT NULL
  ,plan_sub VARCHAR(50) 
  ,price INTEGER NOT NULL
  ,room_num INTEGER NOT NULL
  ,PRIMARY KEY (plan_id)
  );
  
CREATE TABLE public.plan_information_sub(
  date_id serial
  , plan_id INTEGER NOT NULL
  ,ac_checkindate DATE NOT NULL
  ,ac_checkoutdate DATE NOT NULL
  ,PRIMARY KEY (date_id) 
  );
  
  DROP TABLE public.member_information CASCADE;
  
/*�����ŃT���v���̃f�[�^���e�[�u���ɑ}��*/
INSERT INTO member_information VALUES(1,'�V�h ���Y','�����s�V�h��','090-1111-1111','abc@abc.co.jp','1965-10-17','2018-10-15','2022-04-07');
INSERT INTO member_information_login VALUES('abc0123',1,'himitu');
INSERT INTO accommodation_information VALUES(10001,'�C���y���A���E�p���X',1,'�����s�`�掬��01-01','01-0123-4567',30);
INSERT INTO reservation VALUES(101,1,123,'2020-07-28','2020-07-30');
INSERT INTO accommodation_information_time VALUES(100001,10001,'18:00','9:00');
INSERT INTO plan_information VALUES(123,10001,'2��3���E�V���O���E�[�H�t��',35000,15);
INSERT INTO plan_information_sub VALUES(10,123,'2020-07-01','2020-08-18');

ALTER TABLE member_information_login ADD FOREIGN KEY(mem_id)REFERENCES member_information ;
ALTER TABLE accommodation_information_time ADD FOREIGN KEY(ac_id)REFERENCES accommodation_information ;
ALTER TABLE reservation ADD FOREIGN KEY(mem_id)REFERENCES member_information;
ALTER TABLE reservation ADD FOREIGN KEY(plan_id)REFERENCES plan_information;
ALTER TABLE plan_information ADD FOREIGN KEY(ac_id)REFERENCES accommodation_information;
ALTER TABLE plan_information_sub ADD FOREIGN KEY(plan_id)REFERENCES plan_information;

INSERT INTO member_information VALUES(2,'�a�J �n��','�����s�V�h��','087-1234-5678','def@def.co.jp','1983-11-19','2019-07-01','2021-04-28');
INSERT INTO member_information_login VALUES('def5673',2,'himitu');
INSERT INTO accommodation_information VALUES(23456,'�\�Q���z�e��',2,'�����s�L����02-02','02-4567-8974',24);
INSERT INTO reservation VALUES(201,2,456,'2019-07-28','2020-07-31');
INSERT INTO accommodation_information_time VALUES(200002,23456,'19:00','8:30');
INSERT INTO plan_information VALUES(456,20002,'3��4���E�_�u���E�[�H�Ȃ�',55000,10);
INSERT INTO plan_information_sub VALUES(20,456,'2020-07-01','2020-08-18');

INSERT INTO member_information VALUES(3,'�R�c �Ԏq','�����s������','070-3333-3333','ghi@ghi.co.jp','1989-4-15','2015-6-20','2022-11-4');
INSERT INTO member_information_login VALUES('ghi0456',3,'himitu');
INSERT INTO accommodation_information VALUES(34567,'�r�ܗ���',3,'�����s������|�m��03-03','03-4567-8901',25);
INSERT INTO reservation VALUES(301,3,789,'2017-10-11','2017-10-16');
INSERT INTO accommodation_information_time VALUES(300003,34567,'20:00','10:00');
INSERT INTO plan_information VALUES(789,30003,'4��5���E�_�u���E�[�H�t��',30000,20)
INSERT INTO plan_information_sub VALUES(30,789,'2017-10-01','2017-10-30');

INSERT INTO member_information VALUES(4,'���h ���Y','�����s�`��','060-5444-4644','jkl@jkl.co.jp','2001-02-23','2022-05-04','2022-12-30');
INSERT INTO member_information_login VALUES('jkl0789',4,'himitu');
INSERT INTO accommodation_information VALUES(45678,'�����V�e�B�z�e��',4,'�����s�n�c����04-04','01-2345-6789',24);
INSERT INTO reservation VALUES(401,4,321,'2022-11-10','2022-11-16');
INSERT INTO accommodation_information_time VALUES(400004,45678,'21:30','11:00');
INSERT INTO plan_information VALUES(321,40001,'5��6���E�V���O���E�[�H�Ȃ�',3000,5);
INSERT INTO plan_information_sub VALUES(40,321,'2022-11-01','2020-11-31');

INSERT INTO member_information VALUES(5,'��� �O�Y','�����s���c�J��','050-7459-3214','mno@mno.co.jp','1998-08-19','2010-10-15','2020-10-10');
INSERT INTO member_information_login VALUES('mno0987',5,'himitu');
INSERT INTO accommodation_information VALUES(56789,'����ꖯ�h',5,'�����s�䓌�����05-05','01-8910-2345',109);
INSERT INTO reservation VALUES(501,5,654,'2020-12-01','2020-12-07');
INSERT INTO accommodation_information_time VALUES(500005,56789,'22:00','11:30');
INSERT INTO plan_information VALUES(654,50005,'5��6���E�_�u���E���H�t��',150000,1);
INSERT INTO plan_information_sub VALUES(50,654,'2020-12-01','2020-12-31');

INSERT INTO member_information VALUES(6,'���闢 ��Y','�����s�V�h��','040-6666-6666','qrs@qrs.co.jp','1923-07-24','2015-03-24','2015-10-31');
INSERT INTO member_information_login VALUES('abc1234',6,'himitu');
INSERT INTO accommodation_information VALUES(67891,'�_�{�y���V����',6,'�����s�V�h��_�{�O��06-06','01-3425-8796',79);
INSERT INTO reservation VALUES(601,6,987,'2015-10-12','2015-10-13');
INSERT INTO accommodation_information_time VALUES(600001,67891,'23:00','12:00');
INSERT INTO plan_information VALUES(987,60006,'1��2���E�V���O���E�[�H�Ȃ�',500,50);
INSERT INTO plan_information_sub VALUES(60,987,'2015-10-01','2015-10-15');

INSERT INTO member_information VALUES(7,'�i�� ���Y','�����s���n��','030-7777-7777','tuv@tuv.co.jp','1979-12-24','2011-07-27','2021-09-19');
INSERT INTO member_information_login VALUES('tuv1099',7,'himitu');
INSERT INTO accommodation_information VALUES(78912,'�ԉH�z�e��',7,'�����s�]�ː�掭����07-07','01-5555-5555',55);
INSERT INTO reservation VALUES(701,7,135,'2020-05-05','2020-05-30');
INSERT INTO accommodation_information_time VALUES(700001,78912,'23:30','12:30');
INSERT INTO plan_information VALUES(135,70007,'24��25���E�f���܂�E�[�H�Ȃ�',100000,45);
INSERT INTO plan_information_sub VALUES(70,135,'2020-04-31','2020-05-31');

INSERT INTO member_information VALUES(8,'��� ���Y','�����s�����','020-8888-8888','wxy@wxy.co.jp','1553-08-15','2014-03-09','2022-02-22');
INSERT INTO member_information_login VALUES('wxy8786',8,'himitu');
INSERT INTO accommodation_information VALUES(80008,'�c�[�z�e��',8,'�����s�i��捂��08-08','01-8778-8888',66);
INSERT INTO reservation VALUES(801,8,246,'2018-08-13','2018-08-15');
INSERT INTO accommodation_information_time VALUES(800001,89123,'24:00','13:00');
INSERT INTO plan_information VALUES(246,89123,'2��3���E�_�u���E�[�H�t��',50000,60);
INSERT INTO plan_information_sub VALUES(80,246,'2018-08-01','2018-08-20');

