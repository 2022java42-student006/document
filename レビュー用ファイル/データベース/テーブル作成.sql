create table public.member_information (
  mem_id serial 
  , name character varying(20) not null
  , mem_address character varying(100)
  , tel character varying(20) not null
  , email character varying(100) not null
  , birthday date
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
  
/*ここでサンプルのデータをテーブルに挿入*/
INSERT INTO member_information VALUES(1,'新宿 太郎','東京都新宿区','090-1111-1111','abc@abc.co.jp','1965-10-17','2018-10-15','2022-04-07');
INSERT INTO member_information_login VALUES('abc0123',1,'himitu');
INSERT INTO accommodation_information VALUES(10001,'インペリアル・パレス',1,'東京都港区汐留01-01','01-0123-4567',30);
INSERT INTO reservation VALUES(101,1,123,'2020-07-28','2020-07-30');
INSERT INTO accommodation_information_time VALUES(100001,10001,'18:00','08:00');
INSERT INTO plan_information VALUES(123,10001,'2泊3日・シングル・夕食付',35000,15);
INSERT INTO plan_information_sub VALUES(10,123,'2020-07-01','2020-08-18');


ALTER TABLE member_information_login ADD FOREIGN KEY(mem_id)REFERENCES member_information ;
ALTER TABLE accommodation_information_time ADD FOREIGN KEY(ac_id)REFERENCES accommodation_information ;
ALTER TABLE reservation ADD FOREIGN KEY(mem_id)REFERENCES member_information;
ALTER TABLE reservation ADD FOREIGN KEY(plan_id)REFERENCES plan_information;
ALTER TABLE plan_information ADD FOREIGN KEY(ac_id)REFERENCES accommodation_information;
ALTER TABLE plan_information_sub ADD FOREIGN KEY(plan_id)REFERENCES plan_information;


