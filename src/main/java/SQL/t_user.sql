SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user2`;
CREATE TABLE `t_user2` (
  `id` bigint(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL COMMENT '用户名',
  `user_phone` varchar(20) default NULL COMMENT '手机号',
  `user_email` varchar(255) default NULL COMMENT '邮箱地址',
  `user_pwd` varchar(32) default NULL COMMENT '加盐后用户密码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user2` VALUES ('1', '赵大宝', '13285250574', '1045221654@qq.com', '111111');
INSERT INTO `t_user2` VALUES ('2', '张三丰', '15985250574', '1198224554@qq.com', '222222');
INSERT INTO `t_user2` VALUES ('3', '王尼玛', '13685250574', '1256221654@qq.com', '333333');
