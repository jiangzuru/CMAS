CREATE TABLE `cmas`.`think_users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `account` VARCHAR(45) NOT NULL DEFAULT 0 COMMENT '用户名',
  `password` VARCHAR(45) NOT NULL DEFAULT 0 COMMENT '密码',
  `ctime` DATETIME NOT NULL DEFAULT 0 COMMENT '创建时间',
  `utime` DATETIME NOT NULL DEFAULT 0 COMMENT '更新时间 ',
  PRIMARY KEY (`id`));

INSERT INTO `cmas`.`think_users` (`account`, `password`, `ctime`, `utime`) VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', '', '');
