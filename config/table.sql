DROP DATABASE chat;
CREATE DATABASE IF NOT EXISTS chat;

USE chat;
-- User
DROP TABLE IF EXISTS
    `User`;
CREATE TABLE `User`(
    `id` INT NOT NULL AUTO_INCREMENT COMMENT '主键',
    `name` VARCHAR(50) NOT NULL COMMENT '姓名',
    `password` VARCHAR(50) NULL DEFAULT NULL COMMENT '密码',
    `state` ENUM('online', 'offline') DEFAULT 'offline' COMMENT '状态',
    PRIMARY KEY(`id`) USING BTREE
);

-- Friend
DROP TABLE IF EXISTS
    `Friend`;
CREATE TABLE `Friend`(
    `userid` INT NOT NULL AUTO_INCREMENT COMMENT '用户id',
    `friendid` VARCHAR(50) NOT NULL COMMENT '好友id',
    CONSTRAINT pk_userid_friendid PRIMARY KEY(`userid`, `friendid`) USING BTREE
);

-- OfflineMessage
DROP TABLE IF EXISTS
    `OfflineMessage`;
CREATE TABLE `OfflineMessage` (
	`userid` INT NOT NULL COMMENT '用户id',
	`message` VARCHAR (500) NOT NULL COMMENT '离线消息'
)
ENGINE=InnoDB;

-- AllGroup
DROP TABLE IF EXISTS
    `AllGroup`;
CREATE TABLE `AllGroup` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`groupname` VARCHAR (50) NOT NULL COMMENT '群名称',
	`groupdesc` VARCHAR (200) NULL DEFAULT '' COMMENT '群聊描述',
	CONSTRAINT pk_id PRIMARY KEY (`id`)
)
ENGINE=InnoDB;


DROP TABLE IF EXISTS
    `GroupUser`;
CREATE TABLE `GroupUser`(
    `groupid` INT NOT NULL AUTO_INCREMENT,
    `userid` INT NOT NULL,
    `grouprole` ENUM('creator', 'normal') NOT NULL DEFAULT 'normal',
    CONSTRAINT pk_groupid_userid PRIMARY KEY(`groupid`, `userid`)
) ENGINE = InnoDB;