CREATE TABLE accommodation_information(
	ac_id serial not null,
	ac_name VARCHAR(20) NOT NULL,
	ac_code INTEGER,
	address VARCHAR(50) NOT NULL,
	checkin_time TIME NOT NULL,
	checkout_time TIME NOT NULL, 
    primary key (ac_id)
);

create table public.member_information (
  mem_id serial not null
  , name character varying(20) not null
  , address character varying(100)
  , tel character varying(20) not null
  , email character varying(100)
  , birthday date
  , en_date date
  , se_date date
  , rogin_id character varying(7) default 'abc'NOT NULL
  , password character varying(12) default 'himitu' not null
  , primary key (mem_id)
);
create table public.reservation (
  mem_id serial not null
  , ac_id int not null
  , ac_name VARCHAR(20) NOT NULL
  , re_date date
  , ci_date date
  , co_date date
  , cancel character
  , remarks_column character varying(100)
  ,  primary key (mem_id)
);
create table public.canacel (
  mem_id serial not null
  , ac_id int not null
  , ca_date date
  , ci_date date
  , co_date date
  , assignment char
  , cancel character
  , remarks_column character varying(100)
  ,  primary key (mem_id)
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
	address VARCHAR(50) NOT NULL,
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

/*ここでサンプルのデータをテーブルに挿入*/
INSERT INTO member_information VALUES(1,'新宿 太郎','東京都新宿区','090-1111-1111','abc@abc.co.jp','1965-10-17','2018-10-15','2022-04-07');

/*member_information_loginにログインIDの初期設定値に“abc0123”、パスワードの初期設定値として“himitu”を設定を追加する*/
ALTER TABLE member_information_login ALTER login_id SET DEFAULT 'abc0123';
ALTER TABLE member_information_login ALTER password SET DEFAULT 'himitu';
ALTER TABLE member_information RENAME address TO mem_address;
ALTER TABLE reservation RENAME re_date TO ci_date;
ALTER TABLE reservation ADD co_date DATE;

/*それぞれのテーブルにサンプルデータに挿入*/
INSERT INTO member_information_login VALUES(DEFAULT,1,DEFAULT);
INSERT INTO accommodation_information VALUES(100001,'インペリアル・パレス',1,'東京都港区汐留01-01');
INSERT INTO reservation VALUES(1,100001,'インペリアル・パレス','2020-07-28','2020-07-30');
INSERT INTO accommodation_information_time VALUES(100001,'18:00','8:00');

DROP TABLE IF EXISTS reservation_sub; 
DROP TABLE IF EXISTS canacel;

/*外部キーの設定*/
ALTER TABLE reservation ADD FOREIGN KEY(ac_id) REFERENCES accommodation_information_time;
 
