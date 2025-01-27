use jspsubway; #DB Name


/* #역 정보
CREATE TABLE station (
    station_name VARCHAR(100) ,
    station_num INT,
    exit_count INT ,
    watercloset_inout BOOLEAN DEFAULT TRUE, #true = inside
    open_doorside BOOLEAN DEFAULT TRUE, #true = left
    cross_platform INT , #자력 출입가능 2, 환승역통해 가능 1, 불가능 0
    first_subway_time DATETIME ,
    last_subway_time DATETIME 
);*/

#SELECT * FROM station
#WHERE exit_count = 1 AND WHERE cross_paltform =1;
CREATE TABLE `station` (
  `station_name` text,
  `station_code` int DEFAULT NULL,
  `exit_count` int DEFAULT NULL,
  `watercloset_inout` tinyint DEFAULT NULL, #true = inside
  `open_doorside` tinyint DEFAULT NULL, #true = left
  `cross_platform` int DEFAULT NULL, #자력 출입가능 2, 환승역통해 가능 1, 불가능 0
  `first_subway_time` text,
  `last_subway_time` text
) DEFAULT CHARSET=utf8mb4;

#WHERE exit_count = 1 AND WHERE cross_paltform =1;subwayline2
SELECT  * FROM station;
UPDATE station SET `station_code` = 2030 WHERE `station_name` = `을지로3가`;

ALTER TABLE `jspsubway`.`station` 
CHANGE COLUMN `watercloset_inout` `watercloset_inout` TINYINT NULL DEFAULT NULL ,
CHANGE COLUMN `open_doorside` `open_doorside` TINYINT NULL DEFAULT NULL ;

UPDATE station 
SET station_code = 2030
WHERE station_name = '을지로3가';

SET SQL_SAFE_UPDATES = 1;






