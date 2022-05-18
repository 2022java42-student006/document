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
  , re_date date
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


