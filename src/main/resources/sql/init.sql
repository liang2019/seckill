--数据库初始化
--创建数据库
CREATE DATABASE seckill

--创建数据表
CREATE TABLE seckill(
 `seckill_id` bigint NOT NULL AUTO_INCREMENT comment '商品库存id',
 `name` VARCHAR (120) NOT NULL comment '商品名称',
 `number` int NOT NULL comment '库存数量',
 `start_time` TIMESTAMP NOT NULL comment '秒杀开始时间',
 `end_time` TIMESTAMP NOT NULL comment '秒杀结束时间',
 `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP comment '创建时间',
 PRIMARY KEY (seckill_id),
 KEY idx_start_time(start_time),
 KEY idx_end_time(end_time),
 KEY idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表'

--初始化数据
INSERT INTO
  seckill(name,number,start_time,end_time)
VALUES
  ('1000元秒杀iphone8',100,'2018-06-20 00:00:00','2018-06-21 00:00:00'),
  ('500元秒杀iphone6',200,'2018-06-20 00:00:00','2018-06-21 00:00:00'),
  ('100元秒杀iphoneX',300,'2018-06-20 00:00:00','2018-06-21 00:00:00'),
  ('3000元秒杀华为',400,'2018-06-20 00:00:00','2018-06-21 00:00:00'),
  ('2000元秒杀小米',10,'2018-06-20 00:00:00','2018-06-21 00:00:00');

--秒杀成功明细表
--用户登录认证相关信息
CREATE TABLE success_killed(
`seckill_id` bigint NOT NULL comment '秒杀的商品id',
`user_phone` bigint NOT NULL comment '用户的手机号',
`state` tinyint NOT NULL DEFAULT -1 comment '状态的标识:-1无效 0:成功 1:已支付',
`create_time` TIMESTAMP NOT NULL comment '创建时间',
PRIMARY KEY (seckill_id,user_phone),/*联合主键*/
KEY idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表'



