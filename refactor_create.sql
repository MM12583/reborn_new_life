CREATE TABLE product (
  prod_id varchar(50) NOT NULL,
  memberid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  brand varchar(50) NOT NULL,
  price int NOT NULL,
  `desc` varchar(50) NOT NULL,
  picture_path nvarchar(255) NOT NULL,
  filename varchar(50) NOT NULL,
  mimetype varchar(50) NOT NULL,
  stock int NOT NULL,
  bgpicture_path nvarchar(255) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE fwlist (
  f_id varchar(50) NOT NULL,
  memberid varchar(50) NOT NULL,
  prod_id varchar(50) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE member (
  memberid varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  birthday date,
  name varchar(50) NOT NULL,
  nickname varchar(50),
  phonenumber varchar(50) NOT NULL,
  address varchar(50),
  email varchar(50) NOT NULL,
  rank_id varchar(50) NOT NULL,
  registertime timestamp NOT NULL,
  revisetime timestamp NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE header (
  head_image_id varchar(50) NOT NULL,
  memberimage_path nvarchar(255) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE `rank` (
  rank_id varchar(50) NOT NULL,
  rankname nvarchar(255) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE permission (
  grp_id varchar(50) NOT NULL,
  memberid nvarchar(255) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE permission_group (
  grp_id varchar(50) NOT NULL,
  grpname nvarchar(255) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE token (
  token_id nvarchar(255) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL,
  deadline timestamp NOT NULL
);

CREATE TABLE letter (
  let_id varchar(50) NOT NULL,
  member_id varchar(50) NOT NULL,
  title varchar(50) NOT NULL,
  content varchar(50) NOT NULL,
  date timestamp NOT NULL,
  revisetime timestamp NOT NULL,
  recipientid varchar(50) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE news (
  new_id varchar(50) NOT NULL,
  date timestamp NOT NULL,
  deadline timestamp NOT NULL,
  title varchar(50) NOT NULL,
  content nvarchar(255) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE switch (
  sw_id varchar(50) NOT NULL,
  member_id varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  gbcoverpic_path varchar(50) ,
  filename1 varchar(50) ,
  gcoverpic_path varchar(50) ,
  filename2 varchar(50) ,
  gbackcoverpic_path varchar(50) ,
  filename3 varchar(50) ,
  description varchar(50) NOT NULL,
  date timestamp NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE changehg (
  chg_id varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  description varchar(50) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);

CREATE TABLE language (
  l_id varchar(50) NOT NULL,
  picture_path nvarchar(255) NOT NULL,
  filename varchar(50) NOT NULL,
  createby varchar(50) NOT NULL,
  createdt timestamp NOT NULL
);