# phpMyAdmin MySQL-Dump
# http://phpwizard.net/phpMyAdmin/
#
# Host: 127.0.0.1:3306 Database : simulandbeta

# --------------------------------------------------------
#
# Table structure for table 'buildinglocation'
#

DROP TABLE IF EXISTS buildinglocation;
CREATE TABLE buildinglocation (
   town tinyint(3) DEFAULT '0' NOT NULL,
   vert tinyint(2) DEFAULT '0' NOT NULL,
   horz tinyint(2) DEFAULT '0' NOT NULL,
   buid tinyint(5) DEFAULT '0' NOT NULL,
   usr varchar(20) NOT NULL,
   prod tinyint(3) DEFAULT '0' NOT NULL,
   hire tinyint(3) DEFAULT '0' NOT NULL,
   p1p tinyint(3) DEFAULT '0' NOT NULL,
   p2p tinyint(3) DEFAULT '0' NOT NULL,
   p3p tinyint(3) DEFAULT '0' NOT NULL,
   p4p tinyint(3) DEFAULT '0' NOT NULL,
   p5p tinyint(3) DEFAULT '0' NOT NULL
);

#
# Dumping data for table 'buildinglocation'
#

INSERT INTO buildinglocation VALUES ( '14', '8', '8', '1', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '11', '8', '8', '2', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '12', '8', '8', '1', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '13', '8', '8', '1', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '15', '8', '8', '1', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '16', '8', '8', '1', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '11', '8', '7', '3', 'puggy', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '11', '7', '8', '4', 'test', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '11', '6', '1', '4', 'test', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '11', '1', '1', '0', 'puggy', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '11', '1', '2', '0', 'test', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildinglocation VALUES ( '14', '1', '1', '0', 'test', '0', '0', '0', '0', '0', '0', '0');

# --------------------------------------------------------
#
# Table structure for table 'buildingtype'
#

DROP TABLE IF EXISTS buildingtype;
CREATE TABLE buildingtype (
   buid tinyint(6) DEFAULT '0' NOT NULL,
   type tinyint(4) DEFAULT '0' NOT NULL,
   name varchar(20) NOT NULL,
   image varchar(10) NOT NULL,
   bimage varchar(50) NOT NULL,
   upgradeid tinyint(5) DEFAULT '0' NOT NULL,
   level smallint(3) DEFAULT '1' NOT NULL,
   cost int(8) DEFAULT '30000' NOT NULL,
   m1 tinyint(7) DEFAULT '0' NOT NULL,
   m2 tinyint(7) DEFAULT '0' NOT NULL,
   m3 tinyint(7) DEFAULT '0' NOT NULL,
   m4 tinyint(7) DEFAULT '0' NOT NULL,
   m5 tinyint(7) DEFAULT '0' NOT NULL,
   m1m smallint(200) DEFAULT '0' NOT NULL,
   m2m smallint(200) DEFAULT '0' NOT NULL,
   m3m smallint(200) DEFAULT '0' NOT NULL,
   m4m smallint(200) DEFAULT '0' NOT NULL,
   m5m smallint(200) DEFAULT '0' NOT NULL,
   UNIQUE buid (buid)
);

#
# Dumping data for table 'buildingtype'
#

INSERT INTO buildingtype VALUES ( '2', '1', 'capitol', 'b2.gif', '', '0', '999', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildingtype VALUES ( '1', '1', 'town hall', 'b1.gif', '', '0', '999', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildingtype VALUES ( '3', '2', 'main hq 1', 'b3.gif', 'hq/main1.gif', '4', '1', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildingtype VALUES ( '0', '0', 'construction site', 'b0.gif', 'misc/const.gif', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildingtype VALUES ( '4', '2', 'main hq 2', 'b4.gif', '', '0', '1', '80000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO buildingtype VALUES ( '5', '4', 'Small LC hovel', 'b5.gif', 'res/lc/smallhovel.gif', '6', '1', '5000', '1', '0', '0', '0', '0', '500', '0', '0', '0', '0');
INSERT INTO buildingtype VALUES ( '6', '3', 'small store', 'b6.gif', 'com/smallstore.gif', '0', '1', '2000', '1', '2', '3', '4', '5', '200', '200', '200', '200', '200');

# --------------------------------------------------------
#
# Table structure for table 'products'
#

DROP TABLE IF EXISTS products;
CREATE TABLE products (
   pid tinyint(7) DEFAULT '0' NOT NULL,
   pname varchar(100) NOT NULL,
   cost tinyint(9) DEFAULT '0' NOT NULL,
   r1 tinyint(7) DEFAULT '0' NOT NULL,
   r1a smallint(200) DEFAULT '0' NOT NULL,
   r2 tinyint(7) DEFAULT '0' NOT NULL,
   r2a smallint(200) DEFAULT '0' NOT NULL,
   r3 tinyint(7) DEFAULT '0' NOT NULL,
   r3a smallint(200) DEFAULT '0' NOT NULL,
   r4 tinyint(7) DEFAULT '0' NOT NULL,
   r4a smallint(200) DEFAULT '0' NOT NULL,
   r5 tinyint(7) DEFAULT '0' NOT NULL,
   r5a smallint(200) DEFAULT '0' NOT NULL,
   ptype tinyint(2) DEFAULT '0' NOT NULL,
   UNIQUE pid (pid)
);

#
# Dumping data for table 'products'
#

INSERT INTO products VALUES ( '0', 'none', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO products VALUES ( '1', 'p1', '15', '2', '5', '3', '2', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO products VALUES ( '2', 'p2', '10', '1', '1', '3', '5', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO products VALUES ( '3', 'p3', '10', '4', '15', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO products VALUES ( '4', 'p4', '25', '1', '15', '2', '2', '3', '1', '0', '0', '0', '0', '2');
INSERT INTO products VALUES ( '5', 'p5', '2', '1', '10', '2', '1', '3', '2', '0', '0', '0', '0', '3');

# --------------------------------------------------------
#
# Table structure for table 'ptype'
#

DROP TABLE IF EXISTS ptype;
CREATE TABLE ptype (
   ptid tinyint(4) DEFAULT '0' NOT NULL,
   ptname varchar(20) NOT NULL,
   ptcat varchar(20) DEFAULT '0' NOT NULL,
   UNIQUE ptid (ptid)
);

#
# Dumping data for table 'ptype'
#

INSERT INTO ptype VALUES ( '1', 'Raw vegtables', 'Food');
INSERT INTO ptype VALUES ( '2', 'Raw Meat', 'Food');
INSERT INTO ptype VALUES ( '3', 'Raw Fruit', 'Food');
INSERT INTO ptype VALUES ( '4', 'Processed Vegtables', 'Food');
INSERT INTO ptype VALUES ( '5', 'Processed Meat', 'Food');
INSERT INTO ptype VALUES ( '6', 'Processed Fruit', 'Food');

# --------------------------------------------------------
#
# Table structure for table 'rank'
#

DROP TABLE IF EXISTS rank;
CREATE TABLE rank (
   usr varchar(20) NOT NULL,
   orank int(5) DEFAULT '0' NOT NULL,
   UNIQUE usr (usr)
);

#
# Dumping data for table 'rank'
#

INSERT INTO rank VALUES ( 'test', '1');
INSERT INTO rank VALUES ( 'puggy', '2');

# --------------------------------------------------------
#
# Table structure for table 'towns'
#

DROP TABLE IF EXISTS towns;
CREATE TABLE towns (
   tid tinyint(3) DEFAULT '0' NOT NULL,
   tname varchar(20) NOT NULL,
   owner varchar(20) DEFAULT 'none' NOT NULL,
   ttype tinyint(2) DEFAULT '1' NOT NULL,
   tall tinyint(4) DEFAULT '0' NOT NULL,
   money bigint(100) DEFAULT '100000000' NOT NULL,
   taxr tinyint(2) DEFAULT '25' NOT NULL,
   taxc tinyint(2) DEFAULT '25' NOT NULL,
   taxi tinyint(2) DEFAULT '25' NOT NULL,
   taxp tinyint(2) DEFAULT '10' NOT NULL,
   lc bigint(20) DEFAULT '100' NOT NULL,
   lce bigint(20) DEFAULT '100' NOT NULL,
   mc tinyint(20) DEFAULT '50' NOT NULL,
   mce tinyint(20) DEFAULT '50' NOT NULL,
   hc tinyint(20) DEFAULT '10' NOT NULL,
   hce tinyint(20) DEFAULT '10' NOT NULL,
   fa tinyint(20) DEFAULT '0' NOT NULL,
   fae tinyint(20) DEFAULT '0' NOT NULL,
   cost int(7) DEFAULT '25000' NOT NULL,
   UNIQUE tid (tid, tname)
);

#
# Dumping data for table 'towns'
#

INSERT INTO towns VALUES ( '14', 'pero', 'none', '1', '1', '100025000', '25', '25', '25', '10', '100', '100', '50', '50', '10', '10', '0', '0', '25000');
INSERT INTO towns VALUES ( '11', 'dorling', 'none', '2', '1', '100125000', '25', '25', '25', '10', '100', '100', '50', '50', '10', '10', '0', '0', '25000');
INSERT INTO towns VALUES ( '21', 'servis', 'none', '2', '2', '100000000', '25', '25', '25', '10', '100', '100', '50', '50', '10', '10', '0', '0', '25000');
INSERT INTO towns VALUES ( '31', 'moranda', 'none', '2', '3', '100000000', '25', '25', '25', '10', '100', '100', '50', '50', '10', '10', '0', '0', '25000');
INSERT INTO towns VALUES ( '12', 'parma', 'none', '1', '1', '100000000', '25', '25', '25', '10', '100', '100', '50', '50', '10', '10', '0', '0', '25000');
INSERT INTO towns VALUES ( '13', 'benson', 'none', '1', '1', '100000000', '25', '25', '25', '10', '100', '100', '50', '50', '10', '10', '0', '0', '25000');
INSERT INTO towns VALUES ( '15', 'hedges', 'none', '1', '1', '100000000', '25', '25', '25', '10', '100', '100', '50', '50', '10', '10', '0', '0', '25000');
INSERT INTO towns VALUES ( '16', 'belina', 'none', '1', '1', '100000000', '25', '25', '25', '10', '100', '100', '50', '50', '10', '10', '0', '0', '25000');

# --------------------------------------------------------
#
# Table structure for table 'usr'
#

DROP TABLE IF EXISTS usr;
CREATE TABLE usr (
   usr varchar(20) DEFAULT 'error' NOT NULL,
   password varchar(15) DEFAULT '0' NOT NULL,
   usrname varchar(30) DEFAULT 'nobody' NOT NULL,
   usremail varchar(40) DEFAULT 'error@simuland.co.uk' NOT NULL,
   usraddress varchar(100) DEFAULT 'error@simuland.co.uk' NOT NULL,
   usrcountry varchar(6) DEFAULT 'uk' NOT NULL,
   usrcompany varchar(20) DEFAULT 'error' NOT NULL,
   usrstatus tinyint(3) DEFAULT '0' NOT NULL,
   level int(5) DEFAULT '1' NOT NULL,
   money bigint(100) DEFAULT '1000000' NOT NULL,
   imgloc varchar(255) DEFAULT 'http://simuland.co.uk/default/images' NOT NULL,
   UNIQUE usr (usr),
   UNIQUE usrcompany (usrcompany)
);

#
# Dumping data for table 'usr'
#

INSERT INTO usr VALUES ( 'test', 'test', 'test account', 'test@simuland.co.uk', 'anywhere', 'here', 'test', '1', '1', '665000', 'test@simuland.co.uk');
INSERT INTO usr VALUES ( 'puggy', 'kickass', 'darren robertson', 'darren@simuland.co.uk', 'not avaiable :)', 'uk', 'pugland', '1', '2', '999999925000', 'http://simuland.co.uk/default/images');

# --------------------------------------------------------
#
# Table structure for table 'warehouse'
#

DROP TABLE IF EXISTS warehouse;
CREATE TABLE warehouse (
   usr varchar(25) DEFAULT 'no one' NOT NULL,
   level tinyint(10) DEFAULT '1' NOT NULL,
   pa1 bigint(255) DEFAULT '1000' NOT NULL,
   pq1 tinyint(3) DEFAULT '10' NOT NULL,
   pp1 int(10) DEFAULT '50000' NOT NULL,
   pa2 bigint(255) DEFAULT '1000' NOT NULL,
   pq2 tinyint(3) DEFAULT '10' NOT NULL,
   pp2 int(10) DEFAULT '127' NOT NULL,
   pa3 bigint(255) DEFAULT '1000' NOT NULL,
   pq3 tinyint(3) DEFAULT '10' NOT NULL,
   pp3 int(10) DEFAULT '127' NOT NULL,
   pa4 bigint(255) DEFAULT '1000' NOT NULL,
   pq4 tinyint(3) DEFAULT '10' NOT NULL,
   pp4 int(10) DEFAULT '127' NOT NULL,
   pa5 tinyint(255) DEFAULT '0' NOT NULL,
   pq5 tinyint(3) DEFAULT '10' NOT NULL,
   pp5 int(10) DEFAULT '127' NOT NULL,
   KEY usr (usr)
);

#
# Dumping data for table 'warehouse'
#

INSERT INTO warehouse VALUES ( 'test', '1', '1000', '10', '50000', '1000', '10', '127', '1000', '10', '127', '0', '0', '0', '0', '0', '0');
INSERT INTO warehouse VALUES ( 'puggy', '1', '10000', '50', '50000', '10000', '50', '127', '10000', '50', '127', '0', '0', '0', '0', '0', '0');


