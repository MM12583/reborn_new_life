DROP TABLE IF EXISTS `product`;
CREATE TABLE product (
  prod_id varchar(20) NOT NULL COMMENT '商品代號',
  memberid varchar(20) NOT NULL COMMENT '擁有者',
  name varchar(200) NOT NULL COMMENT '商品名稱',
  brand varchar(20) NOT NULL COMMENT '商品品牌',
  price decimal(8,2) NOT NULL COMMENT '商品價格',
  `desc` nvarchar(200) NOT NULL COMMENT '商品描述',
  picture_path nvarchar(255) NOT NULL COMMENT '商品圖片路徑',
  filename varchar(20) NOT NULL COMMENT '商品圖片檔名',
  mimetype varchar(20) NOT NULL COMMENT '媒體類型',
  stock int NOT NULL COMMENT '庫存量',
  bgpicture_path nvarchar(255) NOT NULL COMMENT '商品背景圖路徑',
  createby varchar(20) NOT NULL NULL,
  createdt timestamp NOT NULL NULL
);

DROP TABLE IF EXISTS `fwlist`;
CREATE TABLE fwlist (
  f_id varchar(20) NOT NULL COMMENT '追蹤代號',
  memberid varchar(20) NOT NULL COMMENT '帳戶代號',
  prod_id varchar(20) NOT NULL COMMENT '商品代號',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `member`;
CREATE TABLE member (
  memberid varchar(20) NOT NULL COMMENT '帳號',
  password varchar(200) NOT NULL COMMENT '密碼',
  birthday date COMMENT '生日',
  name varchar(50) NOT NULL COMMENT '姓名',
  nickname varchar(50) COMMENT '暱稱',
  phonenumber varchar(16) NOT NULL COMMENT '電話',
  address varchar(50) COMMENT '地址',
  email varchar(50) NOT NULL COMMENT '電郵',
  rank_id varchar(10) NOT NULL COMMENT '會員等級',
  grp_id varchar(10) COMMENT '權限群組',
  registertime timestamp NOT NULL COMMENT '註冊日期',
  revisetime timestamp NOT NULL COMMENT '上次修改日期',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `header`;
CREATE TABLE header (
  head_image_id varchar(50) NOT NULL COMMENT '頭貼圖片名稱',
  memberimage_path nvarchar(255) NOT NULL COMMENT '頭貼路徑',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  rank_id varchar(10) NOT NULL COMMENT '等級',
  rankname nvarchar(255) NOT NULL COMMENT '會員等級名稱',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `permission`;
CREATE TABLE permission (
  grp_id varchar(10) NOT NULL COMMENT '權限',
  permission nvarchar(20) NOT NULL COMMENT '權限名稱',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `permission_group`;
CREATE TABLE permission_group (
  grp_id varchar(10) NOT NULL COMMENT '權限群組',
  grpname nvarchar(20) NOT NULL COMMENT '群組名稱',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `token`;
CREATE TABLE token (
  token_id nvarchar(255) NOT NULL COMMENT 'TOKEN',
  owner varchar(20) NOT NULL COMMENT '持有者',
  createdt timestamp NOT NULL,
  deadline timestamp NOT NULL COMMENT '有效日期'
);

DROP TABLE IF EXISTS `letter`;
CREATE TABLE letter (
  let_id varchar(20) NOT NULL COMMENT '信件代號',
  member_id varchar(20) NOT NULL COMMENT '帳戶代號',
  title varchar(50) NOT NULL COMMENT '信件標題',
  content nvarchar(255) NOT NULL COMMENT '信件內容',
  date timestamp NOT NULL COMMENT '信件發布日期',
  revisetime timestamp NOT NULL COMMENT '信件上次修改日期',
  recipientid varchar(20) NOT NULL COMMENT '收件者帳號',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `news`;
CREATE TABLE news (
  new_id varchar(50) NOT NULL COMMENT '公告編號',
  date timestamp NOT NULL COMMENT '公告發布日期',
  deadline timestamp NOT NULL COMMENT '公告有效日',
  title varchar(50) NOT NULL COMMENT '公告標題',
  content nvarchar(255) NOT NULL COMMENT '公告內容',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `switch`;
CREATE TABLE switch (
  sw_id varchar(20) NOT NULL COMMENT '交換代號',
  member_id varchar(20) NOT NULL COMMENT '帳戶代號',
  name varchar(50) NOT NULL COMMENT '自有遊戲名稱',
  gbcoverpic_path nvarchar(255) COMMENT '交換遊戲盒封面照片路徑',
  filename1 varchar(50) COMMENT '交換遊戲圖片檔名1',
  gcoverpic_path nvarchar(255) COMMENT '交換遊戲片正面照片路徑',
  filename2 varchar(50) COMMENT '交換遊戲圖片檔名2',
  gbackcoverpic_path nvarchar(255) COMMENT '交換遊戲片背面照片路徑',
  filename3 varchar(50) COMMENT '交換遊戲圖片檔名3',
  description nvarchar(255) NOT NULL COMMENT '交換遊戲片描述',
  date timestamp NOT NULL COMMENT '發布日期',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `changehg`;
CREATE TABLE changehg (
  chg_id varchar(20) NOT NULL COMMENT '交換心願遊戲代號',
  name varchar(50) NOT NULL  COMMENT '心願遊戲名',
  description nvarchar(255) NOT NULL  COMMENT '心願遊戲備註',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `language`;
CREATE TABLE language (
  l_id varchar(20) NOT NULL COMMENT '語系流水號',
  picture_path nvarchar(255) NOT NULL COMMENT '語系分類圖片路徑',
  filename varchar(50) NOT NULL COMMENT '語系分類圖片名稱',
  createby varchar(20) NOT NULL,
  createdt timestamp NOT NULL
);

DROP TABLE IF EXISTS `SPRING_SESSION`;
CREATE TABLE `SPRING_SESSION` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint NOT NULL,
  `LAST_ACCESS_TIME` bigint NOT NULL,
  `MAX_INACTIVE_INTERVAL` int NOT NULL,
  `EXPIRY_TIME` bigint NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

LOCK TABLES `SPRING_SESSION` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `SPRING_SESSION_ATTRIBUTES`;
CREATE TABLE `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `SPRING_SESSION` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

LOCK TABLES `SPRING_SESSION_ATTRIBUTES` WRITE;
UNLOCK TABLES;