ALTER TABLE member OWNER TO webinnuser;
INSERT INTO member_information VALUES(1,'�V�h���Y','�����s�V�h��','090-1111-1111','abc@abc.com','1965-10-17','2022-03-30','abc');
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

