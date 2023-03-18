/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50548
 Source Host           : localhost:3306
 Source Schema         : person_system

 Target Server Type    : MySQL
 Target Server Version : 50548
 File Encoding         : 65001

 Date: 04/06/2020 22:28:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_contract
-- ----------------------------
DROP TABLE IF EXISTS `b_contract`;
CREATE TABLE `b_contract`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同名称',
  `part_a` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同甲方',
  `part_b` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同乙方',
  `sign_date` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同签订日期',
  `person_a` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '甲方负责人',
  `person_b` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乙方负责人',
  `amount` float NULL DEFAULT NULL COMMENT '合同金额',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_contract
-- ----------------------------
INSERT INTO `b_contract` VALUES (2, '测设通', '甲方', '乙方', '2020-05-14', NULL, NULL, 111111, NULL, NULL);
INSERT INTO `b_contract` VALUES (3, '测试合同', '华为科技', '京东科技', '2020-05-20', NULL, NULL, 222222, NULL, NULL);

-- ----------------------------
-- Table structure for b_convert_apply
-- ----------------------------
DROP TABLE IF EXISTS `b_convert_apply`;
CREATE TABLE `b_convert_apply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `apply_user_id` bigint(20) NULL DEFAULT NULL COMMENT '申请人',
  `apply_date` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请日期',
  `apply_content` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请内容',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  `approval_date` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批日期',
  `approval_user_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批人',
  `approval_result` int(11) NULL DEFAULT NULL COMMENT '审批结果',
  `approval_opinion` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批意见',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转正申请' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_convert_apply
-- ----------------------------
INSERT INTO `b_convert_apply` VALUES (5, 2, '2020-05-17', '经过3个月的工作，我已经完全胜任现在的工作岗位，现申请转正，望批准。', 2, '2020-05-17', '1', 2, '通过', '2020-05-17 08:56:50', '2020-05-17 09:13:46');
INSERT INTO `b_convert_apply` VALUES (6, 4, '2020-05-17', '申请转正', 0, NULL, NULL, NULL, NULL, '2020-05-17 09:10:40', NULL);

-- ----------------------------
-- Table structure for b_interview_plan
-- ----------------------------
DROP TABLE IF EXISTS `b_interview_plan`;
CREATE TABLE `b_interview_plan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `candidate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '候选人姓名',
  `candidate_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '候选人电话',
  `meet_time` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面试时间',
  `meet_user_id` bigint(20) NULL DEFAULT NULL COMMENT '面试官',
  `status` int(11) NULL DEFAULT 0 COMMENT '面试结果',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '面试计划' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_interview_plan
-- ----------------------------
INSERT INTO `b_interview_plan` VALUES (6, '刘琦琦', '18723409981', '2020-05-20 08:58:55', 3, 2, '2020-05-17 08:59:28', NULL);

-- ----------------------------
-- Table structure for b_merit_set
-- ----------------------------
DROP TABLE IF EXISTS `b_merit_set`;
CREATE TABLE `b_merit_set`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `set_date` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `month_quota` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月考核指标',
  `week_quota` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '周考核指标',
  `create_time` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绩效设置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_merit_set
-- ----------------------------

-- ----------------------------
-- Table structure for b_recruit_need
-- ----------------------------
DROP TABLE IF EXISTS `b_recruit_need`;
CREATE TABLE `b_recruit_need`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dept` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求部门',
  `need_num` int(11) NULL DEFAULT NULL COMMENT '需求人数',
  `post` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位类型',
  `education` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历要求',
  `work_time` int(11) NULL DEFAULT NULL COMMENT '工作年限要求',
  `demand` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘要求',
  `status` int(11) NULL DEFAULT NULL COMMENT '需求状态',
  `recruit_user_id` bigint(20) NULL DEFAULT NULL COMMENT '招聘负责人',
  `need_user_id` bigint(20) NULL DEFAULT NULL COMMENT '需求负责人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘需求' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_recruit_need
-- ----------------------------
INSERT INTO `b_recruit_need` VALUES (5, NULL, 2, '经理助理', '本科', 2, '有相关助理经验', 0, 4, 3, '2020-05-17 08:58:47', NULL);

-- ----------------------------
-- Table structure for b_salary_record
-- ----------------------------
DROP TABLE IF EXISTS `b_salary_record`;
CREATE TABLE `b_salary_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `salary_month` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工资月份',
  `must_salary` float NULL DEFAULT 0 COMMENT '应发工资',
  `reality_salary` float NULL DEFAULT 0 COMMENT '实发工资',
  `fund_amount` float NULL DEFAULT 0 COMMENT '公积金扣款',
  `tax_amount` float NULL DEFAULT 0 COMMENT '个税扣款',
  `medical_amount` float NULL DEFAULT 0 COMMENT '医保扣款',
  `pension_amount` float NULL DEFAULT 0 COMMENT '养老扣款',
  `injured_amount` float NULL DEFAULT 0 COMMENT '工伤扣款',
  `birth_amount` float NULL DEFAULT 0 COMMENT '生育扣款',
  `unemployment_amount` float NULL DEFAULT 0 COMMENT '失业扣款',
  `leave_amount` float NULL DEFAULT 0 COMMENT '请假扣款',
  `late_amount` float NULL DEFAULT 0 COMMENT '迟到扣款',
  `base_amount` float NULL DEFAULT 0 COMMENT '基本工资',
  `work_amount` float NULL DEFAULT 0 COMMENT '工龄工资',
  `overtime_amount` float NULL DEFAULT 0 COMMENT '加班费',
  `merits_amount` float NULL DEFAULT 0 COMMENT '绩效奖金',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工资记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_salary_record
-- ----------------------------
INSERT INTO `b_salary_record` VALUES (18, 2, '2020-05', 6500, 5453, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-17 09:11:32', NULL);
INSERT INTO `b_salary_record` VALUES (19, 3, '2020-05', 4432, 4411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-17 09:12:42', NULL);
INSERT INTO `b_salary_record` VALUES (20, 4, '2020-05', 5600, 4456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-17 09:13:05', NULL);
INSERT INTO `b_salary_record` VALUES (21, 3, '2020-04', 4500, 4300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-31 14:42:48', NULL);
INSERT INTO `b_salary_record` VALUES (22, 6, '2020-06', 3000, 500, 50, 30, 150, 210, 650, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-31 22:54:07', NULL);

-- ----------------------------
-- Table structure for b_train_plan
-- ----------------------------
DROP TABLE IF EXISTS `b_train_plan`;
CREATE TABLE `b_train_plan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主键',
  `train_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `content` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `participant` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参加人员',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '培训计划' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_train_plan
-- ----------------------------
INSERT INTO `b_train_plan` VALUES (1, '新员工培训', '2020-01-01', '培训公司安全规范', '所有新员工', NULL, NULL);
INSERT INTO `b_train_plan` VALUES (3, '侧1耳', '2020-06-17', '存储', '长度', NULL, NULL);

-- ----------------------------
-- Table structure for b_user_doc
-- ----------------------------
DROP TABLE IF EXISTS `b_user_doc`;
CREATE TABLE `b_user_doc`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '员工id',
  `education` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `birth` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生日',
  `entry_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入职日期',
  `user_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工类型',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `user_no` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工档案' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_user_doc
-- ----------------------------
INSERT INTO `b_user_doc` VALUES (6, 2, '本科', '1998-05-11', '2020-03-11', '0', '2020-05-17 09:05:48', NULL, '0002', '13778123349', '1');
INSERT INTO `b_user_doc` VALUES (7, 3, '研究生', '1983-02-17', '2018-04-17', '1', '2020-05-17 09:06:23', NULL, '0003', '13884930019', '3');
INSERT INTO `b_user_doc` VALUES (8, 4, '本科', '1986-05-15', '2016-05-17', '1', '2020-05-17 09:06:56', NULL, '0004', '18623092285', '3');
INSERT INTO `b_user_doc` VALUES (11, 5, '本科', '1986-05-30', '2020-05-04', '0', '2020-05-24 21:42:56', NULL, '0005', '18677894453', '8');
INSERT INTO `b_user_doc` VALUES (12, 1, '博士', '1976-06-15', '2013-06-04', '1', '2020-06-04 22:27:49', NULL, '0001', NULL, '1');

-- ----------------------------
-- Table structure for b_user_plan
-- ----------------------------
DROP TABLE IF EXISTS `b_user_plan`;
CREATE TABLE `b_user_plan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '员工',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '计划名称',
  `start_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开始日期',
  `end_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束日期',
  `status` int(11) NULL DEFAULT 0 COMMENT '计划状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '个人计划' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_user_plan
