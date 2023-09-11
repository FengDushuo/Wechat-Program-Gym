SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
CREATE TABLE IF NOT EXISTS `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(32) DEFAULT NULL COMMENT '用户名',
  `userAvatar` varchar(128) DEFAULT NULL COMMENT '用户头像',
  `createTime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `content` varchar(512) DEFAULT NULL COMMENT '聊天内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` int(8) DEFAULT NULL COMMENT '0(留言)、1(回复)',
  `createTime` bigint(20) DEFAULT NULL COMMENT '创建信息时间',
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '信息内容',
  `userId` int(11) DEFAULT NULL COMMENT '回复人id',
  `userIsAdmin` int(8) DEFAULT NULL COMMENT '回复人是否是管理员',
  `userName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复人用户名',
  `userAvatar` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复人头像',
  `targetUserId` int(11) DEFAULT NULL COMMENT '被回复人id',
  `targetUserIsAdmin` int(8) DEFAULT NULL COMMENT '被回复人是否是管理员',
  `targetUserName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '被回复人用户名',
  `targetUserAvatar` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '被回复人头像',
  `pid` int(11) DEFAULT '-1' COMMENT '父id',
  `likeNum` int(11) DEFAULT '0' COMMENT '赞的数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `createTime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `score` int(8) DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码',
  `registrationAddress` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '注册地址信息',
  `registrationTime` bigint(20) DEFAULT NULL COMMENT '注册时间',
  `lastLoginAddress` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '最后登录地址信息',
  `lastLoginTime` bigint(20) DEFAULT NULL COMMENT '最后登录时间',
  `isAdmin` int(8) unsigned DEFAULT '0' COMMENT '是否是管理员',
  `avatar` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'https://fengdushuo.top/admin/public/images/default.png' COMMENT '用户头像',
  `birth` bigint(20) DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '电话',
  `location` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '所在地',
  `gender` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) COMMENT '唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE IF NOT EXISTS `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '作品标题',
  `description` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '作品描述',
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '预览地址',
  `githubUrl` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'github地址',
  `createTime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `author` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
SET FOREIGN_KEY_CHECKS = 1;