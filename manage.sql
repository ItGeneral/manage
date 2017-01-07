--- add by songJiuHua 2017-01-02
--- 员工表 ---
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
   `orgId` bigint(20) NOT NULL COMMENT '部门id',
  `userNo` varchar(20) NOT NULL COMMENT '用户编号',
  `userName` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `realName` varchar(50) DEFAULT NULL COMMENT '姓名',
  `telephone` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `birthday` datetime DEFAULT NULL COMMENT '出生年月日',
  `city` varchar(50) DEFAULT NULL COMMENT '所在城市',
  `profession` varchar(100) DEFAULT NULL COMMENT '职业',
  `position` varchar(100) DEFAULT NULL COMMENT '职位',
  `eduSchool` varchar(100) DEFAULT NULL COMMENT '毕业院校',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--- 用户表 ---
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realName` varchar(50) DEFAULT NULL COMMENT '姓名',
  `telephone` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `birthday` datetime DEFAULT NULL COMMENT '出生年月日',
  `city` varchar(50) DEFAULT NULL COMMENT '所在城市',
  `profession` varchar(50) DEFAULT NULL COMMENT '职业',
  `eduSchool` varchar(100) DEFAULT NULL COMMENT '毕业院校',
  `bindEmail` varchar(10) DEFAULT '0' COMMENT '是否绑定邮箱，0：未绑定， 1：绑定',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime DEFAULT NULL,
  `activeStatus` varchar(10) DEFAULT '1' COMMENT '是否注销，0：已注销， 1：正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--- 部门表 ---
CREATE TABLE `organization`(
   `id` bigint(20) NOT NULL AUTO_INCREMENT,
   `orgName` VARCHAR(50) NOT NULL COMMENT '部门名称',
   `orgCode` VARCHAR(50) NOT NULL COMMENT '部门代码',
   `orgLongCode` VARCHAR(500) NOT NULL COMMENT '部门代码，包含上级部门的代码',
   `orgManager` VARCHAR(50) NOT NULL COMMENT '部门经理',
   `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
   `updateTime` datetime DEFAULT NULL,
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--- 权限表 ---
CREATE TABLE `privilege`(
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `orgId` bigint(20) NOT NULL COMMENT '部门id',
    `userNo` varchar(20) NOT NULL COMMENT '员工编号（工号）',
    `privilegeCnName` varchar(100) NOT NULL COMMENT '权限中文名称',
    `privilegeEnName` varchar(100) NOT NULL COMMENT '权限英文名称',
    `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
    `updateTime` datetime DEFAULT NULL,
     PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;