-- ----------------------------
INSERT INTO `b_user_plan` VALUES (34, 2, '本周学习Excel常用函数', '2020-05-18', '2020-05-19', 0, '2020-05-17 08:48:20', NULL, '1.周一学习常用计算函数；\n2.周二学习常用统计函数');
INSERT INTO `b_user_plan` VALUES (35, 2, '完成合同格式修改', '2020-05-11', '2020-05-13', 1, '2020-05-17 08:49:10', NULL, '完成公司合同范本格式修改');
INSERT INTO `b_user_plan` VALUES (36, 4, '制定4月员工培训计划', '2020-05-18', '2020-05-21', 0, '2020-05-17 09:09:42', NULL, '制定4月份员工室外拓展活动计划');

-- ----------------------------
-- Table structure for b_work_daily
-- ----------------------------
DROP TABLE IF EXISTS `b_work_daily`;
CREATE TABLE `b_work_daily`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '员工id',
  `work_month` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作月份',
  `work_date` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作日期',
  `work_content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作内容',
  `progress` int(11) NULL DEFAULT NULL COMMENT '完成进度',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作日报' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_work_daily
-- ----------------------------
INSERT INTO `b_work_daily` VALUES (6, 2, '2020-05', '2020-05-17', '今日完成领导交代的各项任务', 100, '2020-05-17 08:49:56', NULL);
INSERT INTO `b_work_daily` VALUES (7, 2, '2020-05', '2020-05-16', '完成招标计划书的概述部分', 12, '2020-05-17 08:50:41', NULL);
INSERT INTO `b_work_daily` VALUES (8, 4, '2020-05', '2020-05-17', '完成候选人初选', 10, '2020-05-17 09:10:18', NULL);

-- ----------------------------
-- Table structure for b_work_record
-- ----------------------------
DROP TABLE IF EXISTS `b_work_record`;
CREATE TABLE `b_work_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '员工id',
  `work_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作日期',
  `up_time` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上班时间',
  `down_time` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下班时间',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `work_month` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出勤记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_work_record
-- ----------------------------
INSERT INTO `b_work_record` VALUES (26, 2, '2020-05-17', '08:38:52', '18:38:42', 0, '2020-05-17 08:38:54', '2020-05-17 08:39:11', '2020-05');
INSERT INTO `b_work_record` VALUES (27, 2, '2020-05-16', '09:38:42', '18:38:42', 1, '2020-05-17 08:39:24', '2020-05-17 08:39:35', '2020-05');
INSERT INTO `b_work_record` VALUES (28, 2, '2020-05-15', '08:39:48', '17:38:42', 2, '2020-05-17 08:39:49', '2020-05-17 08:40:00', '2020-05');
INSERT INTO `b_work_record` VALUES (29, 2, '2020-05-14', '08:40:18', '20:38:42', 3, '2020-05-17 08:40:19', '2020-05-17 08:40:30', '2020-05');
INSERT INTO `b_work_record` VALUES (30, 4, '2020-05-12', '09:07:02', '18:07:02', 1, '2020-05-17 09:07:14', '2020-05-17 09:07:32', '2020-05');
INSERT INTO `b_work_record` VALUES (31, 4, '2020-05-16', '08:07:02', '20:07:02', 3, '2020-05-17 09:07:44', '2020-05-17 09:07:55', '2020-05');
INSERT INTO `b_work_record` VALUES (32, 4, '2020-05-15', '08:07:02', '17:07:02', 2, '2020-05-17 09:08:07', '2020-05-17 09:08:20', '2020-05');
INSERT INTO `b_work_record` VALUES (33, 4, '2020-05-13', '08:07:02', '18:07:02', 0, '2020-05-17 09:08:33', '2020-05-17 09:08:45', '2020-05');
INSERT INTO `b_work_record` VALUES (34, 3, '2020-05-17', '09:12:07', NULL, 1, '2020-05-17 09:12:08', NULL, '2020-05');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `param_key`(`param_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', 0, '云存储配置信息');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 0, '江苏富梓民轮胎厂', 0, 0);
INSERT INTO `sys_dept` VALUES (2, 1, '长沙分公司', 1, -1);
INSERT INTO `sys_dept` VALUES (3, 1, '上海分公司', 2, 0);
INSERT INTO `sys_dept` VALUES (4, 3, '生产部', 0, 0);
INSERT INTO `sys_dept` VALUES (5, 3, '销售部', 1, 0);
INSERT INTO `sys_dept` VALUES (6, 3, '财务部', 0, 0);
INSERT INTO `sys_dept` VALUES (7, 3, '人事部', 0, 0);
INSERT INTO `sys_dept` VALUES (8, 3, '管理部', 0, 0);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名称',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典类型',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典码',
  `value` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典值',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '删除标记  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type`(`type`, `code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '性别', 'sex', '0', '女', 0, NULL, 0);
