create table public.member_information (
  mem_id serial not null
  , name character varying(20) not null
  , address character varying(100)
  , tel character varying(20) not null
  , email character varying(100) not null
  , birthday date
  , en_date date
  , se_date date
  , rogin_id character varying(7) default 'abc'NOT NULL
  , password character varying(12) default 'himitu' not null
  , primary key (mem_id)
);

DROP TABLE reservation CASCADE;
create table public.member_information (
  mem_id serial not null
  , name varchar(20) not null
  , address varchar(100)
  , tel varchar(20) not null
  , email varchar(100)
  , birthday date
  , en_date date
  , se_date date
  , primary key (mem_id)
);

create table public.member_information_login(
  login_id varchar(7) not null
  , mem_id integer not null
  , password varchar not null
  , primary key (login_id)
  , foreign key (mem_id)
  references member_information(mem_id)
  );
  
create table public.accommodation_information(
  ac_id serial not null,
	ac_name VARCHAR(20) NOT NULL,
	ac_code INTEGER,
	ac_address VARCHAR(50) NOT NULL,
    ac_tel VARCHAR(20) NOT NULL,
    ac_room INTEGER NOT NULL,
    plan_id INTEGER NOT NULL,
    primary key(ac_id)
    );

create table public.accommodation_information_time(
  ac_id serial not null,
  checkin_time time not null,
  checkout_time time not null,
  primary key(ac_id)
  );
  
create table public.reservation (
  mem_id serial not null
  , ac_id int not null
  , ac_name VARCHAR(20) NOT NULL
  , ci_date date NOT NULL
  , co_date date NOT NULL
  ,primary key (mem_id)
);

create table public.reservation_sub(
  mem_id serial not null
  ,ac_id int not null
  ,ci_date date
  , co_date date
  , cancel character
  , remarks_column character varying(100)
  ,  primary key (mem_id)
);

CREATE TABLE public.plan_information(
  plan_id serial NOT  NULL
  ,ac_id INTEGER NOT NULL
  ,ac_name VARCHAR(20) NOT NULL
  ,plan_sub VARCHAR(50) 
  ,price INTEGER NOT NULL
  ,room_num INTEGER NOT NULL
  ,PRIMARY KEY (plan_id)
  ,FOREIGN KEY (ac_id)REFERENCES accommodation_information
  );
  
CREATE TABLE public.plan_information_sub(
  date_id serial NOT NULL
  , plan_id INTEGER NOT NULL
  ,ac_checkindate DATE NOT NULL
  ,ac_checkoutdate DATE NOT NULL
  ,PRIMARY KEY (date_id) 
  );
  
/*ここでサンプルのデータをテーブルに挿入*/
INSERT INTO member_information VALUES(1,'新宿 太郎','東京都新宿区','090-1111-1111','abc@abc.co.jp','1965-10-17','2018-10-15','2022-04-07');
INSERT INTO member_information_login VALUES(DEFAULT,1,DEFAULT);
INSERT INTO accommodation_information VALUES(1,'インペリアル・パレス',1,'東京都港区汐留01-01','01-0123-4567',30,123);
INSERT INTO reservation VALUES(1,1,1,'2020-07-28','2020-07-30');
INSERT INTO accommodation_information_time VALUES(1,'18:00','8:00');
INSERT INTO plan_information VALUES(1,1,'2泊3日・シングル・夕食付',35000,15);
INSERT INTO plan_information_sub VALUES(1,1,'2020-07-01','2020-08-18');

ALTER TABLE plan_information_sub ALTER ac_checkindate DROP NOT NULL;
ALTER TABLE plan_information_sub ALTER ac_checkoutdate DROP NOT NULL;

  /*管理者ログイン情報テーブル*/
CREATE TABLE public.kanri_information(
  login_id INTEGER NOT  NULL
  ,password VARCHAR(12) NOT NULL
  ,kanri_name varchar
  ,PRIMARY KEY (login_id)
  ); 

INSERT INTO kanri_information VALUES(1234567, 'himitu', '管理');



/*宿情報の表作成の際、128行目まで実行して下さい。*/
create table public.accommodation_information (
  ac_id serial not null
  , ac_name character varying(20) not null
  , ac_address character varying(50) not null
  , ac_tel character varying(20) not null
  , ac_room integer not null
  , checkin_time integer not null
  , checkout_time integer not null
  , primary key (ac_id)
);
create sequence accommodation_information_ac_id_seq;