INSERT INTO `sys_dict` VALUES (2, '性别', 'sex', '1', '男', 1, NULL, 0);
INSERT INTO `sys_dict` VALUES (3, '性别', 'sex', '2', '未知', 3, NULL, 0);
INSERT INTO `sys_dict` VALUES (4, '工作状态', 'work_status', '0', '正常', 0, '0-正常；1-迟到；2-早退；3加班', 0);
INSERT INTO `sys_dict` VALUES (5, '工作状态', 'work_status', '1', '迟到', 1, '迟到', 0);
INSERT INTO `sys_dict` VALUES (6, '工作状态', 'work_status', '2', '早退', 2, '早退', 0);
INSERT INTO `sys_dict` VALUES (7, '工作状态', 'work_status', '3', '加班', 3, '加班', 0);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 'admin', '修改用户', 'com.person.modules.sys.controller.SysUserController.update()', '{\"userId\":2,\"username\":\"wdc\",\"name\":\"王大锤\",\"salt\":\"1sbkoGf5x7Q5lqxvCs5I\",\"email\":\"1111@qq.com\",\"mobile\":\"18651234456\",\"status\":1,\"roleIdList\":[2],\"createTime\":\"May 15, 2020 10:29:02 PM\",\"deptId\":4,\"deptName\":\"生产部\"}', 179, '0:0:0:0:0:0:0:1', '2020-05-31 12:26:17');
INSERT INTO `sys_log` VALUES (2, 'admin', '修改用户', 'com.person.modules.sys.controller.SysUserController.update()', '{\"userId\":3,\"username\":\"cw\",\"name\":\"财务小王\",\"salt\":\"2E5mvF1xjXFoY0narVz9\",\"email\":\"gy@qq.com\",\"mobile\":\"13455676543\",\"status\":1,\"roleIdList\":[3],\"createTime\":\"May 16, 2020 3:11:08 PM\",\"deptId\":6,\"deptName\":\"财务部\"}', 19, '0:0:0:0:0:0:0:1', '2020-05-31 12:26:29');
INSERT INTO `sys_log` VALUES (3, 'admin', '修改用户', 'com.person.modules.sys.controller.SysUserController.update()', '{\"userId\":4,\"username\":\"rs\",\"name\":\"人事小李\",\"salt\":\"NF4cYNKNmsMA997exGGN\",\"email\":\"zf@qq.com\",\"mobile\":\"19877678790\",\"status\":1,\"roleIdList\":[4],\"createTime\":\"May 16, 2020 3:11:43 PM\",\"deptId\":7,\"deptName\":\"人事部\"}', 17, '0:0:0:0:0:0:0:1', '2020-05-31 12:26:38');
INSERT INTO `sys_log` VALUES (4, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":21,\"userId\":3,\"salaryMonth\":\"2020-04\",\"mustSalary\":4500.0,\"realitySalary\":4300.0,\"createTime\":\"2020-05-31 14:42:48\"}', 58, '0:0:0:0:0:0:0:1', '2020-05-31 14:42:48');
INSERT INTO `sys_log` VALUES (5, 'admin', '修改面试', 'com.person.modules.person.controller.InterviewPlanController.update()', '{\"id\":6,\"candidate\":\"刘琦琦\",\"candidateMobile\":\"18723409981\",\"meetTime\":\"2020-05-20 08:58:55\",\"meetUserId\":3,\"status\":1,\"createTime\":\"2020-05-17 08:59:28\"}', 84, '0:0:0:0:0:0:0:1', '2020-05-31 22:23:58');
INSERT INTO `sys_log` VALUES (6, 'admin', '修改面试', 'com.person.modules.person.controller.InterviewPlanController.update()', '{\"id\":6,\"candidate\":\"刘琦琦\",\"candidateMobile\":\"18723409981\",\"meetTime\":\"2020-05-20 08:58:55\",\"meetUserId\":3,\"status\":1,\"createTime\":\"2020-05-17 08:59:28\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-31 22:25:01');
INSERT INTO `sys_log` VALUES (7, 'admin', '修改面试', 'com.person.modules.person.controller.InterviewPlanController.update()', '{\"id\":6,\"candidate\":\"刘琦琦\",\"candidateMobile\":\"18723409981\",\"meetTime\":\"2020-05-20 08:58:55\",\"meetUserId\":3,\"status\":1,\"createTime\":\"2020-05-17 08:59:28\"}', 93154, '0:0:0:0:0:0:0:1', '2020-05-31 22:28:18');
INSERT INTO `sys_log` VALUES (8, 'admin', '修改面试', 'com.person.modules.person.controller.InterviewPlanController.update()', '{\"id\":6,\"candidate\":\"刘琦琦\",\"candidateMobile\":\"18723409981\",\"meetTime\":\"2020-05-20 08:58:55\",\"meetUserId\":3,\"status\":2,\"createTime\":\"2020-05-17 08:59:28\"}', 7, '0:0:0:0:0:0:0:1', '2020-05-31 22:28:29');
INSERT INTO `sys_log` VALUES (9, 'admin', '保存工资', 'com.person.modules.person.controller.SalaryRecordController.save()', '{\"id\":22,\"userId\":6,\"salaryMonth\":\"2020-06\",\"mustSalary\":3000.0,\"realitySalary\":500.0,\"fundAmount\":50.0,\"taxAmount\":30.0,\"medicalAmount\":150.0,\"pensionAmount\":210.0,\"injuredAmount\":650.0,\"createTime\":\"2020-05-31 22:54:07\"}', 62, '0:0:0:0:0:0:0:1', '2020-05-31 22:54:07');
INSERT INTO `sys_log` VALUES (10, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":92,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"绩效考核\",\"type\":0,\"orderNum\":0}', 25, '0:0:0:0:0:0:0:1', '2020-06-01 21:22:19');
INSERT INTO `sys_log` VALUES (11, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"培训管理\",\"type\":0,\"icon\":\"fa fa-street-view\",\"orderNum\":5}', 12, '0:0:0:0:0:0:0:1', '2020-06-01 21:22:58');
INSERT INTO `sys_log` VALUES (12, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":93,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"考核设置\",\"url\":\"#\",\"perms\":\"#\",\"type\":1,\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-06-01 21:24:02');
INSERT INTO `sys_log` VALUES (13, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":93,\"parentId\":92,\"parentName\":\"绩效考核\",\"name\":\"考核设置\",\"url\":\"#\",\"perms\":\"#\",\"type\":1,\"orderNum\":0}', 15, '0:0:0:0:0:0:0:1', '2020-06-01 21:24:24');
INSERT INTO `sys_log` VALUES (14, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":92,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"绩效考核\",\"type\":0,\"icon\":\"fa fa-bar-chart\",\"orderNum\":0}', 6, '0:0:0:0:0:0:0:1', '2020-06-01 21:25:23');
INSERT INTO `sys_log` VALUES (15, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":94,\"parentId\":93,\"parentName\":\"考核设置\",\"name\":\"查看\",\"type\":2,\"orderNum\":0}', 11, '0:0:0:0:0:0:0:1', '2020-06-01 21:26:19');
INSERT INTO `sys_log` VALUES (16, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":95,\"parentId\":93,\"parentName\":\"考核设置\",\"name\":\"增加\",\"type\":2,\"orderNum\":0}', 7, '0:0:0:0:0:0:0:1', '2020-06-01 21:26:39');
INSERT INTO `sys_log` VALUES (17, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":96,\"parentId\":93,\"parentName\":\"考核设置\",\"name\":\"编辑\",\"type\":2,\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-06-01 21:26:52');
INSERT INTO `sys_log` VALUES (18, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":97,\"parentId\":93,\"parentName\":\"考核设置\",\"name\":\"删除\",\"type\":2,\"orderNum\":0}', 14, '0:0:0:0:0:0:0:1', '2020-06-01 21:27:03');
INSERT INTO `sys_log` VALUES (19, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":98,\"parentId\":43,\"parentName\":\"培训管理\",\"name\":\"培训计划\",\"url\":\"#\",\"type\":1,\"orderNum\":0}', 11, '0:0:0:0:0:0:0:1', '2020-06-01 21:28:55');
INSERT INTO `sys_log` VALUES (20, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":93,\"parentId\":92,\"parentName\":\"绩效考核\",\"name\":\"考核设置\",\"url\":\"/person/merit/list\",\"perms\":\"#\",\"type\":1,\"orderNum\":0}', 16, '0:0:0:0:0:0:0:1', '2020-06-02 20:49:58');
INSERT INTO `sys_log` VALUES (21, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":93,\"parentId\":92,\"parentName\":\"绩效考核\",\"name\":\"考核设置\",\"url\":\"modules/person/merit.html\",\"perms\":\"#\",\"type\":1,\"orderNum\":0}', 11, '0:0:0:0:0:0:0:1', '2020-06-02 20:50:43');
INSERT INTO `sys_log` VALUES (22, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":94,\"parentId\":93,\"parentName\":\"考核设置\",\"name\":\"查看\",\"perms\":\"person:merit:list,person:merit:info\",\"type\":2,\"orderNum\":0}', 9, '0:0:0:0:0:0:0:1', '2020-06-02 20:51:53');
INSERT INTO `sys_log` VALUES (23, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":99,\"parentId\":98,\"parentName\":\"培训计划\",\"name\":\"查看\",\"perms\":\"person:train:list,person:train:info\",\"type\":2,\"orderNum\":0}', 15, '0:0:0:0:0:0:0:1', '2020-06-02 20:54:35');
INSERT INTO `sys_log` VALUES (24, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":100,\"parentId\":98,\"parentName\":\"培训计划\",\"name\":\"新增\",\"perms\":\"person:train:save\",\"type\":2,\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-06-02 20:54:54');
INSERT INTO `sys_log` VALUES (25, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":101,\"parentId\":98,\"parentName\":\"培训计划\",\"name\":\"编辑\",\"perms\":\"person:train:update\",\"type\":2,\"orderNum\":0}', 14, '0:0:0:0:0:0:0:1', '2020-06-02 20:55:13');
INSERT INTO `sys_log` VALUES (26, 'admin', '保存菜单', 'com.person.modules.sys.controller.SysMenuController.save()', '{\"menuId\":102,\"parentId\":98,\"parentName\":\"培训计划\",\"name\":\"删除\",\"perms\":\"person:train:delete\",\"type\":2,\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2020-06-02 20:55:30');
INSERT INTO `sys_log` VALUES (27, 'admin', '修改菜单', 'com.person.modules.sys.controller.SysMenuController.update()', '{\"menuId\":98,\"parentId\":43,\"parentName\":\"培训管理\",\"name\":\"培训计划\",\"url\":\"modules/person/train.html\",\"type\":1,\"orderNum\":0}', 9, '0:0:0:0:0:0:0:1', '2020-06-02 20:56:34');
INSERT INTO `sys_log` VALUES (28, 'admin', '保存培训计划', 'com.person.modules.person.controller.TrainPlanController.save()', '{\"id\":1,\"title\":\"新员工培训\",\"trainDate\":\"2020-01-01\",\"content\":\"培训公司安全规范\",\"participant\":\"所有新员工\"}', 96, '0:0:0:0:0:0:0:1', '2020-06-02 21:04:01');
INSERT INTO `sys_log` VALUES (29, 'admin', '保存培训计划', 'com.person.modules.person.controller.TrainPlanController.save()', '{\"id\":2,\"title\":\"测试\",\"trainDate\":\"2020-06-03\",\"content\":\"测试\",\"participant\":\"测试\"}', 7, '0:0:0:0:0:0:0:1', '2020-06-02 21:07:13');
INSERT INTO `sys_log` VALUES (30, 'admin', '修改培训计划', 'com.person.modules.person.controller.TrainPlanController.update()', '{\"id\":2,\"title\":\"测试1\",\"trainDate\":\"2020-06-04\",\"content\":\"测试1\",\"participant\":\"测试1\"}', 9, '0:0:0:0:0:0:0:1', '2020-06-02 21:07:22');
INSERT INTO `sys_log` VALUES (31, 'admin', '删除培训计划', 'com.person.modules.person.controller.TrainPlanController.delete()', '[2]', 11, '0:0:0:0:0:0:0:1', '2020-06-02 21:07:28');
INSERT INTO `sys_log` VALUES (32, 'admin', '保存培训计划', 'com.person.modules.person.controller.TrainPlanController.save()', '{\"id\":3,\"title\":\"侧1耳\",\"trainDate\":\"2020-06-17\",\"content\":\"存储\",\"participant\":\"长度\"}', 6, '0:0:0:0:0:0:0:1', '2020-06-02 21:08:07');
INSERT INTO `sys_log` VALUES (33, 'admin', '保存绩效设置', 'com.person.modules.person.controller.MeritController.save()', '{\"id\":1,\"setDate\":\"2020-06-02\",\"monthQuota\":\"11\",\"weekQuota\":\"22\"}', 85, '0:0:0:0:0:0:0:1', '2020-06-02 21:16:35');
INSERT INTO `sys_log` VALUES (34, 'admin', '修改绩效设置', 'com.person.modules.person.controller.MeritController.update()', '{\"id\":1,\"setDate\":\"2020-06-02\",\"monthQuota\":\"113\",\"weekQuota\":\"224\"}', 13, '0:0:0:0:0:0:0:1', '2020-06-02 21:17:08');
INSERT INTO `sys_log` VALUES (35, 'admin', '删除绩效设置', 'com.person.modules.person.controller.MeritController.delete()', '[1]', 9, '0:0:0:0:0:0:0:1', '2020-06-02 21:19:06');
INSERT INTO `sys_log` VALUES (36, 'admin', '保存员工档案', 'com.person.modules.person.controller.UserDocController.save()', '{\"id\":12,\"userId\":1,\"age\":0,\"deptName\":\"江苏富梓民轮胎厂\",\"deptId\":1,\"education\":\"博士\",\"userNo\":\"0001\",\"birth\":\"1976-06-15\",\"entryDate\":\"2013-06-04\",\"userType\":\"1\",\"createTime\":\"2020-06-04 22:27:49\"}', 178, '0:0:0:0:0:0:0:1', '2020-06-04 22:27:49');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, NULL, 0, 'fa fa-cog', 10);
INSERT INTO `sys_menu` VALUES (2, 1, '员工管理', 'modules/sys/user.html', NULL, 1, 'fa fa-user', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '角色管理', 'modules/sys/role.html', NULL, 1, 'fa fa-user-secret', 2);
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', 'modules/sys/menu.html', NULL, 1, 'fa fa-th-list', 3);
INSERT INTO `sys_menu` VALUES (15, 2, '查看', NULL, 'sys:user:list,sys:user:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (16, 2, '新增', NULL, 'sys:user:save,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (17, 2, '修改', NULL, 'sys:user:update,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (18, 2, '删除', NULL, 'sys:user:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (19, 3, '查看', NULL, 'sys:role:list,sys:role:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (20, 3, '新增', NULL, 'sys:role:save,sys:menu:perms', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, 3, '修改', NULL, 'sys:role:update,sys:menu:perms', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, 3, '删除', NULL, 'sys:role:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (23, 4, '查看', NULL, 'sys:menu:list,sys:menu:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, 4, '新增', NULL, 'sys:menu:save,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (25, 4, '修改', NULL, 'sys:menu:update,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (26, 4, '删除', NULL, 'sys:menu:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (31, 1, '部门管理', 'modules/sys/dept.html', NULL, 1, 'fa fa-file-code-o', 1);
INSERT INTO `sys_menu` VALUES (32, 31, '查看', NULL, 'sys:dept:list,sys:dept:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (33, 31, '新增', NULL, 'sys:dept:save,sys:dept:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (34, 31, '修改', NULL, 'sys:dept:update,sys:dept:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (35, 31, '删除', NULL, 'sys:dept:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (36, 1, '字典管理', 'modules/sys/dict.html', NULL, 1, 'fa fa-bookmark-o', 6);
INSERT INTO `sys_menu` VALUES (37, 36, '查看', NULL, 'sys:dict:list,sys:dict:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (38, 36, '新增', NULL, 'sys:dict:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (39, 36, '修改', NULL, 'sys:dict:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (40, 36, '删除', NULL, 'sys:dict:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (41, 0, '工资管理', NULL, NULL, 0, 'fa fa-btc', 3);
INSERT INTO `sys_menu` VALUES (42, 0, '考勤管理', NULL, NULL, 0, 'fa fa-calendar-check-o', 4);
INSERT INTO `sys_menu` VALUES (43, 0, '培训管理', NULL, NULL, 0, 'fa fa-street-view', 5);
INSERT INTO `sys_menu` VALUES (44, 0, '招聘管理', NULL, NULL, 0, 'fa fa-bullhorn', 1);
INSERT INTO `sys_menu` VALUES (45, 0, '档案管理', NULL, NULL, 0, 'fa fa-file-word-o', 2);
INSERT INTO `sys_menu` VALUES (46, 43, '个人计划', 'modules/person/plan.html', '', 1, 'fa fa-table', 0);
INSERT INTO `sys_menu` VALUES (47, 46, '查看', NULL, 'person:plan:list,person:plan:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (48, 46, '新增', NULL, 'person:plan:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (49, 46, '修改', NULL, 'person:plan:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (50, 46, '删除', NULL, 'person:plan:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (51, 44, '招聘需求', 'modules/person/need.html', '', 1, 'fa fa-bullhorn', 0);
INSERT INTO `sys_menu` VALUES (52, 44, '面试计划', 'modules/person/interview.html', '', 1, 'fa fa-users', 0);
INSERT INTO `sys_menu` VALUES (53, 45, '员工档案', 'modules/person/doc.html', NULL, 1, 'fa fa-address-card-o', 0);
INSERT INTO `sys_menu` VALUES (54, 42, '出勤记录', 'modules/person/work.html', NULL, 1, 'fa fa-check-square', 0);
INSERT INTO `sys_menu` VALUES (55, 43, '工作日报', 'modules/person/daily.html', NULL, 1, 'fa fa-file-excel-o', 0);
INSERT INTO `sys_menu` VALUES (56, 41, '工资查询', 'modules/person/salary.html', NULL, 1, 'fa fa-jpy', 0);
INSERT INTO `sys_menu` VALUES (57, 43, '转正申请', 'modules/person/apply.html', NULL, 1, 'fa fa-american-sign-language-interpreting', 0);
INSERT INTO `sys_menu` VALUES (58, 55, '查询', '', 'person:daily:list,person:daily:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (59, 55, '增加', '', 'person:daily:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (60, 55, '编辑', NULL, 'person:daily:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (61, 55, '删除', NULL, 'person:daily:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (62, 54, '查询', NULL, 'person:work:list,person:work:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (63, 54, '上班', NULL, 'person:work:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (64, 54, '下班', NULL, 'person:work:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (65, 57, '申请', NULL, 'person:apply:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (66, 57, '查看', NULL, 'person:apply:list,person:apply:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (67, 57, '删除', NULL, 'person:apply:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (68, 57, '编辑', NULL, 'person:apply:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (69, 53, '查看', NULL, 'person:doc:list,person:doc:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (70, 53, '新增', NULL, 'person:doc:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (71, 53, '编辑', NULL, 'person:doc:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (72, 53, '删除', NULL, 'person:doc:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (73, 51, '查看', NULL, 'person:need:list,person:need:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (74, 51, '新增', NULL, 'person:need:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (75, 51, '编辑', NULL, 'person:need:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (76, 51, '删除', NULL, 'person:need:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (77, 52, '查看', NULL, 'person:interview:list,person:interview:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (78, 52, '新增', NULL, 'person:interview:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (79, 52, '编辑', NULL, 'person:interview:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (80, 52, '删除', NULL, 'person:interview:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (81, 56, '查看', NULL, 'person:salary:list,person:salary:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (82, 56, '新增', NULL, 'person:salary:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (83, 56, '编辑', NULL, 'person:salary:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (84, 56, '删除', NULL, 'person:salary:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (85, 57, '审核', NULL, 'person:apply:approval', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (86, 54, '删除', NULL, 'person:work:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (87, 45, '合同管理', 'modules/person/contract.html', NULL, 1, 'fa fa-file-text', 0);
INSERT INTO `sys_menu` VALUES (88, 87, '查看', NULL, 'person:contract:list,person:contract:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (89, 87, '增加', NULL, 'person:contract:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (90, 87, '编辑', NULL, 'person:contract:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (91, 87, '删除', NULL, 'person:contract:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (92, 0, '绩效考核', NULL, NULL, 0, 'fa fa-bar-chart', 0);
INSERT INTO `sys_menu` VALUES (93, 92, '考核设置', 'modules/person/merit.html', '#', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (94, 93, '查看', NULL, 'person:merit:list,person:merit:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (95, 93, '增加', NULL, 'person:merit:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (96, 93, '编辑', NULL, 'person:merit:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (97, 93, '删除', NULL, 'person:merit:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (98, 43, '培训计划', 'modules/person/train.html', NULL, 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (99, 98, '查看', NULL, 'person:train:list,person:train:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (100, 98, '新增', NULL, 'person:train:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (101, 98, '编辑', NULL, 'person:train:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (102, 98, '删除', NULL, 'person:train:delete', 2, NULL, 0);

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件上传' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', '超级管理员', 1, '2020-05-14 22:28:37');
INSERT INTO `sys_role` VALUES (2, '总经理', '总经理', 3, '2020-05-15 20:29:43');
INSERT INTO `sys_role` VALUES (3, '财务专员', '财务专员', 3, '2020-05-15 20:30:29');
INSERT INTO `sys_role` VALUES (4, '人事专员', '人事专员', 3, '2020-05-15 20:31:13');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与部门对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (19, 1, 1);
INSERT INTO `sys_role_dept` VALUES (20, 1, 3);
INSERT INTO `sys_role_dept` VALUES (21, 1, 4);
INSERT INTO `sys_role_dept` VALUES (22, 1, 5);
INSERT INTO `sys_role_dept` VALUES (31, 3, 1);
INSERT INTO `sys_role_dept` VALUES (32, 3, 3);
INSERT INTO `sys_role_dept` VALUES (33, 3, 4);
INSERT INTO `sys_role_dept` VALUES (34, 3, 5);
INSERT INTO `sys_role_dept` VALUES (35, 4, 1);
INSERT INTO `sys_role_dept` VALUES (36, 4, 3);
INSERT INTO `sys_role_dept` VALUES (37, 4, 4);
INSERT INTO `sys_role_dept` VALUES (38, 4, 5);
INSERT INTO `sys_role_dept` VALUES (43, 2, 1);
INSERT INTO `sys_role_dept` VALUES (44, 2, 3);
INSERT INTO `sys_role_dept` VALUES (45, 2, 4);
INSERT INTO `sys_role_dept` VALUES (46, 2, 5);
INSERT INTO `sys_role_dept` VALUES (47, 2, 6);
INSERT INTO `sys_role_dept` VALUES (48, 2, 7);
INSERT INTO `sys_role_dept` VALUES (49, 2, 8);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 503 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (217, 1, 1);
INSERT INTO `sys_role_menu` VALUES (218, 1, 2);
INSERT INTO `sys_role_menu` VALUES (219, 1, 15);
INSERT INTO `sys_role_menu` VALUES (220, 1, 16);
INSERT INTO `sys_role_menu` VALUES (221, 1, 17);
INSERT INTO `sys_role_menu` VALUES (222, 1, 18);
INSERT INTO `sys_role_menu` VALUES (223, 1, 3);
INSERT INTO `sys_role_menu` VALUES (224, 1, 19);
INSERT INTO `sys_role_menu` VALUES (225, 1, 20);
INSERT INTO `sys_role_menu` VALUES (226, 1, 21);
INSERT INTO `sys_role_menu` VALUES (227, 1, 22);
INSERT INTO `sys_role_menu` VALUES (228, 1, 4);
INSERT INTO `sys_role_menu` VALUES (229, 1, 23);
INSERT INTO `sys_role_menu` VALUES (230, 1, 24);
INSERT INTO `sys_role_menu` VALUES (231, 1, 25);
INSERT INTO `sys_role_menu` VALUES (232, 1, 26);
INSERT INTO `sys_role_menu` VALUES (233, 1, 31);
INSERT INTO `sys_role_menu` VALUES (234, 1, 32);
INSERT INTO `sys_role_menu` VALUES (235, 1, 33);
INSERT INTO `sys_role_menu` VALUES (236, 1, 34);
INSERT INTO `sys_role_menu` VALUES (237, 1, 35);
INSERT INTO `sys_role_menu` VALUES (238, 1, 36);
INSERT INTO `sys_role_menu` VALUES (239, 1, 37);
INSERT INTO `sys_role_menu` VALUES (240, 1, 38);
INSERT INTO `sys_role_menu` VALUES (241, 1, 39);
INSERT INTO `sys_role_menu` VALUES (242, 1, 40);
INSERT INTO `sys_role_menu` VALUES (243, 1, 41);
INSERT INTO `sys_role_menu` VALUES (244, 1, 56);
INSERT INTO `sys_role_menu` VALUES (245, 1, 81);
INSERT INTO `sys_role_menu` VALUES (246, 1, 82);
INSERT INTO `sys_role_menu` VALUES (247, 1, 83);
INSERT INTO `sys_role_menu` VALUES (248, 1, 84);
INSERT INTO `sys_role_menu` VALUES (249, 1, 42);
INSERT INTO `sys_role_menu` VALUES (250, 1, 54);
INSERT INTO `sys_role_menu` VALUES (251, 1, 43);
INSERT INTO `sys_role_menu` VALUES (252, 1, 46);
INSERT INTO `sys_role_menu` VALUES (253, 1, 47);
INSERT INTO `sys_role_menu` VALUES (254, 1, 48);
INSERT INTO `sys_role_menu` VALUES (255, 1, 49);
INSERT INTO `sys_role_menu` VALUES (256, 1, 50);
INSERT INTO `sys_role_menu` VALUES (257, 1, 55);
INSERT INTO `sys_role_menu` VALUES (258, 1, 58);
INSERT INTO `sys_role_menu` VALUES (259, 1, 59);
INSERT INTO `sys_role_menu` VALUES (260, 1, 60);
INSERT INTO `sys_role_menu` VALUES (261, 1, 61);
INSERT INTO `sys_role_menu` VALUES (262, 1, 57);
INSERT INTO `sys_role_menu` VALUES (263, 1, 65);
INSERT INTO `sys_role_menu` VALUES (264, 1, 66);
INSERT INTO `sys_role_menu` VALUES (265, 1, 67);
INSERT INTO `sys_role_menu` VALUES (266, 1, 68);
INSERT INTO `sys_role_menu` VALUES (267, 1, 85);
INSERT INTO `sys_role_menu` VALUES (268, 1, 44);
INSERT INTO `sys_role_menu` VALUES (269, 1, 51);
INSERT INTO `sys_role_menu` VALUES (270, 1, 73);
INSERT INTO `sys_role_menu` VALUES (271, 1, 74);
INSERT INTO `sys_role_menu` VALUES (272, 1, 75);
INSERT INTO `sys_role_menu` VALUES (273, 1, 76);
INSERT INTO `sys_role_menu` VALUES (274, 1, 52);
INSERT INTO `sys_role_menu` VALUES (275, 1, 77);
INSERT INTO `sys_role_menu` VALUES (276, 1, 78);
INSERT INTO `sys_role_menu` VALUES (277, 1, 79);
INSERT INTO `sys_role_menu` VALUES (278, 1, 80);
INSERT INTO `sys_role_menu` VALUES (279, 1, 45);
INSERT INTO `sys_role_menu` VALUES (280, 1, 53);
INSERT INTO `sys_role_menu` VALUES (281, 1, 69);
INSERT INTO `sys_role_menu` VALUES (282, 1, 70);
INSERT INTO `sys_role_menu` VALUES (283, 1, 71);
INSERT INTO `sys_role_menu` VALUES (284, 1, 72);
INSERT INTO `sys_role_menu` VALUES (353, 3, 41);
INSERT INTO `sys_role_menu` VALUES (354, 3, 56);
INSERT INTO `sys_role_menu` VALUES (355, 3, 81);
INSERT INTO `sys_role_menu` VALUES (356, 3, 82);
INSERT INTO `sys_role_menu` VALUES (357, 3, 83);
INSERT INTO `sys_role_menu` VALUES (358, 3, 84);
INSERT INTO `sys_role_menu` VALUES (359, 3, 42);
INSERT INTO `sys_role_menu` VALUES (360, 3, 54);
INSERT INTO `sys_role_menu` VALUES (361, 3, 62);
INSERT INTO `sys_role_menu` VALUES (362, 3, 63);
INSERT INTO `sys_role_menu` VALUES (363, 3, 64);
INSERT INTO `sys_role_menu` VALUES (364, 3, 43);
INSERT INTO `sys_role_menu` VALUES (365, 3, 46);
INSERT INTO `sys_role_menu` VALUES (366, 3, 47);
INSERT INTO `sys_role_menu` VALUES (367, 3, 48);
INSERT INTO `sys_role_menu` VALUES (368, 3, 49);
INSERT INTO `sys_role_menu` VALUES (369, 3, 50);
INSERT INTO `sys_role_menu` VALUES (370, 3, 55);
INSERT INTO `sys_role_menu` VALUES (371, 3, 58);
INSERT INTO `sys_role_menu` VALUES (372, 3, 59);
INSERT INTO `sys_role_menu` VALUES (373, 3, 60);
INSERT INTO `sys_role_menu` VALUES (374, 3, 61);
INSERT INTO `sys_role_menu` VALUES (375, 3, 57);
INSERT INTO `sys_role_menu` VALUES (376, 3, 65);
INSERT INTO `sys_role_menu` VALUES (377, 3, 66);
INSERT INTO `sys_role_menu` VALUES (378, 3, 67);
INSERT INTO `sys_role_menu` VALUES (379, 3, 68);
INSERT INTO `sys_role_menu` VALUES (380, 3, 85);
INSERT INTO `sys_role_menu` VALUES (381, 4, 1);
INSERT INTO `sys_role_menu` VALUES (382, 4, 2);
INSERT INTO `sys_role_menu` VALUES (383, 4, 15);
INSERT INTO `sys_role_menu` VALUES (384, 4, 16);
INSERT INTO `sys_role_menu` VALUES (385, 4, 17);
INSERT INTO `sys_role_menu` VALUES (386, 4, 18);
INSERT INTO `sys_role_menu` VALUES (387, 4, 41);
INSERT INTO `sys_role_menu` VALUES (388, 4, 56);
INSERT INTO `sys_role_menu` VALUES (389, 4, 81);
INSERT INTO `sys_role_menu` VALUES (390, 4, 42);
INSERT INTO `sys_role_menu` VALUES (391, 4, 54);
INSERT INTO `sys_role_menu` VALUES (392, 4, 62);
INSERT INTO `sys_role_menu` VALUES (393, 4, 63);
INSERT INTO `sys_role_menu` VALUES (394, 4, 64);
INSERT INTO `sys_role_menu` VALUES (395, 4, 43);
INSERT INTO `sys_role_menu` VALUES (396, 4, 46);
INSERT INTO `sys_role_menu` VALUES (397, 4, 47);
INSERT INTO `sys_role_menu` VALUES (398, 4, 48);
INSERT INTO `sys_role_menu` VALUES (399, 4, 49);
INSERT INTO `sys_role_menu` VALUES (400, 4, 50);
INSERT INTO `sys_role_menu` VALUES (401, 4, 55);
INSERT INTO `sys_role_menu` VALUES (402, 4, 58);
INSERT INTO `sys_role_menu` VALUES (403, 4, 59);
INSERT INTO `sys_role_menu` VALUES (404, 4, 60);
INSERT INTO `sys_role_menu` VALUES (405, 4, 61);
INSERT INTO `sys_role_menu` VALUES (406, 4, 57);
INSERT INTO `sys_role_menu` VALUES (407, 4, 65);
INSERT INTO `sys_role_menu` VALUES (408, 4, 66);
INSERT INTO `sys_role_menu` VALUES (409, 4, 67);
INSERT INTO `sys_role_menu` VALUES (410, 4, 68);
INSERT INTO `sys_role_menu` VALUES (411, 4, 85);
INSERT INTO `sys_role_menu` VALUES (412, 4, 44);
INSERT INTO `sys_role_menu` VALUES (413, 4, 51);
INSERT INTO `sys_role_menu` VALUES (414, 4, 73);
INSERT INTO `sys_role_menu` VALUES (415, 4, 74);
INSERT INTO `sys_role_menu` VALUES (416, 4, 75);
INSERT INTO `sys_role_menu` VALUES (417, 4, 76);
INSERT INTO `sys_role_menu` VALUES (418, 4, 52);
INSERT INTO `sys_role_menu` VALUES (419, 4, 77);
INSERT INTO `sys_role_menu` VALUES (420, 4, 78);
INSERT INTO `sys_role_menu` VALUES (421, 4, 79);
INSERT INTO `sys_role_menu` VALUES (422, 4, 80);
INSERT INTO `sys_role_menu` VALUES (423, 4, 45);
INSERT INTO `sys_role_menu` VALUES (424, 4, 53);
INSERT INTO `sys_role_menu` VALUES (425, 4, 69);
INSERT INTO `sys_role_menu` VALUES (426, 4, 70);
INSERT INTO `sys_role_menu` VALUES (427, 4, 71);
INSERT INTO `sys_role_menu` VALUES (428, 4, 72);
INSERT INTO `sys_role_menu` VALUES (451, 2, 1);
INSERT INTO `sys_role_menu` VALUES (452, 2, 2);
INSERT INTO `sys_role_menu` VALUES (453, 2, 15);
INSERT INTO `sys_role_menu` VALUES (454, 2, 16);
INSERT INTO `sys_role_menu` VALUES (455, 2, 17);
INSERT INTO `sys_role_menu` VALUES (456, 2, 18);
INSERT INTO `sys_role_menu` VALUES (457, 2, 41);
INSERT INTO `sys_role_menu` VALUES (458, 2, 56);
INSERT INTO `sys_role_menu` VALUES (459, 2, 81);
INSERT INTO `sys_role_menu` VALUES (460, 2, 82);
INSERT INTO `sys_role_menu` VALUES (461, 2, 83);
INSERT INTO `sys_role_menu` VALUES (462, 2, 84);
INSERT INTO `sys_role_menu` VALUES (463, 2, 42);
INSERT INTO `sys_role_menu` VALUES (464, 2, 54);
INSERT INTO `sys_role_menu` VALUES (465, 2, 62);
INSERT INTO `sys_role_menu` VALUES (466, 2, 63);
INSERT INTO `sys_role_menu` VALUES (467, 2, 64);
INSERT INTO `sys_role_menu` VALUES (468, 2, 86);
INSERT INTO `sys_role_menu` VALUES (469, 2, 43);
INSERT INTO `sys_role_menu` VALUES (470, 2, 46);
INSERT INTO `sys_role_menu` VALUES (471, 2, 47);
INSERT INTO `sys_role_menu` VALUES (472, 2, 48);
INSERT INTO `sys_role_menu` VALUES (473, 2, 49);
INSERT INTO `sys_role_menu` VALUES (474, 2, 50);
INSERT INTO `sys_role_menu` VALUES (475, 2, 55);
INSERT INTO `sys_role_menu` VALUES (476, 2, 58);
INSERT INTO `sys_role_menu` VALUES (477, 2, 59);
INSERT INTO `sys_role_menu` VALUES (478, 2, 60);
INSERT INTO `sys_role_menu` VALUES (479, 2, 61);
INSERT INTO `sys_role_menu` VALUES (480, 2, 57);
INSERT INTO `sys_role_menu` VALUES (481, 2, 65);
INSERT INTO `sys_role_menu` VALUES (482, 2, 66);
INSERT INTO `sys_role_menu` VALUES (483, 2, 67);
INSERT INTO `sys_role_menu` VALUES (484, 2, 68);
INSERT INTO `sys_role_menu` VALUES (485, 2, 85);
INSERT INTO `sys_role_menu` VALUES (486, 2, 44);
INSERT INTO `sys_role_menu` VALUES (487, 2, 51);
INSERT INTO `sys_role_menu` VALUES (488, 2, 73);
INSERT INTO `sys_role_menu` VALUES (489, 2, 74);
INSERT INTO `sys_role_menu` VALUES (490, 2, 75);
INSERT INTO `sys_role_menu` VALUES (491, 2, 76);
INSERT INTO `sys_role_menu` VALUES (492, 2, 52);
INSERT INTO `sys_role_menu` VALUES (493, 2, 77);
INSERT INTO `sys_role_menu` VALUES (494, 2, 78);
INSERT INTO `sys_role_menu` VALUES (495, 2, 79);
INSERT INTO `sys_role_menu` VALUES (496, 2, 80);
INSERT INTO `sys_role_menu` VALUES (497, 2, 45);
INSERT INTO `sys_role_menu` VALUES (498, 2, 53);
INSERT INTO `sys_role_menu` VALUES (499, 2, 69);
INSERT INTO `sys_role_menu` VALUES (500, 2, 70);
INSERT INTO `sys_role_menu` VALUES (501, 2, 71);
INSERT INTO `sys_role_menu` VALUES (502, 2, 72);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盐',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_no` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', 1, 1, '2016-11-11 11:11:11', '管理员', '0001');
INSERT INTO `sys_user` VALUES (2, 'wdc', 'a977e04a469ee5b213c31dc60d03f75de2bfeda871f465c723c304313f748e7d', '1sbkoGf5x7Q5lqxvCs5I', '1111@qq.com', '18651234456', 1, 4, '2020-05-15 22:29:02', '王大锤', '0002');
INSERT INTO `sys_user` VALUES (3, 'cw', '676bd505a6d523cb00f4f79bf6dc7a2954d761a3aee0d045c21f8d6e2172a179', '2E5mvF1xjXFoY0narVz9', 'gy@qq.com', '13455676543', 1, 6, '2020-05-16 15:11:08', '财务小王', '0003');
INSERT INTO `sys_user` VALUES (4, 'rs', 'c4ade571b45f569230b7782b9d657bc6e724913d7d429bf742ad17dabf0753bc', 'NF4cYNKNmsMA997exGGN', 'zf@qq.com', '19877678790', 1, 7, '2020-05-16 15:11:43', '人事小李', '0004');
INSERT INTO `sys_user` VALUES (5, '存储', '7fe22afcdeaab59c453fd55c0723f7cd77cb974a1066c40721cd2a3cf0f0fce7', 'MVDlRa0lGADPLXgehAH2', 'cc@qq.com', NULL, 1, 4, '2020-05-24 13:38:31', '王婷婷', NULL);
INSERT INTO `sys_user` VALUES (6, 'ceshi', '019c84a915b50ca574a65a157c2fef00ad33a6c6d613718808dd6409edef6a4a', 'TfWjU5q1e5nAtoRKlHZR', NULL, NULL, 1, 4, '2020-05-24 21:18:25', '测试手机', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1);
INSERT INTO `sys_user_role` VALUES (8, 5, 2);
INSERT INTO `sys_user_role` VALUES (9, 2, 2);
INSERT INTO `sys_user_role` VALUES (10, 3, 3);
INSERT INTO `sys_user_role` VALUES (11, 4, 4);

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for b_announcement
-- ----------------------------

DROP IN EXISTS TABLE `b_announcement`;
CREATE TABLE `b_announcement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) DEFAULT NULL COMMENT '公告名称',
  `content` varchar(5000) DEFAULT NULL COMMENT '公告内容',
 `create_user` varchar(128) DEFAULT NULL COMMENT '发布人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='公告管理';
