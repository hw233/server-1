/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : main

 Target Server Type    : MariaDB
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 25/08/2019 20:57:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accost_data
-- ----------------------------
DROP TABLE IF EXISTS `accost_data`;
CREATE TABLE `accost_data`  (
  `num_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '头像序列ID, 取值: 1-105',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型, 取值: 1门客/ 2红颜/ 3NPC',
  `obj_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '头像对象ID, 取值:NPC ID/ 门客ID/ 红颜ID',
  `day_of_week` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周几, 取值: 1-7',
  `hour_start` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '出现小时',
  `hour_end` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '离开小时',
  `flag` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '特殊标识, 取值: 1拜访红颜, 2VIP红颜, 3郭富城/ 其他',
  `position` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '前端出现位置',
  PRIMARY KEY (`num_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '搭讪配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accost_data
-- ----------------------------
INSERT INTO `accost_data` VALUES (1, 2, 200001, 1, 9, 10, 0, 1);
INSERT INTO `accost_data` VALUES (2, 1, 100001, 1, 9, 10, 0, 2);
INSERT INTO `accost_data` VALUES (3, 3, 300010, 1, 9, 10, 0, 3);
INSERT INTO `accost_data` VALUES (4, 2, 200046, 1, 12, 13, 2, 4);
INSERT INTO `accost_data` VALUES (5, 1, 100046, 1, 12, 13, 0, 5);
INSERT INTO `accost_data` VALUES (6, 3, 300013, 1, 12, 13, 0, 6);
INSERT INTO `accost_data` VALUES (7, 2, 200013, 1, 15, 16, 1, 7);
INSERT INTO `accost_data` VALUES (8, 1, 100013, 1, 15, 16, 0, 8);
INSERT INTO `accost_data` VALUES (9, 3, 300007, 1, 15, 16, 0, 9);
INSERT INTO `accost_data` VALUES (10, 2, 200005, 1, 18, 19, 1, 1);
INSERT INTO `accost_data` VALUES (11, 1, 100005, 1, 18, 19, 0, 2);
INSERT INTO `accost_data` VALUES (12, 3, 300007, 1, 18, 19, 0, 3);
INSERT INTO `accost_data` VALUES (13, 2, 200012, 1, 21, 22, 1, 4);
INSERT INTO `accost_data` VALUES (14, 1, 100012, 1, 21, 22, 0, 5);
INSERT INTO `accost_data` VALUES (15, 3, 300006, 1, 21, 22, 0, 6);
INSERT INTO `accost_data` VALUES (16, 2, 200003, 2, 9, 10, 1, 7);
INSERT INTO `accost_data` VALUES (17, 1, 100003, 2, 9, 10, 0, 8);
INSERT INTO `accost_data` VALUES (18, 3, 300003, 2, 9, 10, 0, 9);
INSERT INTO `accost_data` VALUES (19, 2, 200019, 2, 12, 13, 0, 1);
INSERT INTO `accost_data` VALUES (20, 1, 100041, 2, 12, 13, 0, 2);
INSERT INTO `accost_data` VALUES (21, 3, 300013, 2, 12, 13, 0, 3);
INSERT INTO `accost_data` VALUES (22, 2, 200020, 2, 15, 16, 1, 4);
INSERT INTO `accost_data` VALUES (23, 1, 100020, 2, 15, 16, 0, 5);
INSERT INTO `accost_data` VALUES (24, 3, 300012, 2, 15, 16, 0, 6);
INSERT INTO `accost_data` VALUES (25, 2, 200001, 2, 18, 19, 0, 7);
INSERT INTO `accost_data` VALUES (26, 1, 100001, 2, 18, 19, 0, 8);
INSERT INTO `accost_data` VALUES (27, 3, 300012, 2, 18, 19, 0, 9);
INSERT INTO `accost_data` VALUES (28, 2, 200048, 2, 21, 22, 2, 1);
INSERT INTO `accost_data` VALUES (29, 1, 100048, 2, 21, 22, 0, 2);
INSERT INTO `accost_data` VALUES (30, 1, 100050, 2, 21, 22, 3, 3);
INSERT INTO `accost_data` VALUES (31, 2, 200002, 3, 9, 10, 0, 4);
INSERT INTO `accost_data` VALUES (32, 1, 100021, 3, 9, 10, 0, 5);
INSERT INTO `accost_data` VALUES (33, 3, 300005, 3, 9, 10, 0, 6);
INSERT INTO `accost_data` VALUES (34, 2, 200016, 3, 12, 13, 0, 7);
INSERT INTO `accost_data` VALUES (35, 1, 100016, 3, 12, 13, 0, 8);
INSERT INTO `accost_data` VALUES (36, 3, 300001, 3, 12, 13, 0, 9);
INSERT INTO `accost_data` VALUES (37, 2, 200047, 3, 15, 16, 2, 1);
INSERT INTO `accost_data` VALUES (38, 1, 100047, 3, 15, 16, 0, 2);
INSERT INTO `accost_data` VALUES (39, 3, 300002, 3, 15, 16, 0, 3);
INSERT INTO `accost_data` VALUES (40, 2, 200042, 3, 18, 19, 0, 4);
INSERT INTO `accost_data` VALUES (41, 1, 100042, 3, 18, 19, 0, 5);
INSERT INTO `accost_data` VALUES (42, 3, 300003, 3, 18, 19, 0, 6);
INSERT INTO `accost_data` VALUES (43, 2, 200011, 3, 21, 22, 1, 7);
INSERT INTO `accost_data` VALUES (44, 1, 100011, 3, 21, 22, 0, 8);
INSERT INTO `accost_data` VALUES (45, 3, 300003, 3, 21, 22, 0, 9);

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `agent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '代理ID',
  `device` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '设备',
  `device_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '设备类型',
  `mac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Mac地址',
  `extra` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '额外',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 0, '', '', '', '');

-- ----------------------------
-- Table structure for asset
-- ----------------------------
DROP TABLE IF EXISTS `asset`;
CREATE TABLE `asset`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `gold` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '元宝',
  `silver` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '银币',
  `copper` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '铜币',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '经验',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色资产表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asset
-- ----------------------------
INSERT INTO `asset` VALUES (1, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for asset_data
-- ----------------------------
DROP TABLE IF EXISTS `asset_data`;
CREATE TABLE `asset_data`  (
  `asset` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '资产类型',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '物品配置ID',
  PRIMARY KEY (`asset`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资产物品映射配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asset_data
-- ----------------------------
INSERT INTO `asset_data` VALUES ('copper', 3);
INSERT INTO `asset_data` VALUES ('exp', 4);
INSERT INTO `asset_data` VALUES ('gold', 1);
INSERT INTO `asset_data` VALUES ('silver', 2);

-- ----------------------------
-- Table structure for assets
-- ----------------------------
DROP TABLE IF EXISTS `assets`;
CREATE TABLE `assets`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `gold` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '元宝',
  `silver` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '银币',
  `copper` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '铜币',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '经验',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色资产表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assets
-- ----------------------------
INSERT INTO `assets` VALUES (1, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for attribute_data
-- ----------------------------
DROP TABLE IF EXISTS `attribute_data`;
CREATE TABLE `attribute_data`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '属性ID',
  `attribute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '属性',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型(固定值/万分比)',
  `merge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '合并计算公式',
  `effect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '效果',
  `name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `description` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '属性配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attribute_data
-- ----------------------------
INSERT INTO `attribute_data` VALUES (1, 'power', 'fix', 'power', '', '力量', '力量');
INSERT INTO `attribute_data` VALUES (2, 'dexterity', 'fix', 'dexterity', '', '敏捷', '敏捷');
INSERT INTO `attribute_data` VALUES (3, 'vitality', 'fix', 'vitality', '', '体力', '体力');
INSERT INTO `attribute_data` VALUES (4, 'intellect', 'fix', 'intellect', '', '智力', '智力');
INSERT INTO `attribute_data` VALUES (5, 'attack', 'fix', 'attack', '', '攻击', '攻击');
INSERT INTO `attribute_data` VALUES (6, 'attack_min', 'fix', 'attack_min', '', '最小攻击固定值', '最小攻击固定值');
INSERT INTO `attribute_data` VALUES (7, 'attack_max', 'fix', 'attack_max', '', '最大攻击固定值', '最大攻击固定值');
INSERT INTO `attribute_data` VALUES (8, 'defense', 'fix', 'defense', '', '防御', '防御');
INSERT INTO `attribute_data` VALUES (9, 'total_hp', 'fix', 'total_hp', '', '生命', '生命');
INSERT INTO `attribute_data` VALUES (10, 'hit', 'fix', 'hit', '', '命中', '命中');
INSERT INTO `attribute_data` VALUES (11, 'duck', 'fix', 'duck', '', '闪避', '闪避');
INSERT INTO `attribute_data` VALUES (12, 'hit_rate', 'fix', 'hit_rate', '', '命中率', '命中率');
INSERT INTO `attribute_data` VALUES (13, 'duck_rate', 'fix', 'duck_rate', '', '闪避率', '闪避率');
INSERT INTO `attribute_data` VALUES (14, 'attack_speed', 'fix', 'attack_speed', '', '攻速', '攻速');
INSERT INTO `attribute_data` VALUES (15, 'skill_hurt_per', 'fix', 'skill_hurt_per', '', '技能伤害比例(百分数)', '技能伤害比例(百分数)');
INSERT INTO `attribute_data` VALUES (16, 'skill_hurt', 'fix', 'skill_hurt', '', '技能固定伤害(整数)', '技能固定伤害(整数)');
INSERT INTO `attribute_data` VALUES (17, 'hurt_add_per', 'fix', 'hurt_add_per', '', '伤害加成(百分数)', '伤害加成(百分数)');
INSERT INTO `attribute_data` VALUES (18, 'hurt_add_per_4_show', 'fix', 'hurt_add_per_4_show', '', '显示用的额外的伤害加成(百分数)', '显示用的额外的伤害加成(百分数)');
INSERT INTO `attribute_data` VALUES (19, 'hurt_dec_per', 'fix', 'hurt_dec_per', '', '伤害减免(百分数)', '伤害减免(百分数)');
INSERT INTO `attribute_data` VALUES (20, 'attack_fixed', 'fix', 'attack_fixed', '', '固定加伤(整数)绝对攻击', '固定加伤(整数)绝对攻击');
INSERT INTO `attribute_data` VALUES (21, 'defense_fixed', 'fix', 'defense_fixed', '', '固定免伤(整数)绝对防御', '固定免伤(整数)绝对防御');
INSERT INTO `attribute_data` VALUES (22, 'ignore_def_rate', 'fix', 'ignore_def_rate', '', '无视防御比例(百分数)', '无视防御比例(百分数)');
INSERT INTO `attribute_data` VALUES (23, 'resist_ignore_def', 'fix', 'resist_ignore_def', '', '无视防御抵抗(百分数)', '无视防御抵抗(百分数)');
INSERT INTO `attribute_data` VALUES (24, 'power_hit_rate', 'fix', 'power_hit_rate', '', '暴击几率百分比', '暴击几率百分比');
INSERT INTO `attribute_data` VALUES (25, 'diligence_rate', 'fix', 'diligence_rate', '', '抗暴率(百分数)', '抗暴率(百分数)');
INSERT INTO `attribute_data` VALUES (26, 'power_hit_add_per', 'fix', 'power_hit_add_per', '', '暴伤加成(百分数)', '暴伤加成(百分数)');
INSERT INTO `attribute_data` VALUES (27, 'power_hit_dec_per', 'fix', 'power_hit_dec_per', '', '暴伤减免(百分数)', '暴伤减免(百分数)');
INSERT INTO `attribute_data` VALUES (28, 'power_hit_add_fixed', 'fix', 'power_hit_add_fixed', '', '暴伤加成(固定值)', '暴伤加成(固定值)');
INSERT INTO `attribute_data` VALUES (29, 'power_hit_dec_fixed', 'fix', 'power_hit_dec_fixed', '', '暴伤减免(固定值)', '暴伤减免(固定值)');
INSERT INTO `attribute_data` VALUES (30, 'move_speed', 'fix', 'move_speed', '', '移动速度固定值', '移动速度固定值');
INSERT INTO `attribute_data` VALUES (31, 'critical_hit_rate', 'fix', 'critical_hit_rate', '', '会心几率百分比', '会心几率百分比');
INSERT INTO `attribute_data` VALUES (32, 'resist_critical_hit', 'fix', 'resist_critical_hit', '', '会心抵抗百分比', '会心抵抗百分比');
INSERT INTO `attribute_data` VALUES (33, 'critical_hit_add_per', 'fix', 'critical_hit_add_per', '', '会心伤害加成(百分数)', '会心伤害加成(百分数)');
INSERT INTO `attribute_data` VALUES (34, 'critical_hit_dec_per', 'fix', 'critical_hit_dec_per', '', '会心伤害减免(百分数)', '会心伤害减免(百分数)');
INSERT INTO `attribute_data` VALUES (35, 'critical_hit_add_fixed', 'fix', 'critical_hit_add_fixed', '', '会心伤害加成(固定值)', '会心伤害加成(固定值)');
INSERT INTO `attribute_data` VALUES (36, 'critical_hit_dec_fixed', 'fix', 'critical_hit_dec_fixed', '', '会心伤害减免(固定值)', '会心伤害减免(固定值)');
INSERT INTO `attribute_data` VALUES (37, 'total_mp', 'fix', 'total_mp', '', '总法力值', '总法力值');
INSERT INTO `attribute_data` VALUES (38, 'magic_defense', 'fix', 'magic_defense', '', '法术防御', '法术防御');
INSERT INTO `attribute_data` VALUES (39, 'ignore_strike_hurt_add_per', 'fix', 'ignore_strike_hurt_add_per', '', '无视一击伤害加成(百分比)', '无视一击伤害加成(百分比)');
INSERT INTO `attribute_data` VALUES (40, 'ignore_strike_hurt_dec_per', 'fix', 'ignore_strike_hurt_dec_per', '', '无视一击伤害减免(百分比)', '无视一击伤害减免(百分比)');
INSERT INTO `attribute_data` VALUES (41, 'act_hurt_max', 'fix', 'act_hurt_max', '', '伤害上限', '伤害上限');
INSERT INTO `attribute_data` VALUES (42, 'act_hurt_min', 'fix', 'act_hurt_min', '', '伤害下限', '伤害下限');
INSERT INTO `attribute_data` VALUES (43, 'target_hurt_max', 'fix', 'target_hurt_max', '', '损害上限', '损害上限');
INSERT INTO `attribute_data` VALUES (44, 'target_hurt_min', 'fix', 'target_hurt_min', '', '损害下限', '损害下限');
INSERT INTO `attribute_data` VALUES (45, 'paralysis', 'fix', 'paralysis', '', '麻痹几率', '麻痹几率');
INSERT INTO `attribute_data` VALUES (46, 'resist_paralysis', 'fix', 'resist_paralysis', '', '麻痹抵抗', '麻痹抵抗');
INSERT INTO `attribute_data` VALUES (47, 'reduce_speed', 'fix', 'reduce_speed', '', '减速几率', '减速几率');
INSERT INTO `attribute_data` VALUES (48, 'resist_reduce_speed', 'fix', 'resist_reduce_speed', '', '减速抵抗', '减速抵抗');
INSERT INTO `attribute_data` VALUES (49, 'vertigo', 'fix', 'vertigo', 'cannot_attack', '眩晕几率', '眩晕几率');
INSERT INTO `attribute_data` VALUES (50, 'resist_vertigo', 'fix', 'resist_vertigo', '', '眩晕抵抗', '眩晕抵抗');
INSERT INTO `attribute_data` VALUES (51, 'silence', 'fix', 'silence', '', '沉默几率', '沉默几率');
INSERT INTO `attribute_data` VALUES (52, 'resist_silence', 'fix', 'resist_silence', '', '沉默抵抗', '沉默抵抗');
INSERT INTO `attribute_data` VALUES (53, 'suck_hp', 'fix', 'suck_hp', '', '吸血', '吸血');
INSERT INTO `attribute_data` VALUES (54, 'kill_mon_exp', 'fix', 'kill_mon_exp', '', '杀怪加经验比例', '杀怪加经验比例');
INSERT INTO `attribute_data` VALUES (55, 'kill_mon_copper', 'fix', 'kill_mon_copper', '', '杀怪加铜币比例', '杀怪加铜币比例');
INSERT INTO `attribute_data` VALUES (56, 'parry_per', 'fix', 'parry_per', '', '格挡几率', '格挡几率');
INSERT INTO `attribute_data` VALUES (57, 'skill_hurt_add_per', 'fix', 'skill_hurt_add_per', '', '技能伤害', '技能伤害');
INSERT INTO `attribute_data` VALUES (58, 'attack_add_hp_fixed', 'fix', 'attack_add_hp_fixed', '', '每一击回血', '每一击回血');
INSERT INTO `attribute_data` VALUES (59, 'combo_attack_rate', 'fix', 'combo_attack_rate', '', '连击几率', '连击几率');
INSERT INTO `attribute_data` VALUES (60, 'resist_control', 'fix', 'resist_control', '', '控制抵抗', '控制抵抗');
INSERT INTO `attribute_data` VALUES (61, 'attack_fixed_by_level', 'fix', 'attack_fixed_by_level', '', '根据等级的固定加伤(整数)', '根据等级的固定加伤(整数)');
INSERT INTO `attribute_data` VALUES (62, 'attack_add_hp_fixed_by_level', 'fix', 'attack_add_hp_fixed_by_level', '', '根据等级的每一击回血(整数)', '根据等级的每一击回血(整数)');
INSERT INTO `attribute_data` VALUES (63, 'attack_add_hp_fixed_only_pvp', 'fix', 'attack_add_hp_fixed_only_pvp', '', '每一击回血PVP', '每一击回血PVP');
INSERT INTO `attribute_data` VALUES (64, 'ack_weapon', 'fix', 'ack_weapon', '', '武器攻击', '武器攻击');
INSERT INTO `attribute_data` VALUES (65, 'ack_jewelry', 'fix', 'ack_jewelry', '', '圣器(首饰)攻击', '圣器(首饰)攻击');
INSERT INTO `attribute_data` VALUES (66, 'def_armor', 'fix', 'def_armor', '', '防具防御', '防具防御');
INSERT INTO `attribute_data` VALUES (67, 'hp_armor', 'fix', 'hp_armor', '', '防具生命', '防具生命');
INSERT INTO `attribute_data` VALUES (68, 'ack_elements', 'fix', 'ack_elements', '', '元素攻击', '元素攻击');
INSERT INTO `attribute_data` VALUES (69, 'def_elements', 'fix', 'def_elements', '', '元素防御', '元素防御');
INSERT INTO `attribute_data` VALUES (70, 'base_hp', 'fix', 'base_hp', '', '基础生命', '基础生命');
INSERT INTO `attribute_data` VALUES (71, 'counter_ack_fixed', 'fix', 'counter_ack_fixed', '', '反射伤害值(固定)', '反射伤害值(固定)');
INSERT INTO `attribute_data` VALUES (72, 'counter_ack_per', 'fix', 'counter_ack_per', '', '反射伤害值(万分比)', '反射伤害值(万分比)');
INSERT INTO `attribute_data` VALUES (73, 'ignore_strike_rate', 'fix', 'ignore_strike_rate', '', '无视一击几率', '无视一击几率');
INSERT INTO `attribute_data` VALUES (74, 'add_hp_per_3', 'fix', 'add_hp_per_3', '', '每3级生命+n整数', '每3级生命+n整数');
INSERT INTO `attribute_data` VALUES (75, 'add_att_per_3', 'fix', 'add_att_per_3', '', '每3级攻击+n整数', '每3级攻击+n整数');
INSERT INTO `attribute_data` VALUES (76, 'add_def_per_3', 'fix', 'add_def_per_3', '', '每3级防御+n整数', '每3级防御+n整数');
INSERT INTO `attribute_data` VALUES (77, 'add_hp_per_2', 'fix', 'add_hp_per_2', '', '每2级生命+n整数', '每2级生命+n整数');
INSERT INTO `attribute_data` VALUES (78, 'add_att_per_2', 'fix', 'add_att_per_2', '', '每2级攻击+n整数', '每2级攻击+n整数');
INSERT INTO `attribute_data` VALUES (79, 'add_def_per_2', 'fix', 'add_def_per_2', '', '每2级防御+n整数', '每2级防御+n整数');
INSERT INTO `attribute_data` VALUES (80, 'add_hp_per_1', 'fix', 'add_hp_per_1', '', '每1级生命+n整数', '每1级生命+n整数');
INSERT INTO `attribute_data` VALUES (81, 'add_att_per_1', 'fix', 'add_att_per_1', '', '每1级攻击+n整数', '每1级攻击+n整数');
INSERT INTO `attribute_data` VALUES (82, 'add_def_per_1', 'fix', 'add_def_per_1', '', '每1级防御+n整数', '每1级防御+n整数');
INSERT INTO `attribute_data` VALUES (83, 'attack_add_hp_per', 'fix', 'attack_add_hp_per', '', '攻击自身回血百分比', '攻击自身回血百分比');
INSERT INTO `attribute_data` VALUES (84, 'be_attack_add_hp_per', 'fix', 'be_attack_add_hp_per', '', '被击者回血百分比', '被击者回血百分比');
INSERT INTO `attribute_data` VALUES (85, 'invincibility', 'fix', '', '', '无敌(不会受伤)', '无敌(不会受伤)');
INSERT INTO `attribute_data` VALUES (86, 'hp_fastening', 'fix', '', '', '不能回血', '不能回血');
INSERT INTO `attribute_data` VALUES (87, 'is_multiple_hurt', 'fix', 'is_multiple_hurt', '', '2倍伤害被动技能,数值为伤害倍数', '2倍伤害被动技能,数值为伤害倍数');
INSERT INTO `attribute_data` VALUES (88, 'passive_add_min_attack', 'fix', 'passive_add_min_attack', '', '被动按基础属性加攻击', '被动按基础属性加攻击');
INSERT INTO `attribute_data` VALUES (89, 'passive_add_duck_by_dex', 'fix', 'passive_add_duck_by_dex', '', '被动按基础闪避加敏捷', '被动按基础闪避加敏捷');
INSERT INTO `attribute_data` VALUES (90, 'passive_add_attack_by_dex', 'fix', 'passive_add_attack_by_dex', '', '被动按基础加敏捷', '被动按基础加敏捷');
INSERT INTO `attribute_data` VALUES (91, 'passive_add_def_by_pow', 'fix', 'passive_add_def_by_pow', '', '被动按基础加力量', '被动按基础加力量');
INSERT INTO `attribute_data` VALUES (92, 'passive_add_hp_by_int', 'fix', 'passive_add_hp_by_int', '', '被动按基础加值', '被动按基础加值');
INSERT INTO `attribute_data` VALUES (93, 'passive_add_hp_by_per', 'fix', 'passive_add_hp_by_per', '', '自身(X)生命上限', '自身(X)生命上限');
INSERT INTO `attribute_data` VALUES (94, 'passive_fan_recover_be_hit', 'fix', 'passive_fan_recover_be_hit', '', '扇子的受击满血被动', '扇子的受击满血被动');
INSERT INTO `attribute_data` VALUES (95, 'passive_power_hit_must_next', 'fix', 'passive_power_hit_must_next', '', '触发暴击时，下一次攻击必触发暴击,值存冷却时间,非-1生效', '触发暴击时，下一次攻击必触发暴击,值存冷却时间,非-1生效');
INSERT INTO `attribute_data` VALUES (96, 'passive_add_skill_hurt_when_duck', 'fix', 'passive_add_skill_hurt_when_duck', '', '被动：闪避一次后，下一次攻击技能伤害提高200。(PVP生效),值存{伤害例,冷却时间},非0生效', '被动：闪避一次后，下一次攻击技能伤害提高200。(PVP生效),值存{伤害例,冷却时间},非0生效');
INSERT INTO `attribute_data` VALUES (97, 'passive_add_counter_ack_by_pow', 'fix', 'passive_add_counter_ack_by_pow', '', '被动：反射伤害值=自身力量*2', '被动：反射伤害值=自身力量*2');
INSERT INTO `attribute_data` VALUES (98, 'passive_add_buff_when_low_hp', 'fix', 'passive_add_buff_when_low_hp', '', '被动：生命值低于30时自动触发buff', '被动：生命值低于30时自动触发buff');
INSERT INTO `attribute_data` VALUES (99, 'passive_protect', 'fix', 'passive_protect', '', '被动：队友血量低于20时，可以代替他承受伤害(值存{CD,要求血量比,持续时间,免伤比例,技能冷却时间})', '被动：队友血量低于20时，可以代替他承受伤害(值存{CD,要求血量比,持续时间,免伤比例,技能冷却时间})');
INSERT INTO `attribute_data` VALUES (100, 'reborn', 'fix', 'reborn', '', '重生,值存冷却时间,非-1生效', '重生,值存冷却时间,非-1生效');
INSERT INTO `attribute_data` VALUES (101, 'shield_can_boom', 'fix', 'shield_can_boom', '', '满值后爆炸的盾,非0生效,值存{技能组id,吸收系数}', '满值后爆炸的盾,非0生效,值存{技能组id,吸收系数}');
INSERT INTO `attribute_data` VALUES (102, 'use_skill_when_dead', 'fix', 'use_skill_when_dead', '', '自身死亡后释放技能，仅对玩家有效,值存{技能id,冷却时间},非0生效', '自身死亡后释放技能，仅对玩家有效,值存{技能id,冷却时间},非0生效');
INSERT INTO `attribute_data` VALUES (103, 'pet_protect_per', 'fix', 'pet_protect_per', '', '侍女分担伤害', '侍女分担伤害');
INSERT INTO `attribute_data` VALUES (104, 'pet_dead_boom', 'fix', 'pet_dead_boom', '', '侍女死亡释放技能', '侍女死亡释放技能');
INSERT INTO `attribute_data` VALUES (105, 'speed', 'fix', 'speed', '', '移动速度', '移动速度');
INSERT INTO `attribute_data` VALUES (106, 'hp_max', 'fix', 'hp_max', '', '生命', '生命');
INSERT INTO `attribute_data` VALUES (107, 'mp_max', 'fix', 'mp_max', '', '魔法', '魔法');
INSERT INTO `attribute_data` VALUES (108, 'atk_speed', 'fix', 'atk_speed', '', '攻击速度', '攻击速度');
INSERT INTO `attribute_data` VALUES (109, 'physic_dmg', 'fix', 'physic_dmg', '', '物攻', '物攻');
INSERT INTO `attribute_data` VALUES (110, 'magic_dmg', 'fix', 'magic_dmg', '', '魔攻', '魔攻');
INSERT INTO `attribute_data` VALUES (111, 'physic_def', 'fix', 'physic_def', '', '物防', '物防');
INSERT INTO `attribute_data` VALUES (112, 'magic_def', 'fix', 'magic_def', '', '魔防', '魔防');
INSERT INTO `attribute_data` VALUES (113, 'critical', 'fix', 'critical', '', '暴击', '暴击');
INSERT INTO `attribute_data` VALUES (114, 'tenacity', 'fix', 'tenacity', '', '坚韧', '坚韧');
INSERT INTO `attribute_data` VALUES (115, 'accuracy', 'fix', 'accuracy', '', '命中', '命中');
INSERT INTO `attribute_data` VALUES (116, 'evasion', 'fix', 'evasion', '', '闪避', '闪避');
INSERT INTO `attribute_data` VALUES (117, 'holy_dmg', 'fix', 'holy_dmg', '', '神圣伤害', '神圣伤害');
INSERT INTO `attribute_data` VALUES (118, 'critical_dmg', 'fix', 'critical_dmg', '', '暴击伤害', '暴击伤害');
INSERT INTO `attribute_data` VALUES (119, 'dmg_ratio', 'fix', 'dmg_ratio', '', '伤害加成', '伤害加成');
INSERT INTO `attribute_data` VALUES (120, 'def_ratio', 'fix', 'def_ratio', '', '伤害减免', '伤害减免');
INSERT INTO `attribute_data` VALUES (121, 'enhance_control', 'fix', 'enhance_control', '', '控制加强', '控制加强');
INSERT INTO `attribute_data` VALUES (122, 'anti_control', 'fix', 'anti_control', '', '控制抵抗', '控制抵抗');
INSERT INTO `attribute_data` VALUES (123, 'escape', 'fix', 'escape', '', '逃跑率', '逃跑率');
INSERT INTO `attribute_data` VALUES (124, 'anti_escape', 'fix', 'anti_escape', '', '抗逃跑率', '抗逃跑率');
INSERT INTO `attribute_data` VALUES (125, 'capture', 'fix', 'capture', '', '抓捕概率', '抓捕概率');
INSERT INTO `attribute_data` VALUES (126, 'physic_def_ratio', 'fix', 'physic_def_ratio', '', '物理伤害减免', '物理伤害减免');
INSERT INTO `attribute_data` VALUES (127, 'magic_def_ratio', 'fix', 'magic_def_ratio', '', '魔法伤害减免', '魔法伤害减免');
INSERT INTO `attribute_data` VALUES (128, 'physic_accuracy', 'fix', 'physic_accuracy', '', '物理命中', '物理命中');
INSERT INTO `attribute_data` VALUES (129, 'magic_accuracy', 'fix', 'magic_accuracy', '', '魔法命中', '魔法命中');
INSERT INTO `attribute_data` VALUES (130, 'physic_evasion', 'fix', 'physic_evasion', '', '物理闪避', '物理闪避');
INSERT INTO `attribute_data` VALUES (131, 'magic_evasion', 'fix', 'magic_evasion', '', '魔法闪避', '魔法闪避');
INSERT INTO `attribute_data` VALUES (132, 'physic_critical', 'fix', 'physic_critical', '', '物理暴击', '物理暴击');
INSERT INTO `attribute_data` VALUES (133, 'magic_critical', 'fix', 'magic_critical', '', '魔法暴击', '魔法暴击');
INSERT INTO `attribute_data` VALUES (134, 'physic_tenacity', 'fix', 'physic_tenacity', '', '物理坚韧', '物理坚韧');
INSERT INTO `attribute_data` VALUES (135, 'magic_tenacity', 'fix', 'magic_tenacity', '', '魔法坚韧', '魔法坚韧');
INSERT INTO `attribute_data` VALUES (136, 'heal_val', 'fix', 'heal_val', '', '治疗加强', '治疗加强');
INSERT INTO `attribute_data` VALUES (137, 'heal_ratio', 'fix', 'heal_ratio', '', '治疗效果', '治疗效果');
INSERT INTO `attribute_data` VALUES (138, 'eff_heal_ratio', 'fix', 'eff_heal_ratio', '', '被治疗效果', '被治疗效果');
INSERT INTO `attribute_data` VALUES (139, 'physic_dmg_ratio', 'fix', 'physic_dmg_ratio', '', '物理伤害加成', '物理伤害加成');
INSERT INTO `attribute_data` VALUES (140, 'magic_dmg_ratio', 'fix', 'magic_dmg_ratio', '', '魔法伤害加成', '魔法伤害加成');
INSERT INTO `attribute_data` VALUES (141, 'fc', 'fix', 'fc', '', '战力', '战力');
INSERT INTO `attribute_data` VALUES (142, 'strength', 'fix', 'strength', '', '力量', '力量');
INSERT INTO `attribute_data` VALUES (143, 'constitution', 'fix', 'constitution', '', '体质', '体质');
INSERT INTO `attribute_data` VALUES (144, 'magic', 'fix', 'magic', 'cannot_attack,cannot_be_attack', '魔法', '魔法');
INSERT INTO `attribute_data` VALUES (145, 'agility', 'fix', 'agility', '', '智力', '智力');
INSERT INTO `attribute_data` VALUES (146, 'endurance', 'fix', 'endurance', '', '耐力', '耐力');
INSERT INTO `attribute_data` VALUES (147, 'exp_ratio', 'ratio', 'exp_ratio', '', '经验加成', '经验加成');
INSERT INTO `attribute_data` VALUES (148, 'hp', 'fix', 'hp', '', '血量', '血量');
INSERT INTO `attribute_data` VALUES (149, 'freeze', 'fix', '', 'cannot_be_attack', '冰冻', '冰冻');
INSERT INTO `attribute_data` VALUES (150, 'destroy', 'fix', '', '', '毁灭', '毁灭');

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction`  (
  `unique_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一ID',
  `auction_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '拍品ID',
  `number` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '拍品数量',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1仙盟拍卖2全服拍卖3个人拍卖',
  `start_time` int(10) NOT NULL DEFAULT 0 COMMENT '开始时间',
  `end_time` int(10) NOT NULL DEFAULT 0 COMMENT '结束时间',
  `from` tinyint(1) NOT NULL DEFAULT 0 COMMENT '物品来源',
  `bid_number` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '加价次数',
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前价格',
  `seller_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '获得收入玩家列表[{玩家id,昵称,服id},|...]',
  `bidder_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '竞拍者列表[{玩家id,昵称,服id,元宝数量},|...]',
  `club_id` bigint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '帮派id',
  `bidder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '出价者ID',
  `bidder_name` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '出价者名字',
  `bidder_server_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '出价者服ID',
  `timer` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '定时器(ignore)',
  `flag` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标识(flag)',
  PRIMARY KEY (`unique_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拍卖信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auction_data
-- ----------------------------
DROP TABLE IF EXISTS `auction_data`;
CREATE TABLE `auction_data`  (
  `auction_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '拍品ID',
  `auction_type` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '竞拍类型(1竞价,2一口价)',
  `begin_price` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '底价',
  `add_price` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '每次加价',
  `tax` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '税收',
  `show_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '预览时间',
  `auction_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '拍卖时间',
  `critical_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '临界时间(出价延迟)',
  `delay_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '延迟时间(临界时间出价延迟)',
  PRIMARY KEY (`auction_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拍卖配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auction_data
-- ----------------------------
INSERT INTO `auction_data` VALUES (1, 1, 1, 1, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for auction_log
-- ----------------------------
DROP TABLE IF EXISTS `auction_log`;
CREATE TABLE `auction_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `auction_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '拍品ID',
  `number` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '拍品数量',
  `bid_number` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '加价次数',
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '成交价',
  `bidder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '获得者ID',
  `bidder_name` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '获得者名字',
  `bidder_server_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '获得者服ID',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `daily_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '零点时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '拍卖日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for beauty_fashion_data
-- ----------------------------
DROP TABLE IF EXISTS `beauty_fashion_data`;
CREATE TABLE `beauty_fashion_data`  (
  `fashion_id` int(10) UNSIGNED NOT NULL COMMENT '内衣id',
  `beauty_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '红颜id',
  `fashion_name` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名字',
  `intimacy` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '亲密度 => 爱心值',
  `charm` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '魅力值',
  `admire` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '爱慕值',
  `intimacy_ratio` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '亲密度 => 爱心值万分比值',
  `charm_ratio` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '魅力值万分比值',
  `admire_ratio` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '爱慕值万分比值',
  `desc` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `get_str` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '获取途径',
  `model_name` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模型名称',
  `half_tex` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '半身图名称',
  `good_tex` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图标名称',
  `quality` int(10) NOT NULL DEFAULT 0 COMMENT '品质',
  `get_link` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '获取途径',
  `term` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '品质',
  PRIMARY KEY (`fashion_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '红颜内衣配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of beauty_fashion_data
-- ----------------------------
INSERT INTO `beauty_fashion_data` VALUES (20001, 200001, '出水芙蓉', 0, 200, 0, 0, 400, 0, '黛眉朱唇艳，娇花照静波，亭亭一枝出水来，别样芙蓉映日红', '拍卖获得[]', 'pb_role20001', 'icon_wifeHF001', 'icon_wifeHH001', 2, 'Pegasus', '[{1,0},{2,1}]');
INSERT INTO `beauty_fashion_data` VALUES (20002, 200002, '灿若繁星', 0, 200, 0, 0, 400, 0, '在静谧的仲夏夜里，拾取点点星光，组成爱与梦的璀璨银河。', '拍卖获得[]', 'pb_role20002', 'icon_wifeHF002', 'icon_wifeHH002', 2, 'Auction', '[{1,0},{2,1}]');
INSERT INTO `beauty_fashion_data` VALUES (20009, 200009, '昼夜玫瑰', 0, 200, 0, 0, 400, 0, '想成为你心上被偏爱的朱砂，也想成为你眸中最迷人的月光。', '拍卖获得[]', 'pb_role20009', 'icon_wifeHF009', 'icon_wifeHH009', 2, 'Auction', '[{1,0},{2,1}]');
INSERT INTO `beauty_fashion_data` VALUES (20015, 200015, '云霄魅色', 0, 200, 0, 0, 400, 0, '天际云上，风里雾间，栖息的不是天使，是魅人心神的绝色。', '拍卖获得[]', 'pb_role20015', 'icon_wifeHF015', 'icon_wifeHH015', 2, 'Auction', '[{1,0},{2,1}]');
INSERT INTO `beauty_fashion_data` VALUES (20043, 200043, '青涩年华', 0, 200, 0, 0, 400, 0, '那青涩的初体验，是裙摆飘飘、温软怀抱与少女献上的一吻。', '拍卖获得[]', 'pb_role20043', 'icon_wifeHF043', 'icon_wifeHH043', 2, 'Auction', '[{1,0},{2,1}]');

-- ----------------------------
-- Table structure for buff
-- ----------------------------
DROP TABLE IF EXISTS `buff`;
CREATE TABLE `buff`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `buff_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态增益(buff)ID',
  `start_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '生效时间',
  `end_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '结束时间',
  `overlap` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '叠加数',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标识(flag)',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色buff表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for buff_data
-- ----------------------------
DROP TABLE IF EXISTS `buff_data`;
CREATE TABLE `buff_data`  (
  `buff_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '增益状态(Buff)ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组ID',
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '有效时间',
  `name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `effect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '效果',
  `temporary` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否临时的(切地图失效)',
  `overlap_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '叠加类型(0:不叠加/1:时间/2:数值/3:都叠加)',
  `replace_buffs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '替换Buffs',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`buff_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'buff配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buff_data
-- ----------------------------
INSERT INTO `buff_data` VALUES (1, 1, 1, 0, '扣血', '[5]', 0, 0, '', '');

-- ----------------------------
-- Table structure for compare_data
-- ----------------------------
DROP TABLE IF EXISTS `compare_data`;
CREATE TABLE `compare_data`  (
  `compare_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '比较类型',
  `compare_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '比较名',
  PRIMARY KEY (`compare_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '比较模式配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of compare_data
-- ----------------------------
INSERT INTO `compare_data` VALUES ('eq', '等于');
INSERT INTO `compare_data` VALUES ('gt', '大于');
INSERT INTO `compare_data` VALUES ('gte', '大于等于');
INSERT INTO `compare_data` VALUES ('lt', '小于');
INSERT INTO `compare_data` VALUES ('lte', '小于等于');
INSERT INTO `compare_data` VALUES ('nc', '不比较');
INSERT INTO `compare_data` VALUES ('ne', '不等于');

-- ----------------------------
-- Table structure for effect_data
-- ----------------------------
DROP TABLE IF EXISTS `effect_data`;
CREATE TABLE `effect_data`  (
  `effect_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '效果ID',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类型(主动:active/被动:passive/增益:buff)',
  `scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作用范围',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '条件',
  `ratio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '概率',
  `object` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作用对象',
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作',
  `attribute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作属性',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '属性值',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '效果时间',
  `extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '额外',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`effect_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '效果配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of effect_data
-- ----------------------------
INSERT INTO `effect_data` VALUES (1, 'active', 'battle', '', '10000', 'Self', 'add', 'Hurt', 'Hurt * 1.8', 0, '', '增加80%伤害');
INSERT INTO `effect_data` VALUES (2, 'active', 'battle', '', '10000', 'Self', 'add', 'Hurt', 'Hurt * 1.5', 0, '', '增加50%伤害');
INSERT INTO `effect_data` VALUES (3, 'active', 'battle', 'SelfAttribute.hp == 0', '10000', 'Self', 'add', 'SelfAttribute.hp', 'SelfAttribute.total_hp', 0, '', '死亡立即复活');
INSERT INTO `effect_data` VALUES (4, 'active', 'battle', '', '10000', 'Self', 'set', 'SelfAttribute.vertigo', '0', 0, '', '清除眩晕');
INSERT INTO `effect_data` VALUES (5, 'active', 'battle', '', '10000', 'Rival', 'reduce', 'RivalAttribute.hp', 'RivalAttribute.total_hp * (50 / 10000)', 5, '', '每秒扣血，总血量万分之50');
INSERT INTO `effect_data` VALUES (6, 'active', 'battle', '', '10000', 'Mate', 'add', 'MateAttribute.attack', 'MateAttribute.attack * 1.5', 3, '', '增加队友攻击50%');
INSERT INTO `effect_data` VALUES (7, 'active', 'battle', '', '10000', 'Mate', 'add', 'MateAttribute.defence', 'MateAttribute.defence * 1.5', 3, '', '增加队友防御50%');
INSERT INTO `effect_data` VALUES (8, 'active', 'battle', '', '10000', 'Self', 'add', 'Buff', '[1]', 0, '', '添加Buff');
INSERT INTO `effect_data` VALUES (9, 'active', 'user', '', '10000', 'Self', 'add', 'SelfAsset.copper', '1.5', 0, '', '增加150%铜币');
INSERT INTO `effect_data` VALUES (10, 'active', 'user', '', '10000', 'Self', 'add', 'SelfAsset.exp', '2', 0, '', '增加200%经验');

-- ----------------------------
-- Table structure for error_code_data
-- ----------------------------
DROP TABLE IF EXISTS `error_code_data`;
CREATE TABLE `error_code_data`  (
  `protocol` int(255) UNSIGNED NOT NULL DEFAULT 0 COMMENT '协议',
  `code` int(255) UNSIGNED NOT NULL DEFAULT 0 COMMENT '错误码',
  `content` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`protocol`, `code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '错误码配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of error_code_data
-- ----------------------------
INSERT INTO `error_code_data` VALUES (10001, 0, 'failed');
INSERT INTO `error_code_data` VALUES (10002, 2, 'length');
INSERT INTO `error_code_data` VALUES (10002, 3, 'asn1');
INSERT INTO `error_code_data` VALUES (10002, 4, 'sensitive');
INSERT INTO `error_code_data` VALUES (10002, 5, 'duplicate');

-- ----------------------------
-- Table structure for event_data
-- ----------------------------
DROP TABLE IF EXISTS `event_data`;
CREATE TABLE `event_data`  (
  `event_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '事件类型',
  `event_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '时间名',
  PRIMARY KEY (`event_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '事件配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event_data
-- ----------------------------
INSERT INTO `event_data` VALUES ('event_guild_join', '加入公会');
INSERT INTO `event_data` VALUES ('event_kill_monster', '杀怪');
INSERT INTO `event_data` VALUES ('event_level_upgrade', '升级');
INSERT INTO `event_data` VALUES ('event_pass_dungeon', '通关副本');
INSERT INTO `event_data` VALUES ('event_shop_buy', '商店购买');

-- ----------------------------
-- Table structure for fashion
-- ----------------------------
DROP TABLE IF EXISTS `fashion`;
CREATE TABLE `fashion`  (
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色id(select)',
  `fashion_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时装id',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时装状态(update_state)(update_time)',
  `score` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分(once)',
  `point` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分(update_point)',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '过期时间(update_time)',
  `list` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '列表',
  `string` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'string',
  `extra` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'extra',
  PRIMARY KEY (`role_id`, `fashion_id`) USING BTREE,
  INDEX `fashion_id`(`fashion_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色时装表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fashion_data
-- ----------------------------
DROP TABLE IF EXISTS `fashion_data`;
CREATE TABLE `fashion_data`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID',
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别,validate(`data_sex`.`sex`,`data_sex`.`name`)',
  `style` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '样式',
  INDEX `sex`(`sex`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '时装配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fashion_data
-- ----------------------------
INSERT INTO `fashion_data` VALUES (1, 1, 1);
INSERT INTO `fashion_data` VALUES (2, 2, 2);
INSERT INTO `fashion_data` VALUES (3, 0, 3);

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID(select)',
  `friend_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '好友ID,on(`role`.`role_id`)',
  `friend_name` char(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '好友名字,on(`role`.`role_name`)',
  `online` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '好友在线状态,on(`role`.`online`),default(0)',
  `state` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '友好状态,(1)=>好友, (2)=>黑名单 ',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标识(flag)',
  PRIMARY KEY (`role_id`, `friend_id`) USING BTREE,
  INDEX `friend_id`(`friend_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色好友表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES (1, 2, '', '', 1, 0, '');
INSERT INTO `friend` VALUES (2, 1, '', '', 1, 0, '');

-- ----------------------------
-- Table structure for guild
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild`  (
  `guild_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公会id',
  `guild_name` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字(update_name)',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间(once)',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '经验',
  `wealth` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '财富',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级(update_level)',
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '公告(update_notice)',
  `leader_id` char(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '会长id',
  `leader_name` char(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '会长名字',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标识(flag)',
  PRIMARY KEY (`guild_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公会表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild
-- ----------------------------
INSERT INTO `guild` VALUES (1, '1', 0, 0, 0, 0, '', '', '', '');
INSERT INTO `guild` VALUES (2, '2', 0, 0, 0, 0, '', '', '', '');

-- ----------------------------
-- Table structure for guild_apply
-- ----------------------------
DROP TABLE IF EXISTS `guild_apply`;
CREATE TABLE `guild_apply`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID,on(`role`.`role_id`)(delete_role)',
  `guild_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '公会ID(delete_guild)',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `role_name` char(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名,on(`role`.`role_name`)',
  `role_pid` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色Pid',
  `sender_pid` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色发送进程Pid',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标识(flag)',
  PRIMARY KEY (`role_id`, `guild_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公会申请表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_apply
-- ----------------------------
INSERT INTO `guild_apply` VALUES (3, 1, 0, '', '', '', '');
INSERT INTO `guild_apply` VALUES (3, 2, 0, '', '', '', '');
INSERT INTO `guild_apply` VALUES (4, 1, 0, '', '', '', '');
INSERT INTO `guild_apply` VALUES (5, 2, 0, '', '', '', '');

-- ----------------------------
-- Table structure for guild_role
-- ----------------------------
DROP TABLE IF EXISTS `guild_role`;
CREATE TABLE `guild_role`  (
  `guild_id` int(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '公会ID,on(`guild`.`guild_id`)(update_guild_id)',
  `role_id` int(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID,on(`role`.`role_id`)',
  `job` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '职位',
  `join_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '加入时间',
  `leave_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '离开时间',
  `guild_name` char(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '帮派名,on(`guild`.`guild_name`)',
  `role_name` char(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名,on(`role`.`role_name`)',
  `role_pid` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色Pid',
  `role_sender_pid` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色发送进程Pid',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标识(flag)',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公会角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_role
-- ----------------------------
INSERT INTO `guild_role` VALUES (1, 1, 1, 0, 0, '', '', '', '', '');
INSERT INTO `guild_role` VALUES (2, 2, 1, 0, 0, '', '', '', '', '');
INSERT INTO `guild_role` VALUES (0, 3, 0, 0, 0, '', '', '', '', '');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `unique_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一ID',
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色id(select)(once)',
  `item_id` int(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '物品id(once)',
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型',
  `amount` int(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '数量',
  `bind` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '绑定',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标识(flag)',
  PRIMARY KEY (`unique_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色物品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, 1, 1, 1, 1, 0, '');

-- ----------------------------
-- Table structure for item_consume_log
-- ----------------------------
DROP TABLE IF EXISTS `item_consume_log`;
CREATE TABLE `item_consume_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '物品ID',
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '来源',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `daily_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '零点时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '物品日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_data
-- ----------------------------
DROP TABLE IF EXISTS `item_data`;
CREATE TABLE `item_data`  (
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '物品id',
  `name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型',
  `overlap` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '叠加数',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '物品配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_data
-- ----------------------------
INSERT INTO `item_data` VALUES (1, '金币', 1, 1);
INSERT INTO `item_data` VALUES (2, '银币', 1, 1);
INSERT INTO `item_data` VALUES (3, '铜币', 1, 1);

-- ----------------------------
-- Table structure for item_log
-- ----------------------------
DROP TABLE IF EXISTS `item_log`;
CREATE TABLE `item_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '物品ID',
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '来源',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `daily_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '零点时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '物品日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_produce_log
-- ----------------------------
DROP TABLE IF EXISTS `item_produce_log`;
CREATE TABLE `item_produce_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '物品ID',
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '来源',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `daily_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '零点时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '物品日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for key
-- ----------------------------
DROP TABLE IF EXISTS `key`;
CREATE TABLE `key`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '码',
  PRIMARY KEY (`role_id`, `key`) USING BTREE,
  INDEX `key`(`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色激活码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for key_award_data
-- ----------------------------
DROP TABLE IF EXISTS `key_award_data`;
CREATE TABLE `key_award_data`  (
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型',
  `only` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '唯一',
  `award` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '奖励'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '激活码奖励配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of key_award_data
-- ----------------------------
INSERT INTO `key_award_data` VALUES (1, 0, '[{700001,1},{700002,2},{700003,3}]');
INSERT INTO `key_award_data` VALUES (2, 0, '[{700001,1},{700002,2},{700003,3}]');

-- ----------------------------
-- Table structure for key_data
-- ----------------------------
DROP TABLE IF EXISTS `key_data`;
CREATE TABLE `key_data`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '码',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型',
  PRIMARY KEY (`key`) USING BTREE,
  INDEX `key`(`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '激活码配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of key_data
-- ----------------------------
INSERT INTO `key_data` VALUES ('a8ardtxylvfqyyle', 1);
INSERT INTO `key_data` VALUES ('a9gcubps2yjctchv', 1);
INSERT INTO `key_data` VALUES ('aimayurrmcetztvn', 1);
INSERT INTO `key_data` VALUES ('b9brmtyp7chmwbdg', 1);
INSERT INTO `key_data` VALUES ('bbkmoihr3bczzues', 1);
INSERT INTO `key_data` VALUES ('bj0u3lpcaljkoj9o', 1);
INSERT INTO `key_data` VALUES ('blpiv3prm2eyhm3i', 1);
INSERT INTO `key_data` VALUES ('bmyvplydzdekmmwa', 1);
INSERT INTO `key_data` VALUES ('bseibu7ktqxff0tr', 1);
INSERT INTO `key_data` VALUES ('btsyfs0e2qiwnxzl', 1);
INSERT INTO `key_data` VALUES ('bvf71zwlasxmwhui', 1);
INSERT INTO `key_data` VALUES ('d0oxyasntgy6h1c7', 1);
INSERT INTO `key_data` VALUES ('dcav9xjajyrmacr9', 1);
INSERT INTO `key_data` VALUES ('ddupvxnqt22ynztc', 1);
INSERT INTO `key_data` VALUES ('diyqjmruhkkqavbg', 1);
INSERT INTO `key_data` VALUES ('dk3oxg9ckxwtv7sz', 1);
INSERT INTO `key_data` VALUES ('dschlymnv9paze3h', 1);
INSERT INTO `key_data` VALUES ('duj8w3t76afhmwfh', 1);
INSERT INTO `key_data` VALUES ('egc48o42frtkmawa', 1);
INSERT INTO `key_data` VALUES ('escg8lh4w1nkklj6', 1);
INSERT INTO `key_data` VALUES ('ewmdjvgdyns6cerw', 1);
INSERT INTO `key_data` VALUES ('eyanxqdursyon5eu', 1);
INSERT INTO `key_data` VALUES ('fmhilfvdwrtyovcb', 1);
INSERT INTO `key_data` VALUES ('ftj1vxepq4aa61tu', 1);
INSERT INTO `key_data` VALUES ('ftlguwfcpjy7nvnz', 1);
INSERT INTO `key_data` VALUES ('fzxjljsp4shp11ui', 1);
INSERT INTO `key_data` VALUES ('giapm1ezfkm0qzf1', 1);
INSERT INTO `key_data` VALUES ('gnrzcrwoimsrvlho', 1);
INSERT INTO `key_data` VALUES ('hmm4gpbb3kedqtbj', 1);
INSERT INTO `key_data` VALUES ('hovfvlem6ga4ltjg', 1);
INSERT INTO `key_data` VALUES ('hq7wjxyo5ce5zelw', 1);
INSERT INTO `key_data` VALUES ('hzdyhdnfzixcovhn', 1);
INSERT INTO `key_data` VALUES ('i1fmmw3odaxc5vmm', 1);
INSERT INTO `key_data` VALUES ('i59f46xstfsdpkid', 1);
INSERT INTO `key_data` VALUES ('ibh4qifm0hkxocrm', 1);
INSERT INTO `key_data` VALUES ('ibuxbhgmypzkr1go', 1);
INSERT INTO `key_data` VALUES ('ikvdulsft0lgpwcq', 1);
INSERT INTO `key_data` VALUES ('ipsnnqua4vh9arxd', 1);
INSERT INTO `key_data` VALUES ('iqp9vm1yfe9j9xm2', 1);
INSERT INTO `key_data` VALUES ('iy9vloj60g7dktye', 1);
INSERT INTO `key_data` VALUES ('jfvdenplsigotc6o', 1);
INSERT INTO `key_data` VALUES ('jsews1izondoeanq', 1);
INSERT INTO `key_data` VALUES ('ks5kpfsehjmwgjec', 1);
INSERT INTO `key_data` VALUES ('l0kifxz1ynjjc7vd', 1);
INSERT INTO `key_data` VALUES ('lfcjjenkdr0kjvi4', 1);
INSERT INTO `key_data` VALUES ('lradcq8nk99eidqi', 1);
INSERT INTO `key_data` VALUES ('luyn2mvuye94s0xr', 1);
INSERT INTO `key_data` VALUES ('lxru2igur17ydwks', 1);
INSERT INTO `key_data` VALUES ('mdyyxxhi34hpgsu5', 1);
INSERT INTO `key_data` VALUES ('mjiboc4uo6gcgoe6', 1);
INSERT INTO `key_data` VALUES ('mphmbgupepgwb8hi', 1);
INSERT INTO `key_data` VALUES ('mr60cidrgp0jeqtk', 1);
INSERT INTO `key_data` VALUES ('muzhboayjuttx3rs', 1);
INSERT INTO `key_data` VALUES ('nfi6lbfjbf6avd6l', 1);
INSERT INTO `key_data` VALUES ('ohvmmz4tvwkzidct', 1);
INSERT INTO `key_data` VALUES ('onqon5wfmbhjnj25', 1);
INSERT INTO `key_data` VALUES ('oxcelzrjaa8hlhza', 1);
INSERT INTO `key_data` VALUES ('pzprlhmckv690724', 1);
INSERT INTO `key_data` VALUES ('q23u1geceq7tjooo', 1);
INSERT INTO `key_data` VALUES ('qmjlpysp0zk2qsh6', 1);
INSERT INTO `key_data` VALUES ('qoidlze7wkldptwk', 1);
INSERT INTO `key_data` VALUES ('recl4rbowaywydbm', 1);
INSERT INTO `key_data` VALUES ('riqfwonvkyvb3rdz', 1);
INSERT INTO `key_data` VALUES ('rkqjcvyxjoeo3c6r', 1);
INSERT INTO `key_data` VALUES ('rr9wktgmzjr1akwn', 1);
INSERT INTO `key_data` VALUES ('rz3xa1hf2gclppk4', 1);
INSERT INTO `key_data` VALUES ('s83q3iqfxisjycfs', 1);
INSERT INTO `key_data` VALUES ('sassaih7jmxc2p4b', 1);
INSERT INTO `key_data` VALUES ('slxxs41pvtenebnv', 1);
INSERT INTO `key_data` VALUES ('sosllotfz3oqvw07', 1);
INSERT INTO `key_data` VALUES ('sslxxqbqdqnylrl0', 1);
INSERT INTO `key_data` VALUES ('stg9ve5nud8lizdw', 1);
INSERT INTO `key_data` VALUES ('swo35omvohqooz7l', 1);
INSERT INTO `key_data` VALUES ('tbdae69wkbxfvd4i', 1);
INSERT INTO `key_data` VALUES ('tdle5in5dqgp7hi9', 1);
INSERT INTO `key_data` VALUES ('tk7bcpmlrsdxfuea', 1);
INSERT INTO `key_data` VALUES ('tmzobf6x92y8qhxc', 1);
INSERT INTO `key_data` VALUES ('ucbjquwfe4lkidqi', 1);
INSERT INTO `key_data` VALUES ('ucbyzqgjwa2p2hjq', 1);
INSERT INTO `key_data` VALUES ('uorfmj7uerhvgqt7', 1);
INSERT INTO `key_data` VALUES ('urymqqgb6sk2zkgy', 1);
INSERT INTO `key_data` VALUES ('uyj1rfj8broypvpv', 1);
INSERT INTO `key_data` VALUES ('v28l34eblqbeczbp', 1);
INSERT INTO `key_data` VALUES ('v3j8q0n1hmub1jgt', 1);
INSERT INTO `key_data` VALUES ('vbzed8v34kmzkud6', 1);
INSERT INTO `key_data` VALUES ('vff2s6fpbaqyjhqe', 1);
INSERT INTO `key_data` VALUES ('vkdjbjxnptc2ny40', 1);
INSERT INTO `key_data` VALUES ('vkzk9aeq4mgfd8eo', 1);
INSERT INTO `key_data` VALUES ('w9crdeddwd9gjfow', 1);
INSERT INTO `key_data` VALUES ('wzysei8qu8vimk9p', 1);
INSERT INTO `key_data` VALUES ('x1qghnustruqgan0', 1);
INSERT INTO `key_data` VALUES ('xdkub7elcqigleua', 1);
INSERT INTO `key_data` VALUES ('y1frissbf8iyuanu', 1);
INSERT INTO `key_data` VALUES ('y7ortn34luquyrsh', 1);
INSERT INTO `key_data` VALUES ('yulmaiiqawn6edp3', 1);
INSERT INTO `key_data` VALUES ('yvf6ta32ea4w7sar', 1);
INSERT INTO `key_data` VALUES ('zdn9pe9cacpplqqq', 1);
INSERT INTO `key_data` VALUES ('zdq2uskl5abvi55d', 1);
INSERT INTO `key_data` VALUES ('zm9dypapkssxepff', 1);
INSERT INTO `key_data` VALUES ('ztxxcn817qkxspls', 1);

-- ----------------------------
-- Table structure for level_data
-- ----------------------------
DROP TABLE IF EXISTS `level_data`;
CREATE TABLE `level_data`  (
  `level` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '经验'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '等级配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of level_data
-- ----------------------------
INSERT INTO `level_data` VALUES (0, 100);
INSERT INTO `level_data` VALUES (1, 200);
INSERT INTO `level_data` VALUES (2, 300);
INSERT INTO `level_data` VALUES (3, 400);
INSERT INTO `level_data` VALUES (4, 500);
INSERT INTO `level_data` VALUES (5, 600);
INSERT INTO `level_data` VALUES (6, 700);
INSERT INTO `level_data` VALUES (7, 800);
INSERT INTO `level_data` VALUES (8, 900);
INSERT INTO `level_data` VALUES (9, 1000);

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail`  (
  `mail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '邮件ID',
  `sender_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发送者',
  `sender_nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '发送者昵称',
  `receiver_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '接收者(select)',
  `receiver_nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '接受者昵称',
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否已经读取(update_read)',
  `read_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '读取时间(update_read)',
  `receive_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '接收时间',
  `valid_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '有效时间',
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '来源',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '内容',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '附件',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标识(flag)',
  PRIMARY KEY (`mail_id`) USING BTREE,
  INDEX `receiver_id`(`receiver_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色邮件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail
-- ----------------------------
INSERT INTO `mail` VALUES (1, 0, '', 1, '1', 0, 0, 0, 0, '', '标题', '内容', '[{1,1},{2,2},{3,3}]', '');

-- ----------------------------
-- Table structure for node_data
-- ----------------------------
DROP TABLE IF EXISTS `node_data`;
CREATE TABLE `node_data`  (
  `server_node` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '游戏服节点',
  `server_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '游戏服名',
  `server_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '游戏服域名',
  `server_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '游戏服IP',
  `server_port` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '游戏服端口',
  `server_no` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '游戏服编号',
  `server_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务器类型',
  `center_node` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '中央服节点',
  `center_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '中央服名',
  `center_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '中央服域名',
  `center_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '中央服IP',
  `center_port` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '中央服端口',
  `center_no` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '中央服编号',
  PRIMARY KEY (`server_node`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '节点配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of node_data
-- ----------------------------
INSERT INTO `node_data` VALUES ('center', '跨服中心', '', '', 0, 101, 'center', '', '', '', '', 0, 0);
INSERT INTO `node_data` VALUES ('dev', '开发服', '', '', 0, 4, 'local', '', '跨服中心', '', '', 0, 0);
INSERT INTO `node_data` VALUES ('main', '主测服', '', '', 0, 1, 'local', 'center', '跨服中心', '', '', 0, 0);
INSERT INTO `node_data` VALUES ('stable', '稳定服', '', '', 0, 2, 'local', 'center', '跨服中心', '', '', 0, 0);
INSERT INTO `node_data` VALUES ('test', '测试服', '', '', 0, 3, 'local', 'center', '跨服中心', '', '', 0, 0);

-- ----------------------------
-- Table structure for parameter_data
-- ----------------------------
DROP TABLE IF EXISTS `parameter_data`;
CREATE TABLE `parameter_data`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数键',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数值',
  `description` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数名称',
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '游戏参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parameter_data
-- ----------------------------
INSERT INTO `parameter_data` VALUES ('{guild_create, 1}', '[{level, 10}, {vip, 0}, {gold, 0}]', '一级');
INSERT INTO `parameter_data` VALUES ('{guild_create, 2}', '[{level, 10}, {vip, 1}, {gold, 100}]', '二级');
INSERT INTO `parameter_data` VALUES ('{guild_create, cd}', '86400', '创建/加入冷却时间');
INSERT INTO `parameter_data` VALUES ('{guild_member, limit, 0}', '60', '人员数');
INSERT INTO `parameter_data` VALUES ('null', '', '');
INSERT INTO `parameter_data` VALUES ('test', '', '');

-- ----------------------------
-- Table structure for quest
-- ----------------------------
DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID(select)',
  `quest_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '任务ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组ID',
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '事件',
  `target` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '目标',
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '数量',
  `compare` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '比较',
  `progress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '进度',
  `award` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否领取奖励',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '额外(flag)',
  PRIMARY KEY (`role_id`, `quest_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色任务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest
-- ----------------------------
INSERT INTO `quest` VALUES (1, 1, 1, 'event_kill_monster', 0, 3, 'gte', '', 0, '');

-- ----------------------------
-- Table structure for quest_data
-- ----------------------------
DROP TABLE IF EXISTS `quest_data`;
CREATE TABLE `quest_data`  (
  `quest_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '任务ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组ID',
  `pre_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '前置任务',
  `next_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '后置任务',
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '事件,validate(`event_data`.`event_type`, `event_data`.`event_name`)',
  `target` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '目标',
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '数量',
  `compare` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '比较模式,validate(`compare_data`.`compare_type`, `compare_data`.`compare_name`)',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '条件',
  `progress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '进度',
  `award` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '奖励',
  `title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '内容',
  `description` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`quest_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '任务配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_data
-- ----------------------------
INSERT INTO `quest_data` VALUES (1, 1, 0, 2, 'event_kill_monster', 0, 3, 'gte', '[]', '[{quest_progress, event_kill_monster, 3, gt}]', '[{1,1}]', '', '', '');
INSERT INTO `quest_data` VALUES (2, 1, 1, 3, 'event_level_upgrade', 5, 1, 'gte', '[{copper, 100}]', '[{quest_progress, event_level_upgrade, 10, gt}]', '[{1,10}]', '', '', '');
INSERT INTO `quest_data` VALUES (3, 1, 2, 4, 'event_pass_dungeon', 100001, 1, 'gte', '[{level, 10}]', '[{quest_progress, event_dungeon, 5, gt}]', '[{1,100}]', '', '', '');
INSERT INTO `quest_data` VALUES (4, 1, 3, 5, 'event_shop_buy', 0, 1, 'nc', '[]', '[{quest_progress, event_shop_buy, 1, eq}]', '[{1,1000}]', '', '', '');
INSERT INTO `quest_data` VALUES (5, 1, 4, 0, 'event_guild_join', 0, 1, 'nc', '[]', '[{quest_progress, event_level_upgrade, 10, gt}]', '[{1,1000}]', '', '', '');

-- ----------------------------
-- Table structure for quest_log
-- ----------------------------
DROP TABLE IF EXISTS `quest_log`;
CREATE TABLE `quest_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `quest_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '任务ID',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `daily_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '零点时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '任务日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_progress_data
-- ----------------------------
DROP TABLE IF EXISTS `quest_progress_data`;
CREATE TABLE `quest_progress_data`  (
  `progress_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '进度ID',
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '事件',
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型',
  `expect` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排除类型',
  `value` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '数值',
  `compare` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '比较模式',
  PRIMARY KEY (`progress_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务进度配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rank
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank`  (
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型(select)',
  `rank` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排名',
  `key` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '键',
  `value` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '值',
  `time` int(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `name` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `other` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '附加数据',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标识(flag),default(1)',
  PRIMARY KEY (`type`, `rank`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色排行表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rank
-- ----------------------------
INSERT INTO `rank` VALUES (1, 1, 1, 1, 1, '1', '', '');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名(once)(update_name)',
  `account_id` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '账户ID(once)',
  `account_name` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '账户名(once)',
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `classes` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '职业',
  `item_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '普通背包大小',
  `bag_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '装备背包大小',
  `store_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '仓库背包大小',
  `server_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '服ID',
  `online` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否在线',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `role_name`(`role_name`) USING BTREE,
  UNIQUE INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '1', '1', '1', 1, 0, 1, 100, 100, 100, 0, 0);
INSERT INTO `role` VALUES (2, '2', '2', '2', 2, 0, 2, 100, 100, 100, 0, 0);
INSERT INTO `role` VALUES (3, '3', '3', '3', 3, 0, 3, 100, 100, 100, 0, 0);
INSERT INTO `role` VALUES (4, '4', '4', '4', 4, 0, 4, 100, 100, 100, 0, 0);
INSERT INTO `role` VALUES (5, '5', '5', '5', 5, 0, 5, 100, 100, 100, 0, 0);

-- ----------------------------
-- Table structure for role_log
-- ----------------------------
DROP TABLE IF EXISTS `role_log`;
CREATE TABLE `role_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '经验',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `daily_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '零点时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sensitive_word_data
-- ----------------------------
DROP TABLE IF EXISTS `sensitive_word_data`;
CREATE TABLE `sensitive_word_data`  (
  `word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '敏感词'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '敏感词配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sensitive_word_data
-- ----------------------------
INSERT INTO `sensitive_word_data` VALUES ('【】');
INSERT INTO `sensitive_word_data` VALUES ('毛泽东');
INSERT INTO `sensitive_word_data` VALUES ('周恩来');
INSERT INTO `sensitive_word_data` VALUES ('刘少奇');
INSERT INTO `sensitive_word_data` VALUES ('朱德');
INSERT INTO `sensitive_word_data` VALUES ('彭德怀');
INSERT INTO `sensitive_word_data` VALUES ('林彪');
INSERT INTO `sensitive_word_data` VALUES ('刘伯承');
INSERT INTO `sensitive_word_data` VALUES ('陈毅');
INSERT INTO `sensitive_word_data` VALUES ('贺龙');
INSERT INTO `sensitive_word_data` VALUES ('聂荣臻');
INSERT INTO `sensitive_word_data` VALUES ('徐向前');
INSERT INTO `sensitive_word_data` VALUES ('罗荣桓');
INSERT INTO `sensitive_word_data` VALUES ('叶剑英');
INSERT INTO `sensitive_word_data` VALUES ('李大钊');
INSERT INTO `sensitive_word_data` VALUES ('陈独秀');
INSERT INTO `sensitive_word_data` VALUES ('孙中山');
INSERT INTO `sensitive_word_data` VALUES ('孙文');
INSERT INTO `sensitive_word_data` VALUES ('孙逸仙');
INSERT INTO `sensitive_word_data` VALUES ('邓小平');
INSERT INTO `sensitive_word_data` VALUES ('陈云');
INSERT INTO `sensitive_word_data` VALUES ('江泽民');
INSERT INTO `sensitive_word_data` VALUES ('李鹏');
INSERT INTO `sensitive_word_data` VALUES ('朱镕基');
INSERT INTO `sensitive_word_data` VALUES ('李瑞环');
INSERT INTO `sensitive_word_data` VALUES ('尉健行');
INSERT INTO `sensitive_word_data` VALUES ('李岚清');
INSERT INTO `sensitive_word_data` VALUES ('胡锦涛');
INSERT INTO `sensitive_word_data` VALUES ('罗干');
INSERT INTO `sensitive_word_data` VALUES ('温家宝');
INSERT INTO `sensitive_word_data` VALUES ('吴邦国');
INSERT INTO `sensitive_word_data` VALUES ('曾庆红');
INSERT INTO `sensitive_word_data` VALUES ('贾庆林');
INSERT INTO `sensitive_word_data` VALUES ('黄菊');
INSERT INTO `sensitive_word_data` VALUES ('吴官正');
INSERT INTO `sensitive_word_data` VALUES ('李长春');
INSERT INTO `sensitive_word_data` VALUES ('吴仪');
INSERT INTO `sensitive_word_data` VALUES ('回良玉');
INSERT INTO `sensitive_word_data` VALUES ('曾培炎');
INSERT INTO `sensitive_word_data` VALUES ('周永康');
INSERT INTO `sensitive_word_data` VALUES ('曹刚川');
INSERT INTO `sensitive_word_data` VALUES ('唐家璇');
INSERT INTO `sensitive_word_data` VALUES ('华建敏');
INSERT INTO `sensitive_word_data` VALUES ('陈至立');
INSERT INTO `sensitive_word_data` VALUES ('陈良宇');
INSERT INTO `sensitive_word_data` VALUES ('张德江');
INSERT INTO `sensitive_word_data` VALUES ('张立昌');
INSERT INTO `sensitive_word_data` VALUES ('俞正声');
INSERT INTO `sensitive_word_data` VALUES ('王乐泉');
INSERT INTO `sensitive_word_data` VALUES ('刘云山');
INSERT INTO `sensitive_word_data` VALUES ('王刚');
INSERT INTO `sensitive_word_data` VALUES ('王兆国');
INSERT INTO `sensitive_word_data` VALUES ('刘淇');
INSERT INTO `sensitive_word_data` VALUES ('贺国强');
INSERT INTO `sensitive_word_data` VALUES ('郭伯雄');
INSERT INTO `sensitive_word_data` VALUES ('胡耀邦');
INSERT INTO `sensitive_word_data` VALUES ('王乐泉');
INSERT INTO `sensitive_word_data` VALUES ('王兆国');
INSERT INTO `sensitive_word_data` VALUES ('周永康');
INSERT INTO `sensitive_word_data` VALUES ('李登辉');
INSERT INTO `sensitive_word_data` VALUES ('连战');
INSERT INTO `sensitive_word_data` VALUES ('陈水扁');
INSERT INTO `sensitive_word_data` VALUES ('宋楚瑜');
INSERT INTO `sensitive_word_data` VALUES ('吕秀莲');
INSERT INTO `sensitive_word_data` VALUES ('郁慕明');
INSERT INTO `sensitive_word_data` VALUES ('蒋介石');
INSERT INTO `sensitive_word_data` VALUES ('蒋中正');
INSERT INTO `sensitive_word_data` VALUES ('蒋经国');
INSERT INTO `sensitive_word_data` VALUES ('马英九');
INSERT INTO `sensitive_word_data` VALUES ('吴帮国');
INSERT INTO `sensitive_word_data` VALUES ('无帮国');
INSERT INTO `sensitive_word_data` VALUES ('无邦国');
INSERT INTO `sensitive_word_data` VALUES ('无帮过');
INSERT INTO `sensitive_word_data` VALUES ('瘟家宝');
INSERT INTO `sensitive_word_data` VALUES ('假庆林');
INSERT INTO `sensitive_word_data` VALUES ('甲庆林');
INSERT INTO `sensitive_word_data` VALUES ('假青林');
INSERT INTO `sensitive_word_data` VALUES ('离长春');
INSERT INTO `sensitive_word_data` VALUES ('习远平');
INSERT INTO `sensitive_word_data` VALUES ('袭近平');
INSERT INTO `sensitive_word_data` VALUES ('李磕墙');
INSERT INTO `sensitive_word_data` VALUES ('贺过墙');
INSERT INTO `sensitive_word_data` VALUES ('和锅枪');
INSERT INTO `sensitive_word_data` VALUES ('粥永康');
INSERT INTO `sensitive_word_data` VALUES ('轴永康');
INSERT INTO `sensitive_word_data` VALUES ('肘永康');
INSERT INTO `sensitive_word_data` VALUES ('周健康');
INSERT INTO `sensitive_word_data` VALUES ('粥健康');
INSERT INTO `sensitive_word_data` VALUES ('周小康');
INSERT INTO `sensitive_word_data` VALUES ('姜异康');
INSERT INTO `sensitive_word_data` VALUES ('孙政才');
INSERT INTO `sensitive_word_data` VALUES ('令计划');
INSERT INTO `sensitive_word_data` VALUES ('陆昊');
INSERT INTO `sensitive_word_data` VALUES ('范长龙');
INSERT INTO `sensitive_word_data` VALUES ('许其亮');
INSERT INTO `sensitive_word_data` VALUES ('习近平');
INSERT INTO `sensitive_word_data` VALUES ('马凯');
INSERT INTO `sensitive_word_data` VALUES ('王岐山');
INSERT INTO `sensitive_word_data` VALUES ('王沪宁');
INSERT INTO `sensitive_word_data` VALUES ('刘云山');
INSERT INTO `sensitive_word_data` VALUES ('刘延东');
INSERT INTO `sensitive_word_data` VALUES ('刘奇葆');
INSERT INTO `sensitive_word_data` VALUES ('许其亮');
INSERT INTO `sensitive_word_data` VALUES ('孙春兰');
INSERT INTO `sensitive_word_data` VALUES ('孙政才');
INSERT INTO `sensitive_word_data` VALUES ('李克强');
INSERT INTO `sensitive_word_data` VALUES ('李建国');
INSERT INTO `sensitive_word_data` VALUES ('李源潮');
INSERT INTO `sensitive_word_data` VALUES ('汪洋');
INSERT INTO `sensitive_word_data` VALUES ('张春贤');
INSERT INTO `sensitive_word_data` VALUES ('张高丽');
INSERT INTO `sensitive_word_data` VALUES ('张德江');
INSERT INTO `sensitive_word_data` VALUES ('孟建柱');
INSERT INTO `sensitive_word_data` VALUES ('赵乐际');
INSERT INTO `sensitive_word_data` VALUES ('胡春华');
INSERT INTO `sensitive_word_data` VALUES ('俞正声');
INSERT INTO `sensitive_word_data` VALUES ('栗战书');
INSERT INTO `sensitive_word_data` VALUES ('郭金龙');
INSERT INTO `sensitive_word_data` VALUES ('韩正');
INSERT INTO `sensitive_word_data` VALUES ('刘奇葆');
INSERT INTO `sensitive_word_data` VALUES ('赵乐际');
INSERT INTO `sensitive_word_data` VALUES ('栗战书');
INSERT INTO `sensitive_word_data` VALUES ('杜青林');
INSERT INTO `sensitive_word_data` VALUES ('赵洪祝');
INSERT INTO `sensitive_word_data` VALUES ('杨晶');
INSERT INTO `sensitive_word_data` VALUES ('胡锦涛');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('        刘延东');
INSERT INTO `sensitive_word_data` VALUES ('李源潮');
INSERT INTO `sensitive_word_data` VALUES ('汪洋');
INSERT INTO `sensitive_word_data` VALUES ('张高丽');
INSERT INTO `sensitive_word_data` VALUES ('张德江');
INSERT INTO `sensitive_word_data` VALUES ('俞正声');
INSERT INTO `sensitive_word_data` VALUES ('徐才厚');
INSERT INTO `sensitive_word_data` VALUES ('郭伯雄');
INSERT INTO `sensitive_word_data` VALUES ('李鹏');
INSERT INTO `sensitive_word_data` VALUES ('万里');
INSERT INTO `sensitive_word_data` VALUES ('乔石');
INSERT INTO `sensitive_word_data` VALUES ('朱镕基');
INSERT INTO `sensitive_word_data` VALUES ('李瑞环');
INSERT INTO `sensitive_word_data` VALUES ('宋平');
INSERT INTO `sensitive_word_data` VALUES ('尉健行');
INSERT INTO `sensitive_word_data` VALUES ('李岚清');
INSERT INTO `sensitive_word_data` VALUES ('曾庆红');
INSERT INTO `sensitive_word_data` VALUES ('吴官正');
INSERT INTO `sensitive_word_data` VALUES ('罗干');
INSERT INTO `sensitive_word_data` VALUES ('范长龙');
INSERT INTO `sensitive_word_data` VALUES ('许其亮');
INSERT INTO `sensitive_word_data` VALUES ('何勇');
INSERT INTO `sensitive_word_data` VALUES ('令计划');
INSERT INTO `sensitive_word_data` VALUES ('王沪宁');
INSERT INTO `sensitive_word_data` VALUES ('于广洲');
INSERT INTO `sensitive_word_data` VALUES ('马凯');
INSERT INTO `sensitive_word_data` VALUES ('马飚');
INSERT INTO `sensitive_word_data` VALUES ('马兴瑞');
INSERT INTO `sensitive_word_data` VALUES ('马晓天');
INSERT INTO `sensitive_word_data` VALUES ('王君');
INSERT INTO `sensitive_word_data` VALUES ('王侠');
INSERT INTO `sensitive_word_data` VALUES ('王珉');
INSERT INTO `sensitive_word_data` VALUES ('王勇');
INSERT INTO `sensitive_word_data` VALUES ('王晨');
INSERT INTO `sensitive_word_data` VALUES ('王毅');
INSERT INTO `sensitive_word_data` VALUES ('王三运');
INSERT INTO `sensitive_word_data` VALUES ('王万宾');
INSERT INTO `sensitive_word_data` VALUES ('王玉普');
INSERT INTO `sensitive_word_data` VALUES ('王正伟');
INSERT INTO `sensitive_word_data` VALUES ('王东明');
INSERT INTO `sensitive_word_data` VALUES ('王光亚');
INSERT INTO `sensitive_word_data` VALUES ('王伟光');
INSERT INTO `sensitive_word_data` VALUES ('王安顺');
INSERT INTO `sensitive_word_data` VALUES ('王志刚');
INSERT INTO `sensitive_word_data` VALUES ('王岐山');
INSERT INTO `sensitive_word_data` VALUES ('王沪宁');
INSERT INTO `sensitive_word_data` VALUES ('王国生');
INSERT INTO `sensitive_word_data` VALUES ('王学军');
INSERT INTO `sensitive_word_data` VALUES ('王建平');
INSERT INTO `sensitive_word_data` VALUES ('王胜俊');
INSERT INTO `sensitive_word_data` VALUES ('王洪尧');
INSERT INTO `sensitive_word_data` VALUES ('王宪魁');
INSERT INTO `sensitive_word_data` VALUES ('王冠中');
INSERT INTO `sensitive_word_data` VALUES ('王家瑞');
INSERT INTO `sensitive_word_data` VALUES ('王教成');
INSERT INTO `sensitive_word_data` VALUES ('王新宪');
INSERT INTO `sensitive_word_data` VALUES ('王儒林');
INSERT INTO `sensitive_word_data` VALUES ('支树平');
INSERT INTO `sensitive_word_data` VALUES ('尤权');
INSERT INTO `sensitive_word_data` VALUES ('车俊');
INSERT INTO `sensitive_word_data` VALUES ('尹蔚民');
INSERT INTO `sensitive_word_data` VALUES ('巴音朝鲁');
INSERT INTO `sensitive_word_data` VALUES ('巴特尔');
INSERT INTO `sensitive_word_data` VALUES ('卢展工');
INSERT INTO `sensitive_word_data` VALUES ('叶小文');
INSERT INTO `sensitive_word_data` VALUES ('田中');
INSERT INTO `sensitive_word_data` VALUES ('田修思');
INSERT INTO `sensitive_word_data` VALUES ('白玛赤林');
INSERT INTO `sensitive_word_data` VALUES ('白春礼');
INSERT INTO `sensitive_word_data` VALUES ('令计划');
INSERT INTO `sensitive_word_data` VALUES ('吉炳轩');
INSERT INTO `sensitive_word_data` VALUES ('朱小丹');
INSERT INTO `sensitive_word_data` VALUES ('朱福熙');
INSERT INTO `sensitive_word_data` VALUES ('全哲洙');
INSERT INTO `sensitive_word_data` VALUES ('刘鹏');
INSERT INTO `sensitive_word_data` VALUES ('刘源');
INSERT INTO `sensitive_word_data` VALUES ('刘鹤');
INSERT INTO `sensitive_word_data` VALUES ('刘云山');
INSERT INTO `sensitive_word_data` VALUES ('刘亚洲');
INSERT INTO `sensitive_word_data` VALUES ('刘成军');
INSERT INTO `sensitive_word_data` VALUES ('刘伟平');
INSERT INTO `sensitive_word_data` VALUES ('刘延东');
INSERT INTO `sensitive_word_data` VALUES ('刘奇葆');
INSERT INTO `sensitive_word_data` VALUES ('刘晓江');
INSERT INTO `sensitive_word_data` VALUES ('刘家义');
INSERT INTO `sensitive_word_data` VALUES ('刘粤军');
INSERT INTO `sensitive_word_data` VALUES ('刘福连');
INSERT INTO `sensitive_word_data` VALUES ('许达哲');
INSERT INTO `sensitive_word_data` VALUES ('许其亮');
INSERT INTO `sensitive_word_data` VALUES ('许耀元');
INSERT INTO `sensitive_word_data` VALUES ('孙怀山');
INSERT INTO `sensitive_word_data` VALUES ('孙建国');
INSERT INTO `sensitive_word_data` VALUES ('孙春兰');
INSERT INTO `sensitive_word_data` VALUES ('孙政才');
INSERT INTO `sensitive_word_data` VALUES ('孙思敬');
INSERT INTO `sensitive_word_data` VALUES ('苏树林');
INSERT INTO `sensitive_word_data` VALUES ('杜青林');
INSERT INTO `sensitive_word_data` VALUES ('杜金才');
INSERT INTO `sensitive_word_data` VALUES ('杜恒岩');
INSERT INTO `sensitive_word_data` VALUES ('李伟');
INSERT INTO `sensitive_word_data` VALUES ('李斌');
INSERT INTO `sensitive_word_data` VALUES ('李从军');
INSERT INTO `sensitive_word_data` VALUES ('李东生');
INSERT INTO `sensitive_word_data` VALUES ('李立国');
INSERT INTO `sensitive_word_data` VALUES ('李纪恒');
INSERT INTO `sensitive_word_data` VALUES ('李克强');
INSERT INTO `sensitive_word_data` VALUES ('李学勇');
INSERT INTO `sensitive_word_data` VALUES ('李建华');
INSERT INTO `sensitive_word_data` VALUES ('李建国');
INSERT INTO `sensitive_word_data` VALUES ('李鸿忠');
INSERT INTO `sensitive_word_data` VALUES ('李源潮');
INSERT INTO `sensitive_word_data` VALUES ('杨晶');
INSERT INTO `sensitive_word_data` VALUES ('杨传堂');
INSERT INTO `sensitive_word_data` VALUES ('杨金山');
INSERT INTO `sensitive_word_data` VALUES ('杨栋梁');
INSERT INTO `sensitive_word_data` VALUES ('杨洁篪');
INSERT INTO `sensitive_word_data` VALUES ('杨焕宁');
INSERT INTO `sensitive_word_data` VALUES ('肖钢');
INSERT INTO `sensitive_word_data` VALUES ('肖捷');
INSERT INTO `sensitive_word_data` VALUES ('吴昌德');
INSERT INTO `sensitive_word_data` VALUES ('吴胜利');
INSERT INTO `sensitive_word_data` VALUES ('吴爱英');
INSERT INTO `sensitive_word_data` VALUES ('吴新雄');
INSERT INTO `sensitive_word_data` VALUES ('何毅亭');
INSERT INTO `sensitive_word_data` VALUES ('冷溶');
INSERT INTO `sensitive_word_data` VALUES ('汪洋');
INSERT INTO `sensitive_word_data` VALUES ('汪永清');
INSERT INTO `sensitive_word_data` VALUES ('沈跃跃');
INSERT INTO `sensitive_word_data` VALUES ('沈德咏');
INSERT INTO `sensitive_word_data` VALUES ('宋大涵');
INSERT INTO `sensitive_word_data` VALUES ('宋秀岩');
INSERT INTO `sensitive_word_data` VALUES ('张阳');
INSERT INTO `sensitive_word_data` VALUES ('张茅');
INSERT INTO `sensitive_word_data` VALUES ('张毅');
INSERT INTO `sensitive_word_data` VALUES ('张又侠');
INSERT INTO `sensitive_word_data` VALUES ('张仕波');
INSERT INTO `sensitive_word_data` VALUES ('张庆伟');
INSERT INTO `sensitive_word_data` VALUES ('张庆黎');
INSERT INTO `sensitive_word_data` VALUES ('张志军');
INSERT INTO `sensitive_word_data` VALUES ('张国清');
INSERT INTO `sensitive_word_data` VALUES ('张宝顺');
INSERT INTO `sensitive_word_data` VALUES ('张春贤');
INSERT INTO `sensitive_word_data` VALUES ('张高丽');
INSERT INTO `sensitive_word_data` VALUES ('张海阳');
INSERT INTO `sensitive_word_data` VALUES ('张裔炯');
INSERT INTO `sensitive_word_data` VALUES ('张德江');
INSERT INTO `sensitive_word_data` VALUES ('陆昊');
INSERT INTO `sensitive_word_data` VALUES ('陈希');
INSERT INTO `sensitive_word_data` VALUES ('陈雷');
INSERT INTO `sensitive_word_data` VALUES ('陈全国');
INSERT INTO `sensitive_word_data` VALUES ('陈求发');
INSERT INTO `sensitive_word_data` VALUES ('陈宝生');
INSERT INTO `sensitive_word_data` VALUES ('陈政高');
INSERT INTO `sensitive_word_data` VALUES ('陈敏尔');
INSERT INTO `sensitive_word_data` VALUES ('努尔·白克力');
INSERT INTO `sensitive_word_data` VALUES ('苗圩');
INSERT INTO `sensitive_word_data` VALUES ('林军');
INSERT INTO `sensitive_word_data` VALUES ('林左鸣');
INSERT INTO `sensitive_word_data` VALUES ('尚福林');
INSERT INTO `sensitive_word_data` VALUES ('罗志军');
INSERT INTO `sensitive_word_data` VALUES ('罗保铭');
INSERT INTO `sensitive_word_data` VALUES ('周济');
INSERT INTO `sensitive_word_data` VALUES ('周强');
INSERT INTO `sensitive_word_data` VALUES ('周本顺');
INSERT INTO `sensitive_word_data` VALUES ('周生贤');
INSERT INTO `sensitive_word_data` VALUES ('郑卫平');
INSERT INTO `sensitive_word_data` VALUES ('房峰辉');
INSERT INTO `sensitive_word_data` VALUES ('孟学农');
INSERT INTO `sensitive_word_data` VALUES ('孟建柱');
INSERT INTO `sensitive_word_data` VALUES ('项俊波');
INSERT INTO `sensitive_word_data` VALUES ('赵实');
INSERT INTO `sensitive_word_data` VALUES ('赵正永');
INSERT INTO `sensitive_word_data` VALUES ('赵乐际');
INSERT INTO `sensitive_word_data` VALUES ('赵克石');
INSERT INTO `sensitive_word_data` VALUES ('赵克志');
INSERT INTO `sensitive_word_data` VALUES ('赵宗岐');
INSERT INTO `sensitive_word_data` VALUES ('赵洪祝');
INSERT INTO `sensitive_word_data` VALUES ('胡泽君');
INSERT INTO `sensitive_word_data` VALUES ('胡春华');
INSERT INTO `sensitive_word_data` VALUES ('俞正声');
INSERT INTO `sensitive_word_data` VALUES ('姜大明');
INSERT INTO `sensitive_word_data` VALUES ('姜异康');
INSERT INTO `sensitive_word_data` VALUES ('骆惠宁');
INSERT INTO `sensitive_word_data` VALUES ('秦光荣');
INSERT INTO `sensitive_word_data` VALUES ('袁纯清');
INSERT INTO `sensitive_word_data` VALUES ('袁贵仁');
INSERT INTO `sensitive_word_data` VALUES ('耿惠昌');
INSERT INTO `sensitive_word_data` VALUES ('聂卫国');
INSERT INTO `sensitive_word_data` VALUES ('栗战书');
INSERT INTO `sensitive_word_data` VALUES ('贾廷安');
INSERT INTO `sensitive_word_data` VALUES ('夏宝龙');
INSERT INTO `sensitive_word_data` VALUES ('铁凝');
INSERT INTO `sensitive_word_data` VALUES ('徐守盛');
INSERT INTO `sensitive_word_data` VALUES ('徐绍史');
INSERT INTO `sensitive_word_data` VALUES ('徐粉林');
INSERT INTO `sensitive_word_data` VALUES ('高虎城');
INSERT INTO `sensitive_word_data` VALUES ('郭声琨');
INSERT INTO `sensitive_word_data` VALUES ('郭金龙');
INSERT INTO `sensitive_word_data` VALUES ('郭庚茂');
INSERT INTO `sensitive_word_data` VALUES ('郭树清');
INSERT INTO `sensitive_word_data` VALUES ('黄兴国');
INSERT INTO `sensitive_word_data` VALUES ('黄奇帆');
INSERT INTO `sensitive_word_data` VALUES ('黄树贤');
INSERT INTO `sensitive_word_data` VALUES ('曹建明');
INSERT INTO `sensitive_word_data` VALUES ('戚建国');
INSERT INTO `sensitive_word_data` VALUES ('常万全');
INSERT INTO `sensitive_word_data` VALUES ('鹿心社');
INSERT INTO `sensitive_word_data` VALUES ('彭勇');
INSERT INTO `sensitive_word_data` VALUES ('彭清华');
INSERT INTO `sensitive_word_data` VALUES ('蒋定之');
INSERT INTO `sensitive_word_data` VALUES ('蒋建国');
INSERT INTO `sensitive_word_data` VALUES ('蒋洁敏');
INSERT INTO `sensitive_word_data` VALUES ('韩正');
INSERT INTO `sensitive_word_data` VALUES ('韩长赋');
INSERT INTO `sensitive_word_data` VALUES ('焦焕成');
INSERT INTO `sensitive_word_data` VALUES ('谢伏瞻');
INSERT INTO `sensitive_word_data` VALUES ('强卫');
INSERT INTO `sensitive_word_data` VALUES ('楼继伟');
INSERT INTO `sensitive_word_data` VALUES ('解振华');
INSERT INTO `sensitive_word_data` VALUES ('褚益民');
INSERT INTO `sensitive_word_data` VALUES ('蔡武');
INSERT INTO `sensitive_word_data` VALUES ('蔡名照');
INSERT INTO `sensitive_word_data` VALUES ('蔡英挺');
INSERT INTO `sensitive_word_data` VALUES ('蔡赴朝');
INSERT INTO `sensitive_word_data` VALUES ('雒树刚');
INSERT INTO `sensitive_word_data` VALUES ('魏亮');
INSERT INTO `sensitive_word_data` VALUES ('魏凤和');
INSERT INTO `sensitive_word_data` VALUES ('于春生');
INSERT INTO `sensitive_word_data` VALUES ('马勇霞');
INSERT INTO `sensitive_word_data` VALUES ('王伟');
INSERT INTO `sensitive_word_data` VALUES ('王炜');
INSERT INTO `sensitive_word_data` VALUES ('王长河');
INSERT INTO `sensitive_word_data` VALUES ('王东峰');
INSERT INTO `sensitive_word_data` VALUES ('王立英');
INSERT INTO `sensitive_word_data` VALUES ('王仲田');
INSERT INTO `sensitive_word_data` VALUES ('王华庆');
INSERT INTO `sensitive_word_data` VALUES ('王会生');
INSERT INTO `sensitive_word_data` VALUES ('王岐山');
INSERT INTO `sensitive_word_data` VALUES ('王怀臣');
INSERT INTO `sensitive_word_data` VALUES ('王忠民');
INSERT INTO `sensitive_word_data` VALUES ('王和民');
INSERT INTO `sensitive_word_data` VALUES ('王宜林');
INSERT INTO `sensitive_word_data` VALUES ('王晓龙');
INSERT INTO `sensitive_word_data` VALUES ('王家胜');
INSERT INTO `sensitive_word_data` VALUES ('王宾宜');
INSERT INTO `sensitive_word_data` VALUES ('王森泰');
INSERT INTO `sensitive_word_data` VALUES ('王瑞生');
INSERT INTO `sensitive_word_data` VALUES ('丹珠昂奔');
INSERT INTO `sensitive_word_data` VALUES ('尹晋华');
INSERT INTO `sensitive_word_data` VALUES ('石生龙');
INSERT INTO `sensitive_word_data` VALUES ('叶青纯');
INSERT INTO `sensitive_word_data` VALUES ('申维辰');
INSERT INTO `sensitive_word_data` VALUES ('付建华');
INSERT INTO `sensitive_word_data` VALUES ('冯惠敏');
INSERT INTO `sensitive_word_data` VALUES ('宁高宁');
INSERT INTO `sensitive_word_data` VALUES ('弘强');
INSERT INTO `sensitive_word_data` VALUES ('曲青山');
INSERT INTO `sensitive_word_data` VALUES ('曲淑辉');
INSERT INTO `sensitive_word_data` VALUES ('吕建成');
INSERT INTO `sensitive_word_data` VALUES ('任泽民');
INSERT INTO `sensitive_word_data` VALUES ('多杰热旦');
INSERT INTO `sensitive_word_data` VALUES ('刘滨');
INSERT INTO `sensitive_word_data` VALUES ('刘长银');
INSERT INTO `sensitive_word_data` VALUES ('刘生杰');
INSERT INTO `sensitive_word_data` VALUES ('刘向松');
INSERT INTO `sensitive_word_data` VALUES ('刘金国');
INSERT INTO `sensitive_word_data` VALUES ('刘建华');
INSERT INTO `sensitive_word_data` VALUES ('　刘晓滨');
INSERT INTO `sensitive_word_data` VALUES ('刘赐贵');
INSERT INTO `sensitive_word_data` VALUES ('江必新');
INSERT INTO `sensitive_word_data` VALUES ('安立敏');
INSERT INTO `sensitive_word_data` VALUES ('苏波');
INSERT INTO `sensitive_word_data` VALUES ('杜金才');
INSERT INTO `sensitive_word_data` VALUES ('杜金富');
INSERT INTO `sensitive_word_data` VALUES ('李宁');
INSERT INTO `sensitive_word_data` VALUES ('李刚');
INSERT INTO `sensitive_word_data` VALUES ('李熙');
INSERT INTO `sensitive_word_data` VALUES ('李五四');
INSERT INTO `sensitive_word_data` VALUES ('李书磊');
INSERT INTO `sensitive_word_data` VALUES ('李玉赋');
INSERT INTO `sensitive_word_data` VALUES ('李兆前');
INSERT INTO `sensitive_word_data` VALUES ('李法泉');
INSERT INTO `sensitive_word_data` VALUES ('李建波');
INSERT INTO `sensitive_word_data` VALUES ('李适时');
INSERT INTO `sensitive_word_data` VALUES ('李秋芳');
INSERT INTO `sensitive_word_data` VALUES ('李家祥');
INSERT INTO `sensitive_word_data` VALUES ('杨立顺');
INSERT INTO `sensitive_word_data` VALUES ('杨志今');
INSERT INTO `sensitive_word_data` VALUES ('杨明生');
INSERT INTO `sensitive_word_data` VALUES ('杨晓渡');
INSERT INTO `sensitive_word_data` VALUES ('肖亚庆');
INSERT INTO `sensitive_word_data` VALUES ('吴刚');
INSERT INTO `sensitive_word_data` VALUES ('吴玉良');
INSERT INTO `sensitive_word_data` VALUES ('吴杰明');
INSERT INTO `sensitive_word_data` VALUES ('岑旭');
INSERT INTO `sensitive_word_data` VALUES ('邱学强');
INSERT INTO `sensitive_word_data` VALUES ('何平');
INSERT INTO `sensitive_word_data` VALUES ('余欣荣');
INSERT INTO `sensitive_word_data` VALUES ('辛维光　汪民');
INSERT INTO `sensitive_word_data` VALUES ('宋明昌');
INSERT INTO `sensitive_word_data` VALUES ('宋爱荣');
INSERT INTO `sensitive_word_data` VALUES ('宋璇涛');
INSERT INTO `sensitive_word_data` VALUES ('张力');
INSERT INTO `sensitive_word_data` VALUES ('张军');
INSERT INTO `sensitive_word_data` VALUES ('张勇');
INSERT INTO `sensitive_word_data` VALUES ('张立军');
INSERT INTO `sensitive_word_data` VALUES ('张纪南');
INSERT INTO `sensitive_word_data` VALUES ('张昌平');
INSERT INTO `sensitive_word_data` VALUES ('张晓兰');
INSERT INTO `sensitive_word_data` VALUES ('　张晓刚');
INSERT INTO `sensitive_word_data` VALUES ('陈伦');
INSERT INTO `sensitive_word_data` VALUES ('陈大卫');
INSERT INTO `sensitive_word_data` VALUES ('陈文清');
INSERT INTO `sensitive_word_data` VALUES ('陈训秋');
INSERT INTO `sensitive_word_data` VALUES ('陈建民');
INSERT INTO `sensitive_word_data` VALUES ('陈绪国');
INSERT INTO `sensitive_word_data` VALUES ('陈新权');
INSERT INTO `sensitive_word_data` VALUES ('苗华');
INSERT INTO `sensitive_word_data` VALUES ('金书波');
INSERT INTO `sensitive_word_data` VALUES ('周英');
INSERT INTO `sensitive_word_data` VALUES ('周泽民');
INSERT INTO `sensitive_word_data` VALUES ('周福启');
INSERT INTO `sensitive_word_data` VALUES ('郑国光');
INSERT INTO `sensitive_word_data` VALUES ('赵洪祝');
INSERT INTO `sensitive_word_data` VALUES ('胡玉敏');
INSERT INTO `sensitive_word_data` VALUES ('胡问鸣');
INSERT INTO `sensitive_word_data` VALUES ('侯凯');
INSERT INTO `sensitive_word_data` VALUES ('侯长安');
INSERT INTO `sensitive_word_data` VALUES ('侯贺华');
INSERT INTO `sensitive_word_data` VALUES ('俞贵麟');
INSERT INTO `sensitive_word_data` VALUES ('姚增科');
INSERT INTO `sensitive_word_data` VALUES ('袁彦鹏');
INSERT INTO `sensitive_word_data` VALUES ('耿文清');
INSERT INTO `sensitive_word_data` VALUES ('耿燎原');
INSERT INTO `sensitive_word_data` VALUES ('柴绍良');
INSERT INTO `sensitive_word_data` VALUES ('徐敬业');
INSERT INTO `sensitive_word_data` VALUES ('郭永平');
INSERT INTO `sensitive_word_data` VALUES ('郭向远');
INSERT INTO `sensitive_word_data` VALUES ('黄先耀');
INSERT INTO `sensitive_word_data` VALUES ('黄建国');
INSERT INTO `sensitive_word_data` VALUES ('黄建盛');
INSERT INTO `sensitive_word_data` VALUES ('黄树贤');
INSERT INTO `sensitive_word_data` VALUES ('黄晓薇');
INSERT INTO `sensitive_word_data` VALUES ('黄殿中');
INSERT INTO `sensitive_word_data` VALUES ('曹培玺');
INSERT INTO `sensitive_word_data` VALUES ('崔少鹏');
INSERT INTO `sensitive_word_data` VALUES ('梁滨');
INSERT INTO `sensitive_word_data` VALUES ('董力');
INSERT INTO `sensitive_word_data` VALUES ('韩亨林');
INSERT INTO `sensitive_word_data` VALUES ('谢杭生');
INSERT INTO `sensitive_word_data` VALUES ('谢国明');
INSERT INTO `sensitive_word_data` VALUES ('　强卫东');
INSERT INTO `sensitive_word_data` VALUES ('臧献甫');
INSERT INTO `sensitive_word_data` VALUES ('熊维平');
INSERT INTO `sensitive_word_data` VALUES ('黎晓宏');
INSERT INTO `sensitive_word_data` VALUES ('布什');
INSERT INTO `sensitive_word_data` VALUES ('布莱尔');
INSERT INTO `sensitive_word_data` VALUES ('小泉');
INSERT INTO `sensitive_word_data` VALUES ('纯一郎');
INSERT INTO `sensitive_word_data` VALUES ('萨马兰奇');
INSERT INTO `sensitive_word_data` VALUES ('安南');
INSERT INTO `sensitive_word_data` VALUES ('阿拉法特');
INSERT INTO `sensitive_word_data` VALUES ('普京');
INSERT INTO `sensitive_word_data` VALUES ('默克尔');
INSERT INTO `sensitive_word_data` VALUES ('克林顿');
INSERT INTO `sensitive_word_data` VALUES ('里根');
INSERT INTO `sensitive_word_data` VALUES ('尼克松');
INSERT INTO `sensitive_word_data` VALUES ('林肯');
INSERT INTO `sensitive_word_data` VALUES ('杜鲁门');
INSERT INTO `sensitive_word_data` VALUES ('赫鲁晓夫');
INSERT INTO `sensitive_word_data` VALUES ('列宁');
INSERT INTO `sensitive_word_data` VALUES ('斯大林');
INSERT INTO `sensitive_word_data` VALUES ('马克思');
INSERT INTO `sensitive_word_data` VALUES ('恩格斯');
INSERT INTO `sensitive_word_data` VALUES ('金正日');
INSERT INTO `sensitive_word_data` VALUES ('金日成');
INSERT INTO `sensitive_word_data` VALUES ('萨达姆');
INSERT INTO `sensitive_word_data` VALUES ('胡志明');
INSERT INTO `sensitive_word_data` VALUES ('西哈努克');
INSERT INTO `sensitive_word_data` VALUES ('希拉克');
INSERT INTO `sensitive_word_data` VALUES ('撒切尔');
INSERT INTO `sensitive_word_data` VALUES ('阿罗约');
INSERT INTO `sensitive_word_data` VALUES ('曼德拉');
INSERT INTO `sensitive_word_data` VALUES ('卡斯特罗');
INSERT INTO `sensitive_word_data` VALUES ('富兰克林');
INSERT INTO `sensitive_word_data` VALUES ('华盛顿');
INSERT INTO `sensitive_word_data` VALUES ('艾森豪威尔');
INSERT INTO `sensitive_word_data` VALUES ('拿破仑');
INSERT INTO `sensitive_word_data` VALUES ('亚历山大');
INSERT INTO `sensitive_word_data` VALUES ('路易');
INSERT INTO `sensitive_word_data` VALUES ('鲍威尔');
INSERT INTO `sensitive_word_data` VALUES ('奥巴马');
INSERT INTO `sensitive_word_data` VALUES ('本拉登');
INSERT INTO `sensitive_word_data` VALUES ('奥马尔');
INSERT INTO `sensitive_word_data` VALUES ('柴玲');
INSERT INTO `sensitive_word_data` VALUES ('达赖喇嘛');
INSERT INTO `sensitive_word_data` VALUES ('江青');
INSERT INTO `sensitive_word_data` VALUES ('张春桥');
INSERT INTO `sensitive_word_data` VALUES ('姚文元');
INSERT INTO `sensitive_word_data` VALUES ('王洪文');
INSERT INTO `sensitive_word_data` VALUES ('东条英机');
INSERT INTO `sensitive_word_data` VALUES ('希特勒');
INSERT INTO `sensitive_word_data` VALUES ('墨索里尼');
INSERT INTO `sensitive_word_data` VALUES ('冈村秀树');
INSERT INTO `sensitive_word_data` VALUES ('冈村宁次');
INSERT INTO `sensitive_word_data` VALUES ('高丽朴');
INSERT INTO `sensitive_word_data` VALUES ('赵紫阳');
INSERT INTO `sensitive_word_data` VALUES ('王丹');
INSERT INTO `sensitive_word_data` VALUES ('沃尔开西');
INSERT INTO `sensitive_word_data` VALUES ('李洪志');
INSERT INTO `sensitive_word_data` VALUES ('李大师');
INSERT INTO `sensitive_word_data` VALUES ('赖昌星');
INSERT INTO `sensitive_word_data` VALUES ('马加爵');
INSERT INTO `sensitive_word_data` VALUES ('班禅');
INSERT INTO `sensitive_word_data` VALUES ('额尔德尼');
INSERT INTO `sensitive_word_data` VALUES ('山本五十六');
INSERT INTO `sensitive_word_data` VALUES ('阿扁');
INSERT INTO `sensitive_word_data` VALUES ('阿扁万岁');
INSERT INTO `sensitive_word_data` VALUES ('热那亚');
INSERT INTO `sensitive_word_data` VALUES ('热比娅');
INSERT INTO `sensitive_word_data` VALUES ('六四');
INSERT INTO `sensitive_word_data` VALUES ('六四运动');
INSERT INTO `sensitive_word_data` VALUES ('美国之音');
INSERT INTO `sensitive_word_data` VALUES ('密宗');
INSERT INTO `sensitive_word_data` VALUES ('民国');
INSERT INTO `sensitive_word_data` VALUES ('民进党');
INSERT INTO `sensitive_word_data` VALUES ('民运');
INSERT INTO `sensitive_word_data` VALUES ('民主');
INSERT INTO `sensitive_word_data` VALUES ('民主潮');
INSERT INTO `sensitive_word_data` VALUES ('摩门教');
INSERT INTO `sensitive_word_data` VALUES ('纳粹');
INSERT INTO `sensitive_word_data` VALUES ('南华早报');
INSERT INTO `sensitive_word_data` VALUES ('南蛮');
INSERT INTO `sensitive_word_data` VALUES ('明慧网');
INSERT INTO `sensitive_word_data` VALUES ('起义');
INSERT INTO `sensitive_word_data` VALUES ('亲民党');
INSERT INTO `sensitive_word_data` VALUES ('瘸腿帮');
INSERT INTO `sensitive_word_data` VALUES ('人民报');
INSERT INTO `sensitive_word_data` VALUES ('法轮功');
INSERT INTO `sensitive_word_data` VALUES ('　✪☸龘☎☂♞☪');
INSERT INTO `sensitive_word_data` VALUES ('打倒共产党');
INSERT INTO `sensitive_word_data` VALUES ('台独万岁');
INSERT INTO `sensitive_word_data` VALUES ('圣战');
INSERT INTO `sensitive_word_data` VALUES ('示威');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('台独分子');
INSERT INTO `sensitive_word_data` VALUES ('台联');
INSERT INTO `sensitive_word_data` VALUES ('台湾民国');
INSERT INTO `sensitive_word_data` VALUES ('台湾岛国');
INSERT INTO `sensitive_word_data` VALUES ('台湾国');
INSERT INTO `sensitive_word_data` VALUES ('台湾独立');
INSERT INTO `sensitive_word_data` VALUES ('太子党');
INSERT INTO `sensitive_word_data` VALUES ('天安门事件');
INSERT INTO `sensitive_word_data` VALUES ('屠杀');
INSERT INTO `sensitive_word_data` VALUES ('小泉');
INSERT INTO `sensitive_word_data` VALUES ('新党');
INSERT INTO `sensitive_word_data` VALUES ('新疆独立');
INSERT INTO `sensitive_word_data` VALUES ('新疆分裂');
INSERT INTO `sensitive_word_data` VALUES ('新疆国');
INSERT INTO `sensitive_word_data` VALUES ('疆独');
INSERT INTO `sensitive_word_data` VALUES ('西藏独立');
INSERT INTO `sensitive_word_data` VALUES ('西藏分裂');
INSERT INTO `sensitive_word_data` VALUES ('西藏国');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('藏青会');
INSERT INTO `sensitive_word_data` VALUES ('藏妇会');
INSERT INTO `sensitive_word_data` VALUES ('学潮');
INSERT INTO `sensitive_word_data` VALUES ('学运');
INSERT INTO `sensitive_word_data` VALUES ('一党专政');
INSERT INTO `sensitive_word_data` VALUES ('一中一台');
INSERT INTO `sensitive_word_data` VALUES ('两个中国');
INSERT INTO `sensitive_word_data` VALUES ('一贯道');
INSERT INTO `sensitive_word_data` VALUES ('游行');
INSERT INTO `sensitive_word_data` VALUES ('造反');
INSERT INTO `sensitive_word_data` VALUES ('真善忍');
INSERT INTO `sensitive_word_data` VALUES ('镇压');
INSERT INTO `sensitive_word_data` VALUES ('政变');
INSERT INTO `sensitive_word_data` VALUES ('政治');
INSERT INTO `sensitive_word_data` VALUES ('政治反对派');
INSERT INTO `sensitive_word_data` VALUES ('政治犯');
INSERT INTO `sensitive_word_data` VALUES ('中共');
INSERT INTO `sensitive_word_data` VALUES ('共产党');
INSERT INTO `sensitive_word_data` VALUES ('反党');
INSERT INTO `sensitive_word_data` VALUES ('反共');
INSERT INTO `sensitive_word_data` VALUES ('政府');
INSERT INTO `sensitive_word_data` VALUES ('民主党');
INSERT INTO `sensitive_word_data` VALUES ('中国之春');
INSERT INTO `sensitive_word_data` VALUES ('转法轮');
INSERT INTO `sensitive_word_data` VALUES ('自焚');
INSERT INTO `sensitive_word_data` VALUES ('共党');
INSERT INTO `sensitive_word_data` VALUES ('共匪');
INSERT INTO `sensitive_word_data` VALUES ('苏家屯');
INSERT INTO `sensitive_word_data` VALUES ('基地组织');
INSERT INTO `sensitive_word_data` VALUES ('塔利班');
INSERT INTO `sensitive_word_data` VALUES ('东亚病夫');
INSERT INTO `sensitive_word_data` VALUES ('支那');
INSERT INTO `sensitive_word_data` VALUES ('高治联');
INSERT INTO `sensitive_word_data` VALUES ('高自联');
INSERT INTO `sensitive_word_data` VALUES ('专政');
INSERT INTO `sensitive_word_data` VALUES ('专制');
INSERT INTO `sensitive_word_data` VALUES ('世界维吾尔大会');
INSERT INTO `sensitive_word_data` VALUES ('核工业基地');
INSERT INTO `sensitive_word_data` VALUES ('核武器');
INSERT INTO `sensitive_word_data` VALUES ('铀');
INSERT INTO `sensitive_word_data` VALUES ('原子弹');
INSERT INTO `sensitive_word_data` VALUES ('氢弹');
INSERT INTO `sensitive_word_data` VALUES ('导弹');
INSERT INTO `sensitive_word_data` VALUES ('核潜艇');
INSERT INTO `sensitive_word_data` VALUES ('大参考');
INSERT INTO `sensitive_word_data` VALUES ('小参考');
INSERT INTO `sensitive_word_data` VALUES ('国内动态清样');
INSERT INTO `sensitive_word_data` VALUES ('多维');
INSERT INTO `sensitive_word_data` VALUES ('河殇');
INSERT INTO `sensitive_word_data` VALUES ('摩门教');
INSERT INTO `sensitive_word_data` VALUES ('穆罕默德');
INSERT INTO `sensitive_word_data` VALUES ('圣战');
INSERT INTO `sensitive_word_data` VALUES ('耶和华');
INSERT INTO `sensitive_word_data` VALUES ('耶稣');
INSERT INTO `sensitive_word_data` VALUES ('伊斯兰');
INSERT INTO `sensitive_word_data` VALUES ('真主安拉');
INSERT INTO `sensitive_word_data` VALUES ('白莲教');
INSERT INTO `sensitive_word_data` VALUES ('天主教');
INSERT INTO `sensitive_word_data` VALUES ('基督教');
INSERT INTO `sensitive_word_data` VALUES ('东正教');
INSERT INTO `sensitive_word_data` VALUES ('占中');
INSERT INTO `sensitive_word_data` VALUES ('占领中环');
INSERT INTO `sensitive_word_data` VALUES ('八一');
INSERT INTO `sensitive_word_data` VALUES ('七宗罪');
INSERT INTO `sensitive_word_data` VALUES ('中国大法');
INSERT INTO `sensitive_word_data` VALUES ('法轮');
INSERT INTO `sensitive_word_data` VALUES ('法轮功');
INSERT INTO `sensitive_word_data` VALUES ('瘸腿帮');
INSERT INTO `sensitive_word_data` VALUES ('真理教');
INSERT INTO `sensitive_word_data` VALUES ('真善忍');
INSERT INTO `sensitive_word_data` VALUES ('转法轮');
INSERT INTO `sensitive_word_data` VALUES ('自焚');
INSERT INTO `sensitive_word_data` VALUES ('走向圆满');
INSERT INTO `sensitive_word_data` VALUES ('黄大仙');
INSERT INTO `sensitive_word_data` VALUES ('跳大神');
INSERT INTO `sensitive_word_data` VALUES ('神汉');
INSERT INTO `sensitive_word_data` VALUES ('神婆');
INSERT INTO `sensitive_word_data` VALUES ('真理教');
INSERT INTO `sensitive_word_data` VALUES ('大卫教');
INSERT INTO `sensitive_word_data` VALUES ('阎王');
INSERT INTO `sensitive_word_data` VALUES ('黑白无常');
INSERT INTO `sensitive_word_data` VALUES ('牛头马面');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('高丽棒子');
INSERT INTO `sensitive_word_data` VALUES ('疆独');
INSERT INTO `sensitive_word_data` VALUES ('蒙古鞑子');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('台独分子');
INSERT INTO `sensitive_word_data` VALUES ('台联');
INSERT INTO `sensitive_word_data` VALUES ('台湾民国');
INSERT INTO `sensitive_word_data` VALUES ('西藏独立');
INSERT INTO `sensitive_word_data` VALUES ('新疆独立');
INSERT INTO `sensitive_word_data` VALUES ('南蛮');
INSERT INTO `sensitive_word_data` VALUES ('老毛子');
INSERT INTO `sensitive_word_data` VALUES ('回民吃猪肉');
INSERT INTO `sensitive_word_data` VALUES ('谋杀');
INSERT INTO `sensitive_word_data` VALUES ('杀人');
INSERT INTO `sensitive_word_data` VALUES ('吸毒');
INSERT INTO `sensitive_word_data` VALUES ('贩毒');
INSERT INTO `sensitive_word_data` VALUES ('赌博');
INSERT INTO `sensitive_word_data` VALUES ('拐卖');
INSERT INTO `sensitive_word_data` VALUES ('走私');
INSERT INTO `sensitive_word_data` VALUES ('卖淫');
INSERT INTO `sensitive_word_data` VALUES ('造反');
INSERT INTO `sensitive_word_data` VALUES ('强奸');
INSERT INTO `sensitive_word_data` VALUES ('轮奸');
INSERT INTO `sensitive_word_data` VALUES ('抢劫');
INSERT INTO `sensitive_word_data` VALUES ('先奸后杀');
INSERT INTO `sensitive_word_data` VALUES ('下注');
INSERT INTO `sensitive_word_data` VALUES ('抽头');
INSERT INTO `sensitive_word_data` VALUES ('坐庄');
INSERT INTO `sensitive_word_data` VALUES ('赌马');
INSERT INTO `sensitive_word_data` VALUES ('赌球');
INSERT INTO `sensitive_word_data` VALUES ('筹码');
INSERT INTO `sensitive_word_data` VALUES ('老虎机');
INSERT INTO `sensitive_word_data` VALUES ('轮盘赌');
INSERT INTO `sensitive_word_data` VALUES ('安非他命');
INSERT INTO `sensitive_word_data` VALUES ('大麻');
INSERT INTO `sensitive_word_data` VALUES ('可卡因');
INSERT INTO `sensitive_word_data` VALUES ('海洛因');
INSERT INTO `sensitive_word_data` VALUES ('冰毒');
INSERT INTO `sensitive_word_data` VALUES ('摇头丸');
INSERT INTO `sensitive_word_data` VALUES ('杜冷丁');
INSERT INTO `sensitive_word_data` VALUES ('鸦片');
INSERT INTO `sensitive_word_data` VALUES ('罂粟');
INSERT INTO `sensitive_word_data` VALUES ('迷幻药');
INSERT INTO `sensitive_word_data` VALUES ('白粉');
INSERT INTO `sensitive_word_data` VALUES ('嗑药');
INSERT INTO `sensitive_word_data` VALUES ('吸毒');
INSERT INTO `sensitive_word_data` VALUES ('AIDS');
INSERT INTO `sensitive_word_data` VALUES ('aids');
INSERT INTO `sensitive_word_data` VALUES ('Aids');
INSERT INTO `sensitive_word_data` VALUES ('DICK');
INSERT INTO `sensitive_word_data` VALUES ('dick');
INSERT INTO `sensitive_word_data` VALUES ('Dick');
INSERT INTO `sensitive_word_data` VALUES ('penis');
INSERT INTO `sensitive_word_data` VALUES ('sex');
INSERT INTO `sensitive_word_data` VALUES ('SM');
INSERT INTO `sensitive_word_data` VALUES ('屙');
INSERT INTO `sensitive_word_data` VALUES ('爱滋');
INSERT INTO `sensitive_word_data` VALUES ('淋病');
INSERT INTO `sensitive_word_data` VALUES ('梅毒');
INSERT INTO `sensitive_word_data` VALUES ('爱液');
INSERT INTO `sensitive_word_data` VALUES ('屄');
INSERT INTO `sensitive_word_data` VALUES ('逼');
INSERT INTO `sensitive_word_data` VALUES ('臭机八');
INSERT INTO `sensitive_word_data` VALUES ('臭鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('吹喇叭');
INSERT INTO `sensitive_word_data` VALUES ('吹箫');
INSERT INTO `sensitive_word_data` VALUES ('催情药');
INSERT INTO `sensitive_word_data` VALUES ('屌');
INSERT INTO `sensitive_word_data` VALUES ('肛交');
INSERT INTO `sensitive_word_data` VALUES ('肛门');
INSERT INTO `sensitive_word_data` VALUES ('龟头');
INSERT INTO `sensitive_word_data` VALUES ('黄色');
INSERT INTO `sensitive_word_data` VALUES ('机八');
INSERT INTO `sensitive_word_data` VALUES ('机巴');
INSERT INTO `sensitive_word_data` VALUES ('鸡八');
INSERT INTO `sensitive_word_data` VALUES ('鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('机掰');
INSERT INTO `sensitive_word_data` VALUES ('机巴');
INSERT INTO `sensitive_word_data` VALUES ('鸡叭');
INSERT INTO `sensitive_word_data` VALUES ('鸡鸡');
INSERT INTO `sensitive_word_data` VALUES ('鸡掰');
INSERT INTO `sensitive_word_data` VALUES ('鸡奸');
INSERT INTO `sensitive_word_data` VALUES ('妓女');
INSERT INTO `sensitive_word_data` VALUES ('奸');
INSERT INTO `sensitive_word_data` VALUES ('茎');
INSERT INTO `sensitive_word_data` VALUES ('精液');
INSERT INTO `sensitive_word_data` VALUES ('精子');
INSERT INTO `sensitive_word_data` VALUES ('尻');
INSERT INTO `sensitive_word_data` VALUES ('口交');
INSERT INTO `sensitive_word_data` VALUES ('滥交');
INSERT INTO `sensitive_word_data` VALUES ('乱交');
INSERT INTO `sensitive_word_data` VALUES ('轮奸');
INSERT INTO `sensitive_word_data` VALUES ('卖淫');
INSERT INTO `sensitive_word_data` VALUES ('屁眼');
INSERT INTO `sensitive_word_data` VALUES ('嫖娼');
INSERT INTO `sensitive_word_data` VALUES ('强奸');
INSERT INTO `sensitive_word_data` VALUES ('强奸犯');
INSERT INTO `sensitive_word_data` VALUES ('情色');
INSERT INTO `sensitive_word_data` VALUES ('肉棒');
INSERT INTO `sensitive_word_data` VALUES ('乳房');
INSERT INTO `sensitive_word_data` VALUES ('乳峰');
INSERT INTO `sensitive_word_data` VALUES ('乳交');
INSERT INTO `sensitive_word_data` VALUES ('乳头');
INSERT INTO `sensitive_word_data` VALUES ('乳晕');
INSERT INTO `sensitive_word_data` VALUES ('三陪');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('射精');
INSERT INTO `sensitive_word_data` VALUES ('手淫');
INSERT INTO `sensitive_word_data` VALUES ('威而钢');
INSERT INTO `sensitive_word_data` VALUES ('威而柔');
INSERT INTO `sensitive_word_data` VALUES ('伟哥');
INSERT INTO `sensitive_word_data` VALUES ('性高潮');
INSERT INTO `sensitive_word_data` VALUES ('性交');
INSERT INTO `sensitive_word_data` VALUES ('性虐');
INSERT INTO `sensitive_word_data` VALUES ('性欲');
INSERT INTO `sensitive_word_data` VALUES ('穴');
INSERT INTO `sensitive_word_data` VALUES ('颜射');
INSERT INTO `sensitive_word_data` VALUES ('阳物');
INSERT INTO `sensitive_word_data` VALUES ('一夜情');
INSERT INTO `sensitive_word_data` VALUES ('阴部');
INSERT INTO `sensitive_word_data` VALUES ('阴唇');
INSERT INTO `sensitive_word_data` VALUES ('阴道');
INSERT INTO `sensitive_word_data` VALUES ('阴蒂');
INSERT INTO `sensitive_word_data` VALUES ('阴核');
INSERT INTO `sensitive_word_data` VALUES ('阴户');
INSERT INTO `sensitive_word_data` VALUES ('阴茎');
INSERT INTO `sensitive_word_data` VALUES ('阴门');
INSERT INTO `sensitive_word_data` VALUES ('淫');
INSERT INTO `sensitive_word_data` VALUES ('淫秽');
INSERT INTO `sensitive_word_data` VALUES ('淫乱');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('淫娃');
INSERT INTO `sensitive_word_data` VALUES ('淫液');
INSERT INTO `sensitive_word_data` VALUES ('淫汁');
INSERT INTO `sensitive_word_data` VALUES ('淫穴');
INSERT INTO `sensitive_word_data` VALUES ('淫洞');
INSERT INTO `sensitive_word_data` VALUES ('援交妹');
INSERT INTO `sensitive_word_data` VALUES ('做爱');
INSERT INTO `sensitive_word_data` VALUES ('梦遗');
INSERT INTO `sensitive_word_data` VALUES ('阳痿');
INSERT INTO `sensitive_word_data` VALUES ('早泄');
INSERT INTO `sensitive_word_data` VALUES ('奸淫');
INSERT INTO `sensitive_word_data` VALUES ('性欲');
INSERT INTO `sensitive_word_data` VALUES ('性交');
INSERT INTO `sensitive_word_data` VALUES ('Bitch');
INSERT INTO `sensitive_word_data` VALUES ('bt');
INSERT INTO `sensitive_word_data` VALUES ('cao');
INSERT INTO `sensitive_word_data` VALUES ('FUCK');
INSERT INTO `sensitive_word_data` VALUES ('Fuck');
INSERT INTO `sensitive_word_data` VALUES ('fuck');
INSERT INTO `sensitive_word_data` VALUES ('kao');
INSERT INTO `sensitive_word_data` VALUES ('NMD');
INSERT INTO `sensitive_word_data` VALUES ('NND');
INSERT INTO `sensitive_word_data` VALUES ('sb');
INSERT INTO `sensitive_word_data` VALUES ('shit');
INSERT INTO `sensitive_word_data` VALUES ('SHIT');
INSERT INTO `sensitive_word_data` VALUES ('SUCK');
INSERT INTO `sensitive_word_data` VALUES ('Suck');
INSERT INTO `sensitive_word_data` VALUES ('tmd');
INSERT INTO `sensitive_word_data` VALUES ('TMD');
INSERT INTO `sensitive_word_data` VALUES ('tnnd');
INSERT INTO `sensitive_word_data` VALUES ('K他命');
INSERT INTO `sensitive_word_data` VALUES ('白痴');
INSERT INTO `sensitive_word_data` VALUES ('笨蛋');
INSERT INTO `sensitive_word_data` VALUES ('屄');
INSERT INTO `sensitive_word_data` VALUES ('变态');
INSERT INTO `sensitive_word_data` VALUES ('婊子');
INSERT INTO `sensitive_word_data` VALUES ('操她妈');
INSERT INTO `sensitive_word_data` VALUES ('操妳妈');
INSERT INTO `sensitive_word_data` VALUES ('操你');
INSERT INTO `sensitive_word_data` VALUES ('操你妈');
INSERT INTO `sensitive_word_data` VALUES ('操他妈');
INSERT INTO `sensitive_word_data` VALUES ('草你');
INSERT INTO `sensitive_word_data` VALUES ('肏');
INSERT INTO `sensitive_word_data` VALUES ('册那');
INSERT INTO `sensitive_word_data` VALUES ('侧那');
INSERT INTO `sensitive_word_data` VALUES ('测拿');
INSERT INTO `sensitive_word_data` VALUES ('插');
INSERT INTO `sensitive_word_data` VALUES ('蠢猪');
INSERT INTO `sensitive_word_data` VALUES ('荡妇');
INSERT INTO `sensitive_word_data` VALUES ('发骚');
INSERT INTO `sensitive_word_data` VALUES ('废物');
INSERT INTO `sensitive_word_data` VALUES ('干她妈');
INSERT INTO `sensitive_word_data` VALUES ('干妳');
INSERT INTO `sensitive_word_data` VALUES ('干妳娘');
INSERT INTO `sensitive_word_data` VALUES ('干你');
INSERT INTO `sensitive_word_data` VALUES ('干你妈');
INSERT INTO `sensitive_word_data` VALUES ('干你妈B');
INSERT INTO `sensitive_word_data` VALUES ('干你妈b');
INSERT INTO `sensitive_word_data` VALUES ('干你妈逼');
INSERT INTO `sensitive_word_data` VALUES ('干你娘');
INSERT INTO `sensitive_word_data` VALUES ('干他妈');
INSERT INTO `sensitive_word_data` VALUES ('狗娘养的');
INSERT INTO `sensitive_word_data` VALUES ('滚');
INSERT INTO `sensitive_word_data` VALUES ('鸡奸');
INSERT INTO `sensitive_word_data` VALUES ('贱货');
INSERT INTO `sensitive_word_data` VALUES ('贱人');
INSERT INTO `sensitive_word_data` VALUES ('烂人');
INSERT INTO `sensitive_word_data` VALUES ('老母');
INSERT INTO `sensitive_word_data` VALUES ('老土');
INSERT INTO `sensitive_word_data` VALUES ('妈比');
INSERT INTO `sensitive_word_data` VALUES ('妈的');
INSERT INTO `sensitive_word_data` VALUES ('马的');
INSERT INTO `sensitive_word_data` VALUES ('妳老母的');
INSERT INTO `sensitive_word_data` VALUES ('妳娘的');
INSERT INTO `sensitive_word_data` VALUES ('你妈逼');
INSERT INTO `sensitive_word_data` VALUES ('破鞋');
INSERT INTO `sensitive_word_data` VALUES ('仆街');
INSERT INTO `sensitive_word_data` VALUES ('去她妈');
INSERT INTO `sensitive_word_data` VALUES ('去妳的');
INSERT INTO `sensitive_word_data` VALUES ('去妳妈');
INSERT INTO `sensitive_word_data` VALUES ('去你的');
INSERT INTO `sensitive_word_data` VALUES ('去你妈');
INSERT INTO `sensitive_word_data` VALUES ('去死');
INSERT INTO `sensitive_word_data` VALUES ('去他妈');
INSERT INTO `sensitive_word_data` VALUES ('日');
INSERT INTO `sensitive_word_data` VALUES ('日你');
INSERT INTO `sensitive_word_data` VALUES ('赛她娘');
INSERT INTO `sensitive_word_data` VALUES ('赛妳娘');
INSERT INTO `sensitive_word_data` VALUES ('赛你娘');
INSERT INTO `sensitive_word_data` VALUES ('赛他娘');
INSERT INTO `sensitive_word_data` VALUES ('骚货');
INSERT INTO `sensitive_word_data` VALUES ('傻B');
INSERT INTO `sensitive_word_data` VALUES ('傻比');
INSERT INTO `sensitive_word_data` VALUES ('傻子');
INSERT INTO `sensitive_word_data` VALUES ('上妳');
INSERT INTO `sensitive_word_data` VALUES ('上你');
INSERT INTO `sensitive_word_data` VALUES ('神经病');
INSERT INTO `sensitive_word_data` VALUES ('屎');
INSERT INTO `sensitive_word_data` VALUES ('屎妳娘');
INSERT INTO `sensitive_word_data` VALUES ('屎你娘');
INSERT INTO `sensitive_word_data` VALUES ('他妈的');
INSERT INTO `sensitive_word_data` VALUES ('王八蛋');
INSERT INTO `sensitive_word_data` VALUES ('我操');
INSERT INTO `sensitive_word_data` VALUES ('我日');
INSERT INTO `sensitive_word_data` VALUES ('乡巴佬');
INSERT INTO `sensitive_word_data` VALUES ('猪猡');
INSERT INTO `sensitive_word_data` VALUES ('屙');
INSERT INTO `sensitive_word_data` VALUES ('干');
INSERT INTO `sensitive_word_data` VALUES ('尿');
INSERT INTO `sensitive_word_data` VALUES ('掯');
INSERT INTO `sensitive_word_data` VALUES ('屌');
INSERT INTO `sensitive_word_data` VALUES ('操');
INSERT INTO `sensitive_word_data` VALUES ('骑你');
INSERT INTO `sensitive_word_data` VALUES ('湿了');
INSERT INTO `sensitive_word_data` VALUES ('操你');
INSERT INTO `sensitive_word_data` VALUES ('操他');
INSERT INTO `sensitive_word_data` VALUES ('操她');
INSERT INTO `sensitive_word_data` VALUES ('骑你');
INSERT INTO `sensitive_word_data` VALUES ('骑他');
INSERT INTO `sensitive_word_data` VALUES ('骑她');
INSERT INTO `sensitive_word_data` VALUES ('欠骑');
INSERT INTO `sensitive_word_data` VALUES ('欠人骑');
INSERT INTO `sensitive_word_data` VALUES ('来爽我');
INSERT INTO `sensitive_word_data` VALUES ('来插我');
INSERT INTO `sensitive_word_data` VALUES ('干你');
INSERT INTO `sensitive_word_data` VALUES ('干他');
INSERT INTO `sensitive_word_data` VALUES ('干她');
INSERT INTO `sensitive_word_data` VALUES ('干死');
INSERT INTO `sensitive_word_data` VALUES ('干爆');
INSERT INTO `sensitive_word_data` VALUES ('干机');
INSERT INTO `sensitive_word_data` VALUES ('FUCK');
INSERT INTO `sensitive_word_data` VALUES ('机叭');
INSERT INTO `sensitive_word_data` VALUES ('臭鸡');
INSERT INTO `sensitive_word_data` VALUES ('臭机');
INSERT INTO `sensitive_word_data` VALUES ('烂鸟');
INSERT INTO `sensitive_word_data` VALUES ('览叫');
INSERT INTO `sensitive_word_data` VALUES ('阳具');
INSERT INTO `sensitive_word_data` VALUES ('肉棒');
INSERT INTO `sensitive_word_data` VALUES ('肉壶');
INSERT INTO `sensitive_word_data` VALUES ('奶子');
INSERT INTO `sensitive_word_data` VALUES ('摸咪咪');
INSERT INTO `sensitive_word_data` VALUES ('干鸡');
INSERT INTO `sensitive_word_data` VALUES ('干入');
INSERT INTO `sensitive_word_data` VALUES ('小穴');
INSERT INTO `sensitive_word_data` VALUES ('强奸');
INSERT INTO `sensitive_word_data` VALUES ('插你');
INSERT INTO `sensitive_word_data` VALUES ('插你');
INSERT INTO `sensitive_word_data` VALUES ('爽你');
INSERT INTO `sensitive_word_data` VALUES ('爽你');
INSERT INTO `sensitive_word_data` VALUES ('干干');
INSERT INTO `sensitive_word_data` VALUES ('干X');
INSERT INTO `sensitive_word_data` VALUES ('我操');
INSERT INTO `sensitive_word_data` VALUES ('他干');
INSERT INTO `sensitive_word_data` VALUES ('干它');
INSERT INTO `sensitive_word_data` VALUES ('干牠');
INSERT INTO `sensitive_word_data` VALUES ('干您');
INSERT INTO `sensitive_word_data` VALUES ('干汝');
INSERT INTO `sensitive_word_data` VALUES ('干林');
INSERT INTO `sensitive_word_data` VALUES ('操林');
INSERT INTO `sensitive_word_data` VALUES ('干尼');
INSERT INTO `sensitive_word_data` VALUES ('操尼');
INSERT INTO `sensitive_word_data` VALUES ('我咧干');
INSERT INTO `sensitive_word_data` VALUES ('干勒');
INSERT INTO `sensitive_word_data` VALUES ('干我');
INSERT INTO `sensitive_word_data` VALUES ('干到');
INSERT INTO `sensitive_word_data` VALUES ('干啦');
INSERT INTO `sensitive_word_data` VALUES ('干爽');
INSERT INTO `sensitive_word_data` VALUES ('欠干');
INSERT INTO `sensitive_word_data` VALUES ('狗干');
INSERT INTO `sensitive_word_data` VALUES ('我干');
INSERT INTO `sensitive_word_data` VALUES ('来干');
INSERT INTO `sensitive_word_data` VALUES ('轮干');
INSERT INTO `sensitive_word_data` VALUES ('轮流干');
INSERT INTO `sensitive_word_data` VALUES ('干一干');
INSERT INTO `sensitive_word_data` VALUES ('援交');
INSERT INTO `sensitive_word_data` VALUES ('骑你');
INSERT INTO `sensitive_word_data` VALUES ('我操');
INSERT INTO `sensitive_word_data` VALUES ('轮奸');
INSERT INTO `sensitive_word_data` VALUES ('鸡奸');
INSERT INTO `sensitive_word_data` VALUES ('奸暴');
INSERT INTO `sensitive_word_data` VALUES ('再奸');
INSERT INTO `sensitive_word_data` VALUES ('我奸');
INSERT INTO `sensitive_word_data` VALUES ('奸你');
INSERT INTO `sensitive_word_data` VALUES ('奸你');
INSERT INTO `sensitive_word_data` VALUES ('奸他');
INSERT INTO `sensitive_word_data` VALUES ('奸她');
INSERT INTO `sensitive_word_data` VALUES ('奸一奸');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('淫湿');
INSERT INTO `sensitive_word_data` VALUES ('鸡歪');
INSERT INTO `sensitive_word_data` VALUES ('仆街');
INSERT INTO `sensitive_word_data` VALUES ('臭西');
INSERT INTO `sensitive_word_data` VALUES ('尻');
INSERT INTO `sensitive_word_data` VALUES ('遗精');
INSERT INTO `sensitive_word_data` VALUES ('烂逼');
INSERT INTO `sensitive_word_data` VALUES ('大血比');
INSERT INTO `sensitive_word_data` VALUES ('叼你妈');
INSERT INTO `sensitive_word_data` VALUES ('靠你妈');
INSERT INTO `sensitive_word_data` VALUES ('草你');
INSERT INTO `sensitive_word_data` VALUES ('干你');
INSERT INTO `sensitive_word_data` VALUES ('日你');
INSERT INTO `sensitive_word_data` VALUES ('插你');
INSERT INTO `sensitive_word_data` VALUES ('奸你');
INSERT INTO `sensitive_word_data` VALUES ('戳你');
INSERT INTO `sensitive_word_data` VALUES ('逼你老母');
INSERT INTO `sensitive_word_data` VALUES ('挨球');
INSERT INTO `sensitive_word_data` VALUES ('我日你');
INSERT INTO `sensitive_word_data` VALUES ('草拟妈');
INSERT INTO `sensitive_word_data` VALUES ('卖逼');
INSERT INTO `sensitive_word_data` VALUES ('狗操卖逼');
INSERT INTO `sensitive_word_data` VALUES ('奸淫');
INSERT INTO `sensitive_word_data` VALUES ('日死');
INSERT INTO `sensitive_word_data` VALUES ('奶子');
INSERT INTO `sensitive_word_data` VALUES ('阴茎');
INSERT INTO `sensitive_word_data` VALUES ('奶娘');
INSERT INTO `sensitive_word_data` VALUES ('他娘');
INSERT INTO `sensitive_word_data` VALUES ('她娘');
INSERT INTO `sensitive_word_data` VALUES ('骚B');
INSERT INTO `sensitive_word_data` VALUES ('你妈了妹');
INSERT INTO `sensitive_word_data` VALUES ('逼毛');
INSERT INTO `sensitive_word_data` VALUES ('插你妈');
INSERT INTO `sensitive_word_data` VALUES ('叼你');
INSERT INTO `sensitive_word_data` VALUES ('渣波波');
INSERT INTO `sensitive_word_data` VALUES ('嫩b');
INSERT INTO `sensitive_word_data` VALUES ('weelaa');
INSERT INTO `sensitive_word_data` VALUES ('缔顺');
INSERT INTO `sensitive_word_data` VALUES ('帝顺');
INSERT INTO `sensitive_word_data` VALUES ('蒂顺');
INSERT INTO `sensitive_word_data` VALUES ('系统消息');
INSERT INTO `sensitive_word_data` VALUES ('午夜');
INSERT INTO `sensitive_word_data` VALUES ('看下');
INSERT INTO `sensitive_word_data` VALUES ('草泥马');
INSERT INTO `sensitive_word_data` VALUES ('法克鱿');
INSERT INTO `sensitive_word_data` VALUES ('雅蠛蝶');
INSERT INTO `sensitive_word_data` VALUES ('潜烈蟹');
INSERT INTO `sensitive_word_data` VALUES ('菊花蚕');
INSERT INTO `sensitive_word_data` VALUES ('尾申鲸');
INSERT INTO `sensitive_word_data` VALUES ('吉跋猫');
INSERT INTO `sensitive_word_data` VALUES ('搞栗棒');
INSERT INTO `sensitive_word_data` VALUES ('吟稻雁');
INSERT INTO `sensitive_word_data` VALUES ('达菲鸡');
INSERT INTO `sensitive_word_data` VALUES ('SM');
INSERT INTO `sensitive_word_data` VALUES ('ML');
INSERT INTO `sensitive_word_data` VALUES ('3P');
INSERT INTO `sensitive_word_data` VALUES ('群P');
INSERT INTO `sensitive_word_data` VALUES ('马勒戈壁');
INSERT INTO `sensitive_word_data` VALUES ('双飞');
INSERT INTO `sensitive_word_data` VALUES ('fuck');
INSERT INTO `sensitive_word_data` VALUES ('共产党');
INSERT INTO `sensitive_word_data` VALUES ('urban');
INSERT INTO `sensitive_word_data` VALUES ('我操');
INSERT INTO `sensitive_word_data` VALUES ('cao');
INSERT INTO `sensitive_word_data` VALUES ('他妈的');
INSERT INTO `sensitive_word_data` VALUES ('TMD');
INSERT INTO `sensitive_word_data` VALUES ('鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('煞笔');
INSERT INTO `sensitive_word_data` VALUES ('傻B');
INSERT INTO `sensitive_word_data` VALUES ('法轮功');
INSERT INTO `sensitive_word_data` VALUES ('江泽民');
INSERT INTO `sensitive_word_data` VALUES ('胡锦涛');
INSERT INTO `sensitive_word_data` VALUES ('温家宝');
INSERT INTO `sensitive_word_data` VALUES ('urban-rivals');
INSERT INTO `sensitive_word_data` VALUES ('rivals');
INSERT INTO `sensitive_word_data` VALUES ('我日');
INSERT INTO `sensitive_word_data` VALUES ('UR');
INSERT INTO `sensitive_word_data` VALUES ('ur');
INSERT INTO `sensitive_word_data` VALUES ('性交');
INSERT INTO `sensitive_word_data` VALUES ('口交');
INSERT INTO `sensitive_word_data` VALUES ('婊子');
INSERT INTO `sensitive_word_data` VALUES ('妓女');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('她妈');
INSERT INTO `sensitive_word_data` VALUES ('牛逼');
INSERT INTO `sensitive_word_data` VALUES ('牛B');
INSERT INTO `sensitive_word_data` VALUES ('牛比');
INSERT INTO `sensitive_word_data` VALUES ('煞笔');
INSERT INTO `sensitive_word_data` VALUES ('傻逼');
INSERT INTO `sensitive_word_data` VALUES ('傻B');
INSERT INTO `sensitive_word_data` VALUES ('操你妈');
INSERT INTO `sensitive_word_data` VALUES ('装逼');
INSERT INTO `sensitive_word_data` VALUES ('装B');
INSERT INTO `sensitive_word_data` VALUES ('日你妈');
INSERT INTO `sensitive_word_data` VALUES ('不玩了');
INSERT INTO `sensitive_word_data` VALUES ('删号');
INSERT INTO `sensitive_word_data` VALUES ('卖号');
INSERT INTO `sensitive_word_data` VALUES ('删号');
INSERT INTO `sensitive_word_data` VALUES ('妈的');
INSERT INTO `sensitive_word_data` VALUES ('妈逼');
INSERT INTO `sensitive_word_data` VALUES ('草你妈');
INSERT INTO `sensitive_word_data` VALUES ('T.M.D');
INSERT INTO `sensitive_word_data` VALUES ('JB');
INSERT INTO `sensitive_word_data` VALUES ('jb');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('出售账号');
INSERT INTO `sensitive_word_data` VALUES ('出售此号');
INSERT INTO `sensitive_word_data` VALUES ('卖号');
INSERT INTO `sensitive_word_data` VALUES ('U/R');
INSERT INTO `sensitive_word_data` VALUES ('U-R');
INSERT INTO `sensitive_word_data` VALUES ('j8');
INSERT INTO `sensitive_word_data` VALUES ('吗的');
INSERT INTO `sensitive_word_data` VALUES ('8仙');
INSERT INTO `sensitive_word_data` VALUES ('狗日');
INSERT INTO `sensitive_word_data` VALUES ('出售神符');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('黄色');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('法轮大法');
INSERT INTO `sensitive_word_data` VALUES ('鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('毛泽东');
INSERT INTO `sensitive_word_data` VALUES ('NPC');
INSERT INTO `sensitive_word_data` VALUES ('*法*轮*功*');
INSERT INTO `sensitive_word_data` VALUES ('*李*洪*志*阿扁');
INSERT INTO `sensitive_word_data` VALUES ('阿扁万岁');
INSERT INTO `sensitive_word_data` VALUES ('阿拉');
INSERT INTO `sensitive_word_data` VALUES ('阿拉法特');
INSERT INTO `sensitive_word_data` VALUES ('挨球');
INSERT INTO `sensitive_word_data` VALUES ('安南');
INSERT INTO `sensitive_word_data` VALUES ('安全局');
INSERT INTO `sensitive_word_data` VALUES ('澳洲光明网');
INSERT INTO `sensitive_word_data` VALUES ('八九');
INSERT INTO `sensitive_word_data` VALUES ('八九风波');
INSERT INTO `sensitive_word_data` VALUES ('办理文凭');
INSERT INTO `sensitive_word_data` VALUES ('办理证件');
INSERT INTO `sensitive_word_data` VALUES ('包皮');
INSERT INTO `sensitive_word_data` VALUES ('保钓');
INSERT INTO `sensitive_word_data` VALUES ('保监会');
INSERT INTO `sensitive_word_data` VALUES ('保密局');
INSERT INTO `sensitive_word_data` VALUES ('鸨');
INSERT INTO `sensitive_word_data` VALUES ('鲍岳桥');
INSERT INTO `sensitive_word_data` VALUES ('暴动');
INSERT INTO `sensitive_word_data` VALUES ('暴乱');
INSERT INTO `sensitive_word_data` VALUES ('暴徒');
INSERT INTO `sensitive_word_data` VALUES ('北京之春');
INSERT INTO `sensitive_word_data` VALUES ('贝肉');
INSERT INTO `sensitive_word_data` VALUES ('本拉登');
INSERT INTO `sensitive_word_data` VALUES ('本?拉登');
INSERT INTO `sensitive_word_data` VALUES ('苯比');
INSERT INTO `sensitive_word_data` VALUES ('笨屄');
INSERT INTO `sensitive_word_data` VALUES ('笨逼');
INSERT INTO `sensitive_word_data` VALUES ('屄');
INSERT INTO `sensitive_word_data` VALUES ('屄毛');
INSERT INTO `sensitive_word_data` VALUES ('逼毛');
INSERT INTO `sensitive_word_data` VALUES ('逼你老母');
INSERT INTO `sensitive_word_data` VALUES ('逼样');
INSERT INTO `sensitive_word_data` VALUES ('比毛');
INSERT INTO `sensitive_word_data` VALUES ('婊');
INSERT INTO `sensitive_word_data` VALUES ('婊子');
INSERT INTO `sensitive_word_data` VALUES ('宾周');
INSERT INTO `sensitive_word_data` VALUES ('冰毒');
INSERT INTO `sensitive_word_data` VALUES ('波霸');
INSERT INTO `sensitive_word_data` VALUES ('博讯');
INSERT INTO `sensitive_word_data` VALUES ('薄一波');
INSERT INTO `sensitive_word_data` VALUES ('布莱尔');
INSERT INTO `sensitive_word_data` VALUES ('布雷尔');
INSERT INTO `sensitive_word_data` VALUES ('布什');
INSERT INTO `sensitive_word_data` VALUES ('布什');
INSERT INTO `sensitive_word_data` VALUES ('财政部');
INSERT INTO `sensitive_word_data` VALUES ('参事室');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('操');
INSERT INTO `sensitive_word_data` VALUES ('操GM');
INSERT INTO `sensitive_word_data` VALUES ('操Gm');
INSERT INTO `sensitive_word_data` VALUES ('操gM');
INSERT INTO `sensitive_word_data` VALUES ('操gm');
INSERT INTO `sensitive_word_data` VALUES ('操XX');
INSERT INTO `sensitive_word_data` VALUES ('操逼');
INSERT INTO `sensitive_word_data` VALUES ('操比');
INSERT INTO `sensitive_word_data` VALUES ('操蛋');
INSERT INTO `sensitive_word_data` VALUES ('操你');
INSERT INTO `sensitive_word_data` VALUES ('操你八辈祖宗');
INSERT INTO `sensitive_word_data` VALUES ('操你妈');
INSERT INTO `sensitive_word_data` VALUES ('操你妈屄');
INSERT INTO `sensitive_word_data` VALUES ('操他');
INSERT INTO `sensitive_word_data` VALUES ('曹刚川');
INSERT INTO `sensitive_word_data` VALUES ('草的你妈');
INSERT INTO `sensitive_word_data` VALUES ('草妈');
INSERT INTO `sensitive_word_data` VALUES ('草你妈');
INSERT INTO `sensitive_word_data` VALUES ('草拟妈');
INSERT INTO `sensitive_word_data` VALUES ('肏');
INSERT INTO `sensitive_word_data` VALUES ('测绘局');
INSERT INTO `sensitive_word_data` VALUES ('插GM');
INSERT INTO `sensitive_word_data` VALUES ('插Gm');
INSERT INTO `sensitive_word_data` VALUES ('插gM');
INSERT INTO `sensitive_word_data` VALUES ('插gm');
INSERT INTO `sensitive_word_data` VALUES ('插妳');
INSERT INTO `sensitive_word_data` VALUES ('插你');
INSERT INTO `sensitive_word_data` VALUES ('插你妈');
INSERT INTO `sensitive_word_data` VALUES ('插深些');
INSERT INTO `sensitive_word_data` VALUES ('产权局');
INSERT INTO `sensitive_word_data` VALUES ('朝鲜');
INSERT INTO `sensitive_word_data` VALUES ('车臣');
INSERT INTO `sensitive_word_data` VALUES ('车仑');
INSERT INTO `sensitive_word_data` VALUES ('陈功');
INSERT INTO `sensitive_word_data` VALUES ('陈良宇');
INSERT INTO `sensitive_word_data` VALUES ('陈水扁');
INSERT INTO `sensitive_word_data` VALUES ('陈希同');
INSERT INTO `sensitive_word_data` VALUES ('陈晓宁');
INSERT INTO `sensitive_word_data` VALUES ('陈毅');
INSERT INTO `sensitive_word_data` VALUES ('陈至立');
INSERT INTO `sensitive_word_data` VALUES ('成人电影');
INSERT INTO `sensitive_word_data` VALUES ('成人片');
INSERT INTO `sensitive_word_data` VALUES ('吃大便');
INSERT INTO `sensitive_word_data` VALUES ('吃屎');
INSERT INTO `sensitive_word_data` VALUES ('迟浩田');
INSERT INTO `sensitive_word_data` VALUES ('赤匪');
INSERT INTO `sensitive_word_data` VALUES ('抽插');
INSERT INTO `sensitive_word_data` VALUES ('抽你丫的');
INSERT INTO `sensitive_word_data` VALUES ('臭化西');
INSERT INTO `sensitive_word_data` VALUES ('出售假币');
INSERT INTO `sensitive_word_data` VALUES ('出售枪支');
INSERT INTO `sensitive_word_data` VALUES ('出售手枪');
INSERT INTO `sensitive_word_data` VALUES ('吹喇叭');
INSERT INTO `sensitive_word_data` VALUES ('吹箫');
INSERT INTO `sensitive_word_data` VALUES ('春药');
INSERT INTO `sensitive_word_data` VALUES ('蠢猪');
INSERT INTO `sensitive_word_data` VALUES ('戳你');
INSERT INTO `sensitive_word_data` VALUES ('粗制吗啡');
INSERT INTO `sensitive_word_data` VALUES ('催情药');
INSERT INTO `sensitive_word_data` VALUES ('达赖');
INSERT INTO `sensitive_word_data` VALUES ('达赖喇嘛');
INSERT INTO `sensitive_word_data` VALUES ('打炮');
INSERT INTO `sensitive_word_data` VALUES ('');
INSERT INTO `sensitive_word_data` VALUES ('大B');
INSERT INTO `sensitive_word_data` VALUES ('大逼');
INSERT INTO `sensitive_word_data` VALUES ('大便');
INSERT INTO `sensitive_word_data` VALUES ('大波波');
INSERT INTO `sensitive_word_data` VALUES ('大麻');
INSERT INTO `sensitive_word_data` VALUES ('大麻树脂');
INSERT INTO `sensitive_word_data` VALUES ('大麻油');
INSERT INTO `sensitive_word_data` VALUES ('大师');
INSERT INTO `sensitive_word_data` VALUES ('戴维教');
INSERT INTO `sensitive_word_data` VALUES ('大学骚乱');
INSERT INTO `sensitive_word_data` VALUES ('大血B');
INSERT INTO `sensitive_word_data` VALUES ('大血比');
INSERT INTO `sensitive_word_data` VALUES ('呆卵');
INSERT INTO `sensitive_word_data` VALUES ('戴海静');
INSERT INTO `sensitive_word_data` VALUES ('戴红');
INSERT INTO `sensitive_word_data` VALUES ('戴晶');
INSERT INTO `sensitive_word_data` VALUES ('戴维教');
INSERT INTO `sensitive_word_data` VALUES ('党主席');
INSERT INTO `sensitive_word_data` VALUES ('荡妇');
INSERT INTO `sensitive_word_data` VALUES ('档案局');
INSERT INTO `sensitive_word_data` VALUES ('盗窃犯');
INSERT INTO `sensitive_word_data` VALUES ('盗窃犯');
INSERT INTO `sensitive_word_data` VALUES ('道教');
INSERT INTO `sensitive_word_data` VALUES ('邓小平');
INSERT INTO `sensitive_word_data` VALUES ('帝国主义');
INSERT INTO `sensitive_word_data` VALUES ('电监会');
INSERT INTO `sensitive_word_data` VALUES ('叼你');
INSERT INTO `sensitive_word_data` VALUES ('叼你妈');
INSERT INTO `sensitive_word_data` VALUES ('屌');
INSERT INTO `sensitive_word_data` VALUES ('屌7');
INSERT INTO `sensitive_word_data` VALUES ('屌鸠');
INSERT INTO `sensitive_word_data` VALUES ('屌毛');
INSERT INTO `sensitive_word_data` VALUES ('屌妳');
INSERT INTO `sensitive_word_data` VALUES ('屌七');
INSERT INTO `sensitive_word_data` VALUES ('屌西');
INSERT INTO `sensitive_word_data` VALUES ('钓鱼台');
INSERT INTO `sensitive_word_data` VALUES ('丁关根');
INSERT INTO `sensitive_word_data` VALUES ('丁子霖');
INSERT INTO `sensitive_word_data` VALUES ('东北独立');
INSERT INTO `sensitive_word_data` VALUES ('东升');
INSERT INTO `sensitive_word_data` VALUES ('东条英机');
INSERT INTO `sensitive_word_data` VALUES ('东突');
INSERT INTO `sensitive_word_data` VALUES ('东突暴动和独立');
INSERT INTO `sensitive_word_data` VALUES ('东突组织');
INSERT INTO `sensitive_word_data` VALUES ('东亚病夫');
INSERT INTO `sensitive_word_data` VALUES ('董建华');
INSERT INTO `sensitive_word_data` VALUES ('董贱华');
INSERT INTO `sensitive_word_data` VALUES ('董文华');
INSERT INTO `sensitive_word_data` VALUES ('懂文华');
INSERT INTO `sensitive_word_data` VALUES ('独立');
INSERT INTO `sensitive_word_data` VALUES ('独立台湾会');
INSERT INTO `sensitive_word_data` VALUES ('恩格斯');
INSERT INTO `sensitive_word_data` VALUES ('二B');
INSERT INTO `sensitive_word_data` VALUES ('二屄');
INSERT INTO `sensitive_word_data` VALUES ('二逼');
INSERT INTO `sensitive_word_data` VALUES ('二乙基酰胺发抡');
INSERT INTO `sensitive_word_data` VALUES ('发抡功');
INSERT INTO `sensitive_word_data` VALUES ('发伦');
INSERT INTO `sensitive_word_data` VALUES ('发伦功');
INSERT INTO `sensitive_word_data` VALUES ('发轮');
INSERT INTO `sensitive_word_data` VALUES ('发论');
INSERT INTO `sensitive_word_data` VALUES ('发论公');
INSERT INTO `sensitive_word_data` VALUES ('发论功');
INSERT INTO `sensitive_word_data` VALUES ('发骚');
INSERT INTO `sensitive_word_data` VALUES ('法(轮)功');
INSERT INTO `sensitive_word_data` VALUES ('法*轮*功');
INSERT INTO `sensitive_word_data` VALUES ('法功');
INSERT INTO `sensitive_word_data` VALUES ('法愣');
INSERT INTO `sensitive_word_data` VALUES ('法仑');
INSERT INTO `sensitive_word_data` VALUES ('法轮');
INSERT INTO `sensitive_word_data` VALUES ('法轮大法');
INSERT INTO `sensitive_word_data` VALUES ('法轮功');
INSERT INTO `sensitive_word_data` VALUES ('法西斯');
INSERT INTO `sensitive_word_data` VALUES ('法制办');
INSERT INTO `sensitive_word_data` VALUES ('反动');
INSERT INTO `sensitive_word_data` VALUES ('反革命');
INSERT INTO `sensitive_word_data` VALUES ('反共');
INSERT INTO `sensitive_word_data` VALUES ('反华');
INSERT INTO `sensitive_word_data` VALUES ('反恐委员会');
INSERT INTO `sensitive_word_data` VALUES ('反日');
INSERT INTO `sensitive_word_data` VALUES ('反政府');
INSERT INTO `sensitive_word_data` VALUES ('分裂祖国');
INSERT INTO `sensitive_word_data` VALUES ('佛教');
INSERT INTO `sensitive_word_data` VALUES ('佛展千手法');
INSERT INTO `sensitive_word_data` VALUES ('佛祖');
INSERT INTO `sensitive_word_data` VALUES ('斧头镰刀');
INSERT INTO `sensitive_word_data` VALUES ('阝月');
INSERT INTO `sensitive_word_data` VALUES ('傅鹏');
INSERT INTO `sensitive_word_data` VALUES ('傅作义');
INSERT INTO `sensitive_word_data` VALUES ('干GM');
INSERT INTO `sensitive_word_data` VALUES ('干Gm');
INSERT INTO `sensitive_word_data` VALUES ('干gM');
INSERT INTO `sensitive_word_data` VALUES ('干gm');
INSERT INTO `sensitive_word_data` VALUES ('干拎娘');
INSERT INTO `sensitive_word_data` VALUES ('干妳');
INSERT INTO `sensitive_word_data` VALUES ('干妳老母');
INSERT INTO `sensitive_word_data` VALUES ('干妳妈');
INSERT INTO `sensitive_word_data` VALUES ('干妳娘');
INSERT INTO `sensitive_word_data` VALUES ('干你');
INSERT INTO `sensitive_word_data` VALUES ('干你妈');
INSERT INTO `sensitive_word_data` VALUES ('干你妈b');
INSERT INTO `sensitive_word_data` VALUES ('干你妈逼');
INSERT INTO `sensitive_word_data` VALUES ('干你娘');
INSERT INTO `sensitive_word_data` VALUES ('干七八');
INSERT INTO `sensitive_word_data` VALUES ('干死你');
INSERT INTO `sensitive_word_data` VALUES ('肛');
INSERT INTO `sensitive_word_data` VALUES ('肛交');
INSERT INTO `sensitive_word_data` VALUES ('肛门');
INSERT INTO `sensitive_word_data` VALUES ('港澳办');
INSERT INTO `sensitive_word_data` VALUES ('高俊');
INSERT INTO `sensitive_word_data` VALUES ('高丽棒子');
INSERT INTO `sensitive_word_data` VALUES ('高校暴乱');
INSERT INTO `sensitive_word_data` VALUES ('高校群体事件');
INSERT INTO `sensitive_word_data` VALUES ('高校骚乱');
INSERT INTO `sensitive_word_data` VALUES ('睾');
INSERT INTO `sensitive_word_data` VALUES ('睾丸');
INSERT INTO `sensitive_word_data` VALUES ('膏药旗');
INSERT INTO `sensitive_word_data` VALUES ('弓虽女干');
INSERT INTO `sensitive_word_data` VALUES ('公安');
INSERT INTO `sensitive_word_data` VALUES ('公安部');
INSERT INTO `sensitive_word_data` VALUES ('公安局');
INSERT INTO `sensitive_word_data` VALUES ('共产党');
INSERT INTO `sensitive_word_data` VALUES ('共产主义');
INSERT INTO `sensitive_word_data` VALUES ('共匪');
INSERT INTO `sensitive_word_data` VALUES ('共狗');
INSERT INTO `sensitive_word_data` VALUES ('狗b');
INSERT INTO `sensitive_word_data` VALUES ('狗操');
INSERT INTO `sensitive_word_data` VALUES ('狗卵');
INSERT INTO `sensitive_word_data` VALUES ('狗娘');
INSERT INTO `sensitive_word_data` VALUES ('狗屁');
INSERT INTO `sensitive_word_data` VALUES ('狗日');
INSERT INTO `sensitive_word_data` VALUES ('狗日的');
INSERT INTO `sensitive_word_data` VALUES ('狗屎');
INSERT INTO `sensitive_word_data` VALUES ('观世音');
INSERT INTO `sensitive_word_data` VALUES ('官逼民反');
INSERT INTO `sensitive_word_data` VALUES ('官商勾结');
INSERT INTO `sensitive_word_data` VALUES ('龟儿子');
INSERT INTO `sensitive_word_data` VALUES ('龟公');
INSERT INTO `sensitive_word_data` VALUES ('龟孙子');
INSERT INTO `sensitive_word_data` VALUES ('龟头');
INSERT INTO `sensitive_word_data` VALUES ('鬼村');
INSERT INTO `sensitive_word_data` VALUES ('滚');
INSERT INTO `sensitive_word_data` VALUES ('郭伯雄');
INSERT INTO `sensitive_word_data` VALUES ('国安局');
INSERT INTO `sensitive_word_data` VALUES ('国防部');
INSERT INTO `sensitive_word_data` VALUES ('国防科工委');
INSERT INTO `sensitive_word_data` VALUES ('国管局');
INSERT INTO `sensitive_word_data` VALUES ('国际法院');
INSERT INTO `sensitive_word_data` VALUES ('国家民委');
INSERT INTO `sensitive_word_data` VALUES ('国家主席');
INSERT INTO `sensitive_word_data` VALUES ('国家主要部委');
INSERT INTO `sensitive_word_data` VALUES ('国民党');
INSERT INTO `sensitive_word_data` VALUES ('国民党万岁');
INSERT INTO `sensitive_word_data` VALUES ('海洛因');
INSERT INTO `sensitive_word_data` VALUES ('海洋局');
INSERT INTO `sensitive_word_data` VALUES ('何候华');
INSERT INTO `sensitive_word_data` VALUES ('贺国强');
INSERT INTO `sensitive_word_data` VALUES ('贺龙');
INSERT INTO `sensitive_word_data` VALUES ('黑社会');
INSERT INTO `sensitive_word_data` VALUES ('黑手党');
INSERT INTO `sensitive_word_data` VALUES ('黑手党');
INSERT INTO `sensitive_word_data` VALUES ('黑手党');
INSERT INTO `sensitive_word_data` VALUES ('红卫兵');
INSERT INTO `sensitive_word_data` VALUES ('洪兴');
INSERT INTO `sensitive_word_data` VALUES ('洪志');
INSERT INTO `sensitive_word_data` VALUES ('后庭');
INSERT INTO `sensitive_word_data` VALUES ('胡XX');
INSERT INTO `sensitive_word_data` VALUES ('胡紧涛');
INSERT INTO `sensitive_word_data` VALUES ('胡紧掏');
INSERT INTO `sensitive_word_data` VALUES ('胡紧套');
INSERT INTO `sensitive_word_data` VALUES ('胡锦涛');
INSERT INTO `sensitive_word_data` VALUES ('胡锦淘');
INSERT INTO `sensitive_word_data` VALUES ('胡乔木');
INSERT INTO `sensitive_word_data` VALUES ('胡耀邦');
INSERT INTO `sensitive_word_data` VALUES ('胡主席');
INSERT INTO `sensitive_word_data` VALUES ('花柳');
INSERT INTO `sensitive_word_data` VALUES ('华国锋');
INSERT INTO `sensitive_word_data` VALUES ('华建敏');
INSERT INTO `sensitive_word_data` VALUES ('换妻');
INSERT INTO `sensitive_word_data` VALUES ('黄　菊');
INSERT INTO `sensitive_word_data` VALUES ('黄菊');
INSERT INTO `sensitive_word_data` VALUES ('黄色电影');
INSERT INTO `sensitive_word_data` VALUES ('黄色小电影');
INSERT INTO `sensitive_word_data` VALUES ('回教');
INSERT INTO `sensitive_word_data` VALUES ('回良玉');
INSERT INTO `sensitive_word_data` VALUES ('回民暴动');
INSERT INTO `sensitive_word_data` VALUES ('回族人吃猪肉');
INSERT INTO `sensitive_word_data` VALUES ('昏药');
INSERT INTO `sensitive_word_data` VALUES ('火棒');
INSERT INTO `sensitive_word_data` VALUES ('机八');
INSERT INTO `sensitive_word_data` VALUES ('机巴');
INSERT INTO `sensitive_word_data` VALUES ('鸡八');
INSERT INTO `sensitive_word_data` VALUES ('鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('鸡叭');
INSERT INTO `sensitive_word_data` VALUES ('鸡芭');
INSERT INTO `sensitive_word_data` VALUES ('鸡掰');
INSERT INTO `sensitive_word_data` VALUES ('鸡奸');
INSERT INTO `sensitive_word_data` VALUES ('基地组织');
INSERT INTO `sensitive_word_data` VALUES ('基督');
INSERT INTO `sensitive_word_data` VALUES ('基督教');
INSERT INTO `sensitive_word_data` VALUES ('激情电影');
INSERT INTO `sensitive_word_data` VALUES ('激情小电影');
INSERT INTO `sensitive_word_data` VALUES ('鸡');
INSERT INTO `sensitive_word_data` VALUES ('计牌软件');
INSERT INTO `sensitive_word_data` VALUES ('计生委');
INSERT INTO `sensitive_word_data` VALUES ('妓');
INSERT INTO `sensitive_word_data` VALUES ('妓女');
INSERT INTO `sensitive_word_data` VALUES ('妓院');
INSERT INTO `sensitive_word_data` VALUES ('贾庆林');
INSERT INTO `sensitive_word_data` VALUES ('奸');
INSERT INTO `sensitive_word_data` VALUES ('奸夫淫妇');
INSERT INTO `sensitive_word_data` VALUES ('奸你');
INSERT INTO `sensitive_word_data` VALUES ('奸淫');
INSERT INTO `sensitive_word_data` VALUES ('贱');
INSERT INTO `sensitive_word_data` VALUES ('贱逼');
INSERT INTO `sensitive_word_data` VALUES ('贱货');
INSERT INTO `sensitive_word_data` VALUES ('贱人');
INSERT INTO `sensitive_word_data` VALUES ('江Core');
INSERT INTO `sensitive_word_data` VALUES ('江八');
INSERT INTO `sensitive_word_data` VALUES ('江八点');
INSERT INTO `sensitive_word_data` VALUES ('江独裁');
INSERT INTO `sensitive_word_data` VALUES ('江核心');
INSERT INTO `sensitive_word_data` VALUES ('江青');
INSERT INTO `sensitive_word_data` VALUES ('江戏子');
INSERT INTO `sensitive_word_data` VALUES ('江择民');
INSERT INTO `sensitive_word_data` VALUES ('江泽民');
INSERT INTO `sensitive_word_data` VALUES ('江贼民');
INSERT INTO `sensitive_word_data` VALUES ('江折民');
INSERT INTO `sensitive_word_data` VALUES ('江猪');
INSERT INTO `sensitive_word_data` VALUES ('江猪媳');
INSERT INTO `sensitive_word_data` VALUES ('江主席');
INSERT INTO `sensitive_word_data` VALUES ('僵贼民');
INSERT INTO `sensitive_word_data` VALUES ('疆独');
INSERT INTO `sensitive_word_data` VALUES ('蒋介石');
INSERT INTO `sensitive_word_data` VALUES ('蒋经国');
INSERT INTO `sensitive_word_data` VALUES ('蒋中正');
INSERT INTO `sensitive_word_data` VALUES ('酱猪媳');
INSERT INTO `sensitive_word_data` VALUES ('交通部');
INSERT INTO `sensitive_word_data` VALUES ('姣西');
INSERT INTO `sensitive_word_data` VALUES ('叫床');
INSERT INTO `sensitive_word_data` VALUES ('叫鸡');
INSERT INTO `sensitive_word_data` VALUES ('叫小姐');
INSERT INTO `sensitive_word_data` VALUES ('教育部');
INSERT INTO `sensitive_word_data` VALUES ('她妈的金日成');
INSERT INTO `sensitive_word_data` VALUES ('金正日');
INSERT INTO `sensitive_word_data` VALUES ('禁书');
INSERT INTO `sensitive_word_data` VALUES ('经济社会理事会');
INSERT INTO `sensitive_word_data` VALUES ('经社理事会');
INSERT INTO `sensitive_word_data` VALUES ('精液');
INSERT INTO `sensitive_word_data` VALUES ('精子');
INSERT INTO `sensitive_word_data` VALUES ('警匪一家');
INSERT INTO `sensitive_word_data` VALUES ('敬国神社');
INSERT INTO `sensitive_word_data` VALUES ('靖国神社');
INSERT INTO `sensitive_word_data` VALUES ('静坐');
INSERT INTO `sensitive_word_data` VALUES ('纠察员');
INSERT INTO `sensitive_word_data` VALUES ('鸠');
INSERT INTO `sensitive_word_data` VALUES ('鸠屎');
INSERT INTO `sensitive_word_data` VALUES ('军长发威');
INSERT INTO `sensitive_word_data` VALUES ('军国主义');
INSERT INTO `sensitive_word_data` VALUES ('军妓');
INSERT INTO `sensitive_word_data` VALUES ('尻');
INSERT INTO `sensitive_word_data` VALUES ('靠');
INSERT INTO `sensitive_word_data` VALUES ('靠你妈');
INSERT INTO `sensitive_word_data` VALUES ('靠腰');
INSERT INTO `sensitive_word_data` VALUES ('可待因');
INSERT INTO `sensitive_word_data` VALUES ('可卡叶');
INSERT INTO `sensitive_word_data` VALUES ('可卡因');
INSERT INTO `sensitive_word_data` VALUES ('克林顿');
INSERT INTO `sensitive_word_data` VALUES ('恐怖份子');
INSERT INTO `sensitive_word_data` VALUES ('恐怖主义');
INSERT INTO `sensitive_word_data` VALUES ('口交');
INSERT INTO `sensitive_word_data` VALUES ('寇晓伟');
INSERT INTO `sensitive_word_data` VALUES ('狂操');
INSERT INTO `sensitive_word_data` VALUES ('狂操你全家');
INSERT INTO `sensitive_word_data` VALUES ('拉登');
INSERT INTO `sensitive_word_data` VALUES ('拉姆斯菲尔德');
INSERT INTO `sensitive_word_data` VALUES ('懒教');
INSERT INTO `sensitive_word_data` VALUES ('烂B');
INSERT INTO `sensitive_word_data` VALUES ('烂屄');
INSERT INTO `sensitive_word_data` VALUES ('烂逼');
INSERT INTO `sensitive_word_data` VALUES ('烂比');
INSERT INTO `sensitive_word_data` VALUES ('烂屌');
INSERT INTO `sensitive_word_data` VALUES ('烂货');
INSERT INTO `sensitive_word_data` VALUES ('劳+教+所');
INSERT INTO `sensitive_word_data` VALUES ('劳动保障部');
INSERT INTO `sensitive_word_data` VALUES ('老逼');
INSERT INTO `sensitive_word_data` VALUES ('老毛子');
INSERT INTO `sensitive_word_data` VALUES ('老母');
INSERT INTO `sensitive_word_data` VALUES ('黎阳评');
INSERT INTO `sensitive_word_data` VALUES ('李长春');
INSERT INTO `sensitive_word_data` VALUES ('李登辉');
INSERT INTO `sensitive_word_data` VALUES ('李弘旨');
INSERT INTO `sensitive_word_data` VALUES ('李红志');
INSERT INTO `sensitive_word_data` VALUES ('李宏旨');
INSERT INTO `sensitive_word_data` VALUES ('李宏志');
INSERT INTO `sensitive_word_data` VALUES ('李洪志');
INSERT INTO `sensitive_word_data` VALUES ('李岚清');
INSERT INTO `sensitive_word_data` VALUES ('李鹏');
INSERT INTO `sensitive_word_data` VALUES ('李鹏*');
INSERT INTO `sensitive_word_data` VALUES ('李瑞环');
INSERT INTO `sensitive_word_data` VALUES ('李山');
INSERT INTO `sensitive_word_data` VALUES ('李铁映');
INSERT INTO `sensitive_word_data` VALUES ('李先念');
INSERT INTO `sensitive_word_data` VALUES ('连战');
INSERT INTO `sensitive_word_data` VALUES ('联大');
INSERT INTO `sensitive_word_data` VALUES ('联合国');
INSERT INTO `sensitive_word_data` VALUES ('联合国大会');
INSERT INTO `sensitive_word_data` VALUES ('联易');
INSERT INTO `sensitive_word_data` VALUES ('联易互动');
INSERT INTO `sensitive_word_data` VALUES ('粮食局');
INSERT INTO `sensitive_word_data` VALUES ('两腿之间');
INSERT INTO `sensitive_word_data` VALUES ('列宁');
INSERT INTO `sensitive_word_data` VALUES ('林彪');
INSERT INTO `sensitive_word_data` VALUES ('林业局');
INSERT INTO `sensitive_word_data` VALUES ('刘　淇');
INSERT INTO `sensitive_word_data` VALUES ('刘军');
INSERT INTO `sensitive_word_data` VALUES ('刘淇');
INSERT INTO `sensitive_word_data` VALUES ('刘少奇');
INSERT INTO `sensitive_word_data` VALUES ('刘云山');
INSERT INTO `sensitive_word_data` VALUES ('流氓');
INSERT INTO `sensitive_word_data` VALUES ('六.四');
INSERT INTO `sensitive_word_data` VALUES ('六。四');
INSERT INTO `sensitive_word_data` VALUES ('六?四');
INSERT INTO `sensitive_word_data` VALUES ('六合彩');
INSERT INTO `sensitive_word_data` VALUES ('六四');
INSERT INTO `sensitive_word_data` VALUES ('六-四');
INSERT INTO `sensitive_word_data` VALUES ('六四事件');
INSERT INTO `sensitive_word_data` VALUES ('六四真相');
INSERT INTO `sensitive_word_data` VALUES ('龙新民');
INSERT INTO `sensitive_word_data` VALUES ('吕秀莲');
INSERT INTO `sensitive_word_data` VALUES ('旅游局');
INSERT INTO `sensitive_word_data` VALUES ('卵');
INSERT INTO `sensitive_word_data` VALUES ('轮功');
INSERT INTO `sensitive_word_data` VALUES ('轮奸');
INSERT INTO `sensitive_word_data` VALUES ('罗　干');
INSERT INTO `sensitive_word_data` VALUES ('罗干');
INSERT INTO `sensitive_word_data` VALUES ('骡干');
INSERT INTO `sensitive_word_data` VALUES ('妈逼');
INSERT INTO `sensitive_word_data` VALUES ('妈比');
INSERT INTO `sensitive_word_data` VALUES ('妈卖妈屁');
INSERT INTO `sensitive_word_data` VALUES ('妈批');
INSERT INTO `sensitive_word_data` VALUES ('妈祖');
INSERT INTO `sensitive_word_data` VALUES ('妈B');
INSERT INTO `sensitive_word_data` VALUES ('妈的');
INSERT INTO `sensitive_word_data` VALUES ('麻醉钢枪');
INSERT INTO `sensitive_word_data` VALUES ('麻醉枪');
INSERT INTO `sensitive_word_data` VALUES ('麻醉药');
INSERT INTO `sensitive_word_data` VALUES ('麻醉乙醚');
INSERT INTO `sensitive_word_data` VALUES ('马克思');
INSERT INTO `sensitive_word_data` VALUES ('马卖马屁');
INSERT INTO `sensitive_word_data` VALUES ('马英九');
INSERT INTO `sensitive_word_data` VALUES ('吗啡');
INSERT INTO `sensitive_word_data` VALUES ('吗啡碱');
INSERT INTO `sensitive_word_data` VALUES ('吗啡片');
INSERT INTO `sensitive_word_data` VALUES ('买财富');
INSERT INTO `sensitive_word_data` VALUES ('买卖枪支');
INSERT INTO `sensitive_word_data` VALUES ('麦角酸');
INSERT INTO `sensitive_word_data` VALUES ('卖.国');
INSERT INTO `sensitive_word_data` VALUES ('卖B');
INSERT INTO `sensitive_word_data` VALUES ('卖ID');
INSERT INTO `sensitive_word_data` VALUES ('卖QQ');
INSERT INTO `sensitive_word_data` VALUES ('卖逼');
INSERT INTO `sensitive_word_data` VALUES ('卖比');
INSERT INTO `sensitive_word_data` VALUES ('卖财富');
INSERT INTO `sensitive_word_data` VALUES ('卖党求荣');
INSERT INTO `sensitive_word_data` VALUES ('卖国');
INSERT INTO `sensitive_word_data` VALUES ('卖国求荣');
INSERT INTO `sensitive_word_data` VALUES ('卖号');
INSERT INTO `sensitive_word_data` VALUES ('卖卡');
INSERT INTO `sensitive_word_data` VALUES ('卖软件');
INSERT INTO `sensitive_word_data` VALUES ('卖淫');
INSERT INTO `sensitive_word_data` VALUES ('毛XX');
INSERT INTO `sensitive_word_data` VALUES ('毛厕洞');
INSERT INTO `sensitive_word_data` VALUES ('毛一鲜');
INSERT INTO `sensitive_word_data` VALUES ('毛泽东');
INSERT INTO `sensitive_word_data` VALUES ('毛贼东');
INSERT INTO `sensitive_word_data` VALUES ('毛主席');
INSERT INTO `sensitive_word_data` VALUES ('梅花网');
INSERT INTO `sensitive_word_data` VALUES ('美国');
INSERT INTO `sensitive_word_data` VALUES ('美国佬');
INSERT INTO `sensitive_word_data` VALUES ('美国之音');
INSERT INTO `sensitive_word_data` VALUES ('美利坚');
INSERT INTO `sensitive_word_data` VALUES ('蒙尘药');
INSERT INTO `sensitive_word_data` VALUES ('蒙独');
INSERT INTO `sensitive_word_data` VALUES ('蒙古达子');
INSERT INTO `sensitive_word_data` VALUES ('蒙古独立');
INSERT INTO `sensitive_word_data` VALUES ('迷魂药');
INSERT INTO `sensitive_word_data` VALUES ('迷奸药');
INSERT INTO `sensitive_word_data` VALUES ('迷歼药');
INSERT INTO `sensitive_word_data` VALUES ('迷药');
INSERT INTO `sensitive_word_data` VALUES ('密洞');
INSERT INTO `sensitive_word_data` VALUES ('密宗');
INSERT INTO `sensitive_word_data` VALUES ('民航局');
INSERT INTO `sensitive_word_data` VALUES ('民进党');
INSERT INTO `sensitive_word_data` VALUES ('民运');
INSERT INTO `sensitive_word_data` VALUES ('民政部');
INSERT INTO `sensitive_word_data` VALUES ('明慧网');
INSERT INTO `sensitive_word_data` VALUES ('摩门教');
INSERT INTO `sensitive_word_data` VALUES ('莫索里尼');
INSERT INTO `sensitive_word_data` VALUES ('穆罕默德');
INSERT INTO `sensitive_word_data` VALUES ('穆斯林');
INSERT INTO `sensitive_word_data` VALUES ('乳头');
INSERT INTO `sensitive_word_data` VALUES ('奶子');
INSERT INTO `sensitive_word_data` VALUES ('妳老母的');
INSERT INTO `sensitive_word_data` VALUES ('妳妈的');
INSERT INTO `sensitive_word_data` VALUES ('妳马的');
INSERT INTO `sensitive_word_data` VALUES ('妳娘的');
INSERT INTO `sensitive_word_data` VALUES ('南联盟');
INSERT INTO `sensitive_word_data` VALUES ('南蛮子');
INSERT INTO `sensitive_word_data` VALUES ('南蛮子');
INSERT INTO `sensitive_word_data` VALUES ('嫩B');
INSERT INTO `sensitive_word_data` VALUES ('嫩b');
INSERT INTO `sensitive_word_data` VALUES ('伱妈');
INSERT INTO `sensitive_word_data` VALUES ('你爸');
INSERT INTO `sensitive_word_data` VALUES ('你大爷');
INSERT INTO `sensitive_word_data` VALUES ('你二大爷');
INSERT INTO `sensitive_word_data` VALUES ('你老母');
INSERT INTO `sensitive_word_data` VALUES ('你老味');
INSERT INTO `sensitive_word_data` VALUES ('你姥');
INSERT INTO `sensitive_word_data` VALUES ('你姥姥的');
INSERT INTO `sensitive_word_data` VALUES ('你妈');
INSERT INTO `sensitive_word_data` VALUES ('你妈逼');
INSERT INTO `sensitive_word_data` VALUES ('你妈的');
INSERT INTO `sensitive_word_data` VALUES ('你娘');
INSERT INTO `sensitive_word_data` VALUES ('你爷爷的');
INSERT INTO `sensitive_word_data` VALUES ('鸟GM');
INSERT INTO `sensitive_word_data` VALUES ('鸟Gm');
INSERT INTO `sensitive_word_data` VALUES ('鸟gM');
INSERT INTO `sensitive_word_data` VALUES ('鸟gm');
INSERT INTO `sensitive_word_data` VALUES ('鸟你');
INSERT INTO `sensitive_word_data` VALUES ('牛逼');
INSERT INTO `sensitive_word_data` VALUES ('牛比');
INSERT INTO `sensitive_word_data` VALUES ('农业部');
INSERT INTO `sensitive_word_data` VALUES ('虐待');
INSERT INTO `sensitive_word_data` VALUES ('拍肩神药');
INSERT INTO `sensitive_word_data` VALUES ('喷你');
INSERT INTO `sensitive_word_data` VALUES ('彭真');
INSERT INTO `sensitive_word_data` VALUES ('皮条');
INSERT INTO `sensitive_word_data` VALUES ('屁眼');
INSERT INTO `sensitive_word_data` VALUES ('嫖客');
INSERT INTO `sensitive_word_data` VALUES ('苹果日报');
INSERT INTO `sensitive_word_data` VALUES ('破坏');
INSERT INTO `sensitive_word_data` VALUES ('破鞋');
INSERT INTO `sensitive_word_data` VALUES ('仆街');
INSERT INTO `sensitive_word_data` VALUES ('普京');
INSERT INTO `sensitive_word_data` VALUES ('气象局');
INSERT INTO `sensitive_word_data` VALUES ('钱其琛');
INSERT INTO `sensitive_word_data` VALUES ('枪决女犯');
INSERT INTO `sensitive_word_data` VALUES ('枪决现场');
INSERT INTO `sensitive_word_data` VALUES ('枪支弹药');
INSERT INTO `sensitive_word_data` VALUES ('强奸');
INSERT INTO `sensitive_word_data` VALUES ('强奸犯');
INSERT INTO `sensitive_word_data` VALUES ('强卫');
INSERT INTO `sensitive_word_data` VALUES ('强效失意药');
INSERT INTO `sensitive_word_data` VALUES ('强硬发言');
INSERT INTO `sensitive_word_data` VALUES ('抢劫');
INSERT INTO `sensitive_word_data` VALUES ('乔石');
INSERT INTO `sensitive_word_data` VALUES ('侨办');
INSERT INTO `sensitive_word_data` VALUES ('切七');
INSERT INTO `sensitive_word_data` VALUES ('窃听器');
INSERT INTO `sensitive_word_data` VALUES ('窃听器材');
INSERT INTO `sensitive_word_data` VALUES ('亲民党');
INSERT INTO `sensitive_word_data` VALUES ('青天白日');
INSERT INTO `sensitive_word_data` VALUES ('情色');
INSERT INTO `sensitive_word_data` VALUES ('去你妈的');
INSERT INTO `sensitive_word_data` VALUES ('去死');
INSERT INTO `sensitive_word_data` VALUES ('全国人大');
INSERT INTO `sensitive_word_data` VALUES ('瘸腿帮');
INSERT INTO `sensitive_word_data` VALUES ('人大');
INSERT INTO `sensitive_word_data` VALUES ('人大代表');
INSERT INTO `sensitive_word_data` VALUES ('人代会');
INSERT INTO `sensitive_word_data` VALUES ('ssb');
INSERT INTO `sensitive_word_data` VALUES ('人民');
INSERT INTO `sensitive_word_data` VALUES ('人民大会堂');
INSERT INTO `sensitive_word_data` VALUES ('人民广场');
INSERT INTO `sensitive_word_data` VALUES ('人民日报');
INSERT INTO `sensitive_word_data` VALUES ('人民银行');
INSERT INTO `sensitive_word_data` VALUES ('人体炸弹');
INSERT INTO `sensitive_word_data` VALUES ('日GM');
INSERT INTO `sensitive_word_data` VALUES ('日Gm');
INSERT INTO `sensitive_word_data` VALUES ('日gM');
INSERT INTO `sensitive_word_data` VALUES ('日gm');
INSERT INTO `sensitive_word_data` VALUES ('日X妈');
INSERT INTO `sensitive_word_data` VALUES ('日本RING');
INSERT INTO `sensitive_word_data` VALUES ('日本鬼子');
INSERT INTO `sensitive_word_data` VALUES ('日你');
INSERT INTO `sensitive_word_data` VALUES ('日你妈');
INSERT INTO `sensitive_word_data` VALUES ('日你娘');
INSERT INTO `sensitive_word_data` VALUES ('日他娘');
INSERT INTO `sensitive_word_data` VALUES ('肉棒');
INSERT INTO `sensitive_word_data` VALUES ('肉壁');
INSERT INTO `sensitive_word_data` VALUES ('肉洞');
INSERT INTO `sensitive_word_data` VALUES ('肉缝');
INSERT INTO `sensitive_word_data` VALUES ('肉棍');
INSERT INTO `sensitive_word_data` VALUES ('肉棍子');
INSERT INTO `sensitive_word_data` VALUES ('肉穴');
INSERT INTO `sensitive_word_data` VALUES ('乳');
INSERT INTO `sensitive_word_data` VALUES ('乳波臀浪');
INSERT INTO `sensitive_word_data` VALUES ('乳房');
INSERT INTO `sensitive_word_data` VALUES ('乳交');
INSERT INTO `sensitive_word_data` VALUES ('乳头');
INSERT INTO `sensitive_word_data` VALUES ('撒尿');
INSERT INTO `sensitive_word_data` VALUES ('萨达姆');
INSERT INTO `sensitive_word_data` VALUES ('塞白');
INSERT INTO `sensitive_word_data` VALUES ('塞你爸');
INSERT INTO `sensitive_word_data` VALUES ('塞你公');
INSERT INTO `sensitive_word_data` VALUES ('塞你老母');
INSERT INTO `sensitive_word_data` VALUES ('塞你老师');
INSERT INTO `sensitive_word_data` VALUES ('塞你母');
INSERT INTO `sensitive_word_data` VALUES ('塞你娘');
INSERT INTO `sensitive_word_data` VALUES ('三个呆婊');
INSERT INTO `sensitive_word_data` VALUES ('三个代婊');
INSERT INTO `sensitive_word_data` VALUES ('三级片');
INSERT INTO `sensitive_word_data` VALUES ('三民主义');
INSERT INTO `sensitive_word_data` VALUES ('三陪');
INSERT INTO `sensitive_word_data` VALUES ('三陪女');
INSERT INTO `sensitive_word_data` VALUES ('三去车仑');
INSERT INTO `sensitive_word_data` VALUES ('三唑仑');
INSERT INTO `sensitive_word_data` VALUES ('骚');
INSERT INTO `sensitive_word_data` VALUES ('骚B');
INSERT INTO `sensitive_word_data` VALUES ('骚逼');
INSERT INTO `sensitive_word_data` VALUES ('骚货');
INSERT INTO `sensitive_word_data` VALUES ('骚');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('色情电影');
INSERT INTO `sensitive_word_data` VALUES ('色情服务');
INSERT INTO `sensitive_word_data` VALUES ('色情小电影');
INSERT INTO `sensitive_word_data` VALUES ('杀人犯');
INSERT INTO `sensitive_word_data` VALUES ('傻B');
INSERT INTO `sensitive_word_data` VALUES ('傻屄');
INSERT INTO `sensitive_word_data` VALUES ('傻逼');
INSERT INTO `sensitive_word_data` VALUES ('傻比');
INSERT INTO `sensitive_word_data` VALUES ('傻吊');
INSERT INTO `sensitive_word_data` VALUES ('傻卵');
INSERT INTO `sensitive_word_data` VALUES ('傻子');
INSERT INTO `sensitive_word_data` VALUES ('煞逼');
INSERT INTO `sensitive_word_data` VALUES ('商务部');
INSERT INTO `sensitive_word_data` VALUES ('上妳');
INSERT INTO `sensitive_word_data` VALUES ('上你');
INSERT INTO `sensitive_word_data` VALUES ('社科院');
INSERT INTO `sensitive_word_data` VALUES ('射精');
INSERT INTO `sensitive_word_data` VALUES ('身份生成器');
INSERT INTO `sensitive_word_data` VALUES ('神经病');
INSERT INTO `sensitive_word_data` VALUES ('神通加持法');
INSERT INTO `sensitive_word_data` VALUES ('生鸦片');
INSERT INTO `sensitive_word_data` VALUES ('圣女峰');
INSERT INTO `sensitive_word_data` VALUES ('十八摸');
INSERT INTO `sensitive_word_data` VALUES ('十年动乱石进');
INSERT INTO `sensitive_word_data` VALUES ('食捻屎');
INSERT INTO `sensitive_word_data` VALUES ('食屎');
INSERT INTO `sensitive_word_data` VALUES ('驶你爸');
INSERT INTO `sensitive_word_data` VALUES ('驶你公');
INSERT INTO `sensitive_word_data` VALUES ('驶你老母');
INSERT INTO `sensitive_word_data` VALUES ('驶你老师');
INSERT INTO `sensitive_word_data` VALUES ('驶你母');
INSERT INTO `sensitive_word_data` VALUES ('驶你娘');
INSERT INTO `sensitive_word_data` VALUES ('是鸡');
INSERT INTO `sensitive_word_data` VALUES ('手淫');
INSERT INTO `sensitive_word_data` VALUES ('受虐狂');
INSERT INTO `sensitive_word_data` VALUES ('售ID');
INSERT INTO `sensitive_word_data` VALUES ('售号');
INSERT INTO `sensitive_word_data` VALUES ('售软件');
INSERT INTO `sensitive_word_data` VALUES ('双峰微颤');
INSERT INTO `sensitive_word_data` VALUES ('氵去');
INSERT INTO `sensitive_word_data` VALUES ('水利部');
INSERT INTO `sensitive_word_data` VALUES ('水去车仑');
INSERT INTO `sensitive_word_data` VALUES ('税务总局');
INSERT INTO `sensitive_word_data` VALUES ('司法部');
INSERT INTO `sensitive_word_data` VALUES ('私服');
INSERT INTO `sensitive_word_data` VALUES ('私/服');
INSERT INTO `sensitive_word_data` VALUES ('私\\\\服');
INSERT INTO `sensitive_word_data` VALUES ('私服');
INSERT INTO `sensitive_word_data` VALUES ('私-服');
INSERT INTO `sensitive_word_data` VALUES ('私—服');
INSERT INTO `sensitive_word_data` VALUES ('斯大林');
INSERT INTO `sensitive_word_data` VALUES ('死gd');
INSERT INTO `sensitive_word_data` VALUES ('死GD');
INSERT INTO `sensitive_word_data` VALUES ('死gm');
INSERT INTO `sensitive_word_data` VALUES ('死GM');
INSERT INTO `sensitive_word_data` VALUES ('死全家');
INSERT INTO `sensitive_word_data` VALUES ('四川独立');
INSERT INTO `sensitive_word_data` VALUES ('四人帮');
INSERT INTO `sensitive_word_data` VALUES ('宋楚瑜');
INSERT INTO `sensitive_word_data` VALUES ('宋祖英');
INSERT INTO `sensitive_word_data` VALUES ('孙文');
INSERT INTO `sensitive_word_data` VALUES ('孙逸仙');
INSERT INTO `sensitive_word_data` VALUES ('孙中山');
INSERT INTO `sensitive_word_data` VALUES ('他爹');
INSERT INTO `sensitive_word_data` VALUES ('他妈');
INSERT INTO `sensitive_word_data` VALUES ('他妈的');
INSERT INTO `sensitive_word_data` VALUES ('他马的');
INSERT INTO `sensitive_word_data` VALUES ('他母亲');
INSERT INTO `sensitive_word_data` VALUES ('他祖宗');
INSERT INTO `sensitive_word_data` VALUES ('台办');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('台联');
INSERT INTO `sensitive_word_data` VALUES ('台湾党');
INSERT INTO `sensitive_word_data` VALUES ('台湾帝国');
INSERT INTO `sensitive_word_data` VALUES ('台湾独立');
INSERT INTO `sensitive_word_data` VALUES ('台湾共产党');
INSERT INTO `sensitive_word_data` VALUES ('台湾共和国');
INSERT INTO `sensitive_word_data` VALUES ('台湾狗');
INSERT INTO `sensitive_word_data` VALUES ('台湾国');
INSERT INTO `sensitive_word_data` VALUES ('台湾民国');
INSERT INTO `sensitive_word_data` VALUES ('太监');
INSERT INTO `sensitive_word_data` VALUES ('太子党');
INSERT INTO `sensitive_word_data` VALUES ('唐家璇');
INSERT INTO `sensitive_word_data` VALUES ('天皇陛下');
INSERT INTO `sensitive_word_data` VALUES ('田纪云');
INSERT INTO `sensitive_word_data` VALUES ('舔西');
INSERT INTO `sensitive_word_data` VALUES ('投毒杀人');
INSERT INTO `sensitive_word_data` VALUES ('透视软件');
INSERT INTO `sensitive_word_data` VALUES ('推油');
INSERT INTO `sensitive_word_data` VALUES ('外　挂');
INSERT INTO `sensitive_word_data` VALUES ('外挂');
INSERT INTO `sensitive_word_data` VALUES ('外/挂');
INSERT INTO `sensitive_word_data` VALUES ('外\\\\挂');
INSERT INTO `sensitive_word_data` VALUES ('外_挂');
INSERT INTO `sensitive_word_data` VALUES ('外挂');
INSERT INTO `sensitive_word_data` VALUES ('外-挂');
INSERT INTO `sensitive_word_data` VALUES ('外—挂');
INSERT INTO `sensitive_word_data` VALUES ('外汇局');
INSERT INTO `sensitive_word_data` VALUES ('外交部');
INSERT INTO `sensitive_word_data` VALUES ('外专局');
INSERT INTO `sensitive_word_data` VALUES ('晚年周恩来');
INSERT INTO `sensitive_word_data` VALUES ('万税');
INSERT INTO `sensitive_word_data` VALUES ('王八蛋');
INSERT INTO `sensitive_word_data` VALUES ('王宝森');
INSERT INTO `sensitive_word_data` VALUES ('王刚');
INSERT INTO `sensitive_word_data` VALUES ('王昊');
INSERT INTO `sensitive_word_data` VALUES ('王乐泉');
INSERT INTO `sensitive_word_data` VALUES ('王岐山');
INSERT INTO `sensitive_word_data` VALUES ('王太华');
INSERT INTO `sensitive_word_data` VALUES ('王兆国');
INSERT INTO `sensitive_word_data` VALUES ('王震');
INSERT INTO `sensitive_word_data` VALUES ('网管');
INSERT INTO `sensitive_word_data` VALUES ('威而钢');
INSERT INTO `sensitive_word_data` VALUES ('威而柔');
INSERT INTO `sensitive_word_data` VALUES ('卫生部');
INSERT INTO `sensitive_word_data` VALUES ('尉健行');
INSERT INTO `sensitive_word_data` VALUES ('温加宝');
INSERT INTO `sensitive_word_data` VALUES ('温家宝');
INSERT INTO `sensitive_word_data` VALUES ('温家保');
INSERT INTO `sensitive_word_data` VALUES ('温馨');
INSERT INTO `sensitive_word_data` VALUES ('温总理');
INSERT INTO `sensitive_word_data` VALUES ('文化部');
INSERT INTO `sensitive_word_data` VALUES ('文物局');
INSERT INTO `sensitive_word_data` VALUES ('倭国');
INSERT INTO `sensitive_word_data` VALUES ('倭寇');
INSERT INTO `sensitive_word_data` VALUES ('我操');
INSERT INTO `sensitive_word_data` VALUES ('我操你');
INSERT INTO `sensitive_word_data` VALUES ('我干');
INSERT INTO `sensitive_word_data` VALUES ('我妳老爸');
INSERT INTO `sensitive_word_data` VALUES ('我日');
INSERT INTO `sensitive_word_data` VALUES ('我日你');
INSERT INTO `sensitive_word_data` VALUES ('无界浏览器');
INSERT INTO `sensitive_word_data` VALUES ('吴　仪');
INSERT INTO `sensitive_word_data` VALUES ('吴邦国');
INSERT INTO `sensitive_word_data` VALUES ('吴官正');
INSERT INTO `sensitive_word_data` VALUES ('吴仪');
INSERT INTO `sensitive_word_data` VALUES ('五星红旗');
INSERT INTO `sensitive_word_data` VALUES ('西藏独立');
INSERT INTO `sensitive_word_data` VALUES ('西藏天葬');
INSERT INTO `sensitive_word_data` VALUES ('希拉克');
INSERT INTO `sensitive_word_data` VALUES ('希特勒');
INSERT INTO `sensitive_word_data` VALUES ('希望之声');
INSERT INTO `sensitive_word_data` VALUES ('洗脑班');
INSERT INTO `sensitive_word_data` VALUES ('系统');
INSERT INTO `sensitive_word_data` VALUES ('系统公告');
INSERT INTO `sensitive_word_data` VALUES ('系统讯息');
INSERT INTO `sensitive_word_data` VALUES ('鲜族');
INSERT INTO `sensitive_word_data` VALUES ('乡巴佬');
INSERT INTO `sensitive_word_data` VALUES ('想上你');
INSERT INTO `sensitive_word_data` VALUES ('小鸡鸡');
INSERT INTO `sensitive_word_data` VALUES ('小泉');
INSERT INTO `sensitive_word_data` VALUES ('小泉纯一郎');
INSERT INTO `sensitive_word_data` VALUES ('小日本');
INSERT INTO `sensitive_word_data` VALUES ('小肉粒');
INSERT INTO `sensitive_word_data` VALUES ('小乳头');
INSERT INTO `sensitive_word_data` VALUES ('小穴');
INSERT INTO `sensitive_word_data` VALUES ('邪教');
INSERT INTO `sensitive_word_data` VALUES ('新疆独立');
INSERT INTO `sensitive_word_data` VALUES ('兴奋剂');
INSERT INTO `sensitive_word_data` VALUES ('性爱');
INSERT INTO `sensitive_word_data` VALUES ('性交');
INSERT INTO `sensitive_word_data` VALUES ('性虐待');
INSERT INTO `sensitive_word_data` VALUES ('性无能');
INSERT INTO `sensitive_word_data` VALUES ('性欲');
INSERT INTO `sensitive_word_data` VALUES ('徐光春');
INSERT INTO `sensitive_word_data` VALUES ('学潮');
INSERT INTO `sensitive_word_data` VALUES ('血逼');
INSERT INTO `sensitive_word_data` VALUES ('血腥图片');
INSERT INTO `sensitive_word_data` VALUES ('鸦片');
INSERT INTO `sensitive_word_data` VALUES ('鸦片液');
INSERT INTO `sensitive_word_data` VALUES ('鸦片渣');
INSERT INTO `sensitive_word_data` VALUES ('烟草局');
INSERT INTO `sensitive_word_data` VALUES ('严方军');
INSERT INTO `sensitive_word_data` VALUES ('阳精');
INSERT INTO `sensitive_word_data` VALUES ('阳具');
INSERT INTO `sensitive_word_data` VALUES ('摇头丸');
INSERT INTO `sensitive_word_data` VALUES ('摇头玩');
INSERT INTO `sensitive_word_data` VALUES ('耶和华');
INSERT INTO `sensitive_word_data` VALUES ('耶苏');
INSERT INTO `sensitive_word_data` VALUES ('耶稣');
INSERT INTO `sensitive_word_data` VALUES ('叶剑英');
INSERT INTO `sensitive_word_data` VALUES ('夜情');
INSERT INTO `sensitive_word_data` VALUES ('一党专制');
INSERT INTO `sensitive_word_data` VALUES ('一贯道');
INSERT INTO `sensitive_word_data` VALUES ('一国两制');
INSERT INTO `sensitive_word_data` VALUES ('一夜情');
INSERT INTO `sensitive_word_data` VALUES ('一中一台');
INSERT INTO `sensitive_word_data` VALUES ('伊拉克');
INSERT INTO `sensitive_word_data` VALUES ('伊朗');
INSERT INTO `sensitive_word_data` VALUES ('伊斯兰');
INSERT INTO `sensitive_word_data` VALUES ('以茎至洞');
INSERT INTO `sensitive_word_data` VALUES ('抑制剂');
INSERT INTO `sensitive_word_data` VALUES ('阴部');
INSERT INTO `sensitive_word_data` VALUES ('阴唇');
INSERT INTO `sensitive_word_data` VALUES ('阴道');
INSERT INTO `sensitive_word_data` VALUES ('阴蒂');
INSERT INTO `sensitive_word_data` VALUES ('阴核');
INSERT INTO `sensitive_word_data` VALUES ('阴户');
INSERT INTO `sensitive_word_data` VALUES ('阴茎');
INSERT INTO `sensitive_word_data` VALUES ('阴毛');
INSERT INTO `sensitive_word_data` VALUES ('阴水');
INSERT INTO `sensitive_word_data` VALUES ('阴小撕大');
INSERT INTO `sensitive_word_data` VALUES ('淫');
INSERT INTO `sensitive_word_data` VALUES ('淫荡');
INSERT INTO `sensitive_word_data` VALUES ('淫秽');
INSERT INTO `sensitive_word_data` VALUES ('淫货');
INSERT INTO `sensitive_word_data` VALUES ('淫贱');
INSERT INTO `sensitive_word_data` VALUES ('淫叫');
INSERT INTO `sensitive_word_data` VALUES ('淫毛');
INSERT INTO `sensitive_word_data` VALUES ('淫靡');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('淫娃');
INSERT INTO `sensitive_word_data` VALUES ('淫语连连');
INSERT INTO `sensitive_word_data` VALUES ('淫欲');
INSERT INTO `sensitive_word_data` VALUES ('英雄纪念碑');
INSERT INTO `sensitive_word_data` VALUES ('硬挺');
INSERT INTO `sensitive_word_data` VALUES ('邮政局');
INSERT INTO `sensitive_word_data` VALUES ('游戏发奖员');
INSERT INTO `sensitive_word_data` VALUES ('游戏宫理员');
INSERT INTO `sensitive_word_data` VALUES ('游戏管理员');
INSERT INTO `sensitive_word_data` VALUES ('游行');
INSERT INTO `sensitive_word_data` VALUES ('俞正声');
INSERT INTO `sensitive_word_data` VALUES ('舆论钳制');
INSERT INTO `sensitive_word_data` VALUES ('玉杵');
INSERT INTO `sensitive_word_data` VALUES ('欲火焚身');
INSERT INTO `sensitive_word_data` VALUES ('原子能机构');
INSERT INTO `sensitive_word_data` VALUES ('援交');
INSERT INTO `sensitive_word_data` VALUES ('远程偷拍');
INSERT INTO `sensitive_word_data` VALUES ('曰GM');
INSERT INTO `sensitive_word_data` VALUES ('曰Gm');
INSERT INTO `sensitive_word_data` VALUES ('曰gM');
INSERT INTO `sensitive_word_data` VALUES ('曰gm');
INSERT INTO `sensitive_word_data` VALUES ('曰你');
INSERT INTO `sensitive_word_data` VALUES ('月经');
INSERT INTO `sensitive_word_data` VALUES ('月经不调');
INSERT INTO `sensitive_word_data` VALUES ('月经');
INSERT INTO `sensitive_word_data` VALUES ('扎卡维是英雄');
INSERT INTO `sensitive_word_data` VALUES ('杂种');
INSERT INTO `sensitive_word_data` VALUES ('造反');
INSERT INTO `sensitive_word_data` VALUES ('曾培炎');
INSERT INTO `sensitive_word_data` VALUES ('曾庆红');
INSERT INTO `sensitive_word_data` VALUES ('扎卡维');
INSERT INTO `sensitive_word_data` VALUES ('张朝阳');
INSERT INTO `sensitive_word_data` VALUES ('张潮阳');
INSERT INTO `sensitive_word_data` VALUES ('张德江');
INSERT INTO `sensitive_word_data` VALUES ('张磊');
INSERT INTO `sensitive_word_data` VALUES ('张立昌');
INSERT INTO `sensitive_word_data` VALUES ('张小平');
INSERT INTO `sensitive_word_data` VALUES ('赵紫阳');
INSERT INTO `sensitive_word_data` VALUES ('侦探设备');
INSERT INTO `sensitive_word_data` VALUES ('真理教');
INSERT INTO `sensitive_word_data` VALUES ('中国恐怖组织');
INSERT INTO `sensitive_word_data` VALUES ('中华民国');
INSERT INTO `sensitive_word_data` VALUES ('中南海');
INSERT INTO `sensitive_word_data` VALUES ('中宣部');
INSERT INTO `sensitive_word_data` VALUES ('周恩来');
INSERT INTO `sensitive_word_data` VALUES ('周永康');
INSERT INTO `sensitive_word_data` VALUES ('周总理');
INSERT INTO `sensitive_word_data` VALUES ('朱德');
INSERT INTO `sensitive_word_data` VALUES ('朱容鸡');
INSERT INTO `sensitive_word_data` VALUES ('朱容基');
INSERT INTO `sensitive_word_data` VALUES ('朱熔基');
INSERT INTO `sensitive_word_data` VALUES ('朱镕基');
INSERT INTO `sensitive_word_data` VALUES ('朱总理');
INSERT INTO `sensitive_word_data` VALUES ('猪操');
INSERT INTO `sensitive_word_data` VALUES ('猪容基');
INSERT INTO `sensitive_word_data` VALUES ('主席');
INSERT INTO `sensitive_word_data` VALUES ('转法轮');
INSERT INTO `sensitive_word_data` VALUES ('转法轮');
INSERT INTO `sensitive_word_data` VALUES ('装屄');
INSERT INTO `sensitive_word_data` VALUES ('装逼');
INSERT INTO `sensitive_word_data` VALUES ('追查国际');
INSERT INTO `sensitive_word_data` VALUES ('子女任职名单');
INSERT INTO `sensitive_word_data` VALUES ('自焚');
INSERT INTO `sensitive_word_data` VALUES ('自杀手册');
INSERT INTO `sensitive_word_data` VALUES ('自杀指南');
INSERT INTO `sensitive_word_data` VALUES ('自制手枪');
INSERT INTO `sensitive_word_data` VALUES ('自治机关');
INSERT INTO `sensitive_word_data` VALUES ('宗教');
INSERT INTO `sensitive_word_data` VALUES ('总局');
INSERT INTO `sensitive_word_data` VALUES ('总理');
INSERT INTO `sensitive_word_data` VALUES ('作爱');
INSERT INTO `sensitive_word_data` VALUES ('坐台的');
INSERT INTO `sensitive_word_data` VALUES ('做爱');
INSERT INTO `sensitive_word_data` VALUES ('共产党');
INSERT INTO `sensitive_word_data` VALUES ('江泽民');
INSERT INTO `sensitive_word_data` VALUES ('胡锦涛');
INSERT INTO `sensitive_word_data` VALUES ('温家宝');
INSERT INTO `sensitive_word_data` VALUES ('严方军');
INSERT INTO `sensitive_word_data` VALUES ('屄毛');
INSERT INTO `sensitive_word_data` VALUES ('操逼毛');
INSERT INTO `sensitive_word_data` VALUES ('东突');
INSERT INTO `sensitive_word_data` VALUES ('骚货');
INSERT INTO `sensitive_word_data` VALUES ('婊子');
INSERT INTO `sensitive_word_data` VALUES ('妓女');
INSERT INTO `sensitive_word_data` VALUES ('他妈');
INSERT INTO `sensitive_word_data` VALUES ('她妈');
INSERT INTO `sensitive_word_data` VALUES ('牛逼');
INSERT INTO `sensitive_word_data` VALUES ('牛比');
INSERT INTO `sensitive_word_data` VALUES ('牛B');
INSERT INTO `sensitive_word_data` VALUES ('煞笔');
INSERT INTO `sensitive_word_data` VALUES ('傻逼');
INSERT INTO `sensitive_word_data` VALUES ('傻B');
INSERT INTO `sensitive_word_data` VALUES ('你妈');
INSERT INTO `sensitive_word_data` VALUES ('操你妈');
INSERT INTO `sensitive_word_data` VALUES ('装逼');
INSERT INTO `sensitive_word_data` VALUES ('装B');
INSERT INTO `sensitive_word_data` VALUES ('日你妈');
INSERT INTO `sensitive_word_data` VALUES ('不玩了');
INSERT INTO `sensitive_word_data` VALUES ('删号');
INSERT INTO `sensitive_word_data` VALUES ('卖号');
INSERT INTO `sensitive_word_data` VALUES ('垃圾游戏');
INSERT INTO `sensitive_word_data` VALUES ('烂游戏');
INSERT INTO `sensitive_word_data` VALUES ('删号');
INSERT INTO `sensitive_word_data` VALUES ('妈的');
INSERT INTO `sensitive_word_data` VALUES ('妈逼');
INSERT INTO `sensitive_word_data` VALUES ('草你妈');
INSERT INTO `sensitive_word_data` VALUES ('T.M.D');
INSERT INTO `sensitive_word_data` VALUES ('JB');
INSERT INTO `sensitive_word_data` VALUES ('jb');
INSERT INTO `sensitive_word_data` VALUES ('淘宝');
INSERT INTO `sensitive_word_data` VALUES ('出售账号');
INSERT INTO `sensitive_word_data` VALUES ('出售此号');
INSERT INTO `sensitive_word_data` VALUES ('卖号');
INSERT INTO `sensitive_word_data` VALUES ('U/R');
INSERT INTO `sensitive_word_data` VALUES ('U-R');
INSERT INTO `sensitive_word_data` VALUES ('cao');
INSERT INTO `sensitive_word_data` VALUES ('j8');
INSERT INTO `sensitive_word_data` VALUES ('吗的');
INSERT INTO `sensitive_word_data` VALUES ('8仙');
INSERT INTO `sensitive_word_data` VALUES ('狗日');
INSERT INTO `sensitive_word_data` VALUES ('出售神符');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('黄色');
INSERT INTO `sensitive_word_data` VALUES ('h站');
INSERT INTO `sensitive_word_data` VALUES ('龙虎');
INSERT INTO `sensitive_word_data` VALUES ('虎门');
INSERT INTO `sensitive_word_data` VALUES ('龙虎门');
INSERT INTO `sensitive_word_data` VALUES ('WEB牌戰');
INSERT INTO `sensitive_word_data` VALUES ('WEB战牌');
INSERT INTO `sensitive_word_data` VALUES ('战牌');
INSERT INTO `sensitive_word_data` VALUES ('8仙');
INSERT INTO `sensitive_word_data` VALUES ('ＵＲ');
INSERT INTO `sensitive_word_data` VALUES ('ur');
INSERT INTO `sensitive_word_data` VALUES ('UR');
INSERT INTO `sensitive_word_data` VALUES ('街头对抗');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('法轮大法');
INSERT INTO `sensitive_word_data` VALUES ('混沌决');
INSERT INTO `sensitive_word_data` VALUES ('ur');
INSERT INTO `sensitive_word_data` VALUES ('UR');
INSERT INTO `sensitive_word_data` VALUES ('urban');
INSERT INTO `sensitive_word_data` VALUES ('鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('坐台的');
INSERT INTO `sensitive_word_data` VALUES ('作爱');
INSERT INTO `sensitive_word_data` VALUES ('总理');
INSERT INTO `sensitive_word_data` VALUES ('宗教');
INSERT INTO `sensitive_word_data` VALUES ('自治机关');
INSERT INTO `sensitive_word_data` VALUES ('自制手枪');
INSERT INTO `sensitive_word_data` VALUES ('你大爷');
INSERT INTO `sensitive_word_data` VALUES ('你二大爷');
INSERT INTO `sensitive_word_data` VALUES ('你老母');
INSERT INTO `sensitive_word_data` VALUES ('你老味');
INSERT INTO `sensitive_word_data` VALUES ('你姥');
INSERT INTO `sensitive_word_data` VALUES ('你姥姥的');
INSERT INTO `sensitive_word_data` VALUES ('你妈');
INSERT INTO `sensitive_word_data` VALUES ('你妈逼');
INSERT INTO `sensitive_word_data` VALUES ('你妈的');
INSERT INTO `sensitive_word_data` VALUES ('你娘');
INSERT INTO `sensitive_word_data` VALUES ('你爷爷的');
INSERT INTO `sensitive_word_data` VALUES ('鸟GM');
INSERT INTO `sensitive_word_data` VALUES ('鸟Gm');
INSERT INTO `sensitive_word_data` VALUES ('鸟gM');
INSERT INTO `sensitive_word_data` VALUES ('鸟gm');
INSERT INTO `sensitive_word_data` VALUES ('鸟你');
INSERT INTO `sensitive_word_data` VALUES ('牛逼');
INSERT INTO `sensitive_word_data` VALUES ('牛比');
INSERT INTO `sensitive_word_data` VALUES ('农业部');
INSERT INTO `sensitive_word_data` VALUES ('虐待');
INSERT INTO `sensitive_word_data` VALUES ('拍肩神药');
INSERT INTO `sensitive_word_data` VALUES ('喷你');
INSERT INTO `sensitive_word_data` VALUES ('彭真');
INSERT INTO `sensitive_word_data` VALUES ('皮条');
INSERT INTO `sensitive_word_data` VALUES ('屁眼');
INSERT INTO `sensitive_word_data` VALUES ('嫖客');
INSERT INTO `sensitive_word_data` VALUES ('苹果日报');
INSERT INTO `sensitive_word_data` VALUES ('破坏');
INSERT INTO `sensitive_word_data` VALUES ('破鞋');
INSERT INTO `sensitive_word_data` VALUES ('仆街');
INSERT INTO `sensitive_word_data` VALUES ('普京');
INSERT INTO `sensitive_word_data` VALUES ('气象局');
INSERT INTO `sensitive_word_data` VALUES ('钱其琛');
INSERT INTO `sensitive_word_data` VALUES ('枪决女犯');
INSERT INTO `sensitive_word_data` VALUES ('枪决现场');
INSERT INTO `sensitive_word_data` VALUES ('枪支弹药');
INSERT INTO `sensitive_word_data` VALUES ('强奸');
INSERT INTO `sensitive_word_data` VALUES ('强奸犯');
INSERT INTO `sensitive_word_data` VALUES ('强卫');
INSERT INTO `sensitive_word_data` VALUES ('强效失意药');
INSERT INTO `sensitive_word_data` VALUES ('强硬发言');
INSERT INTO `sensitive_word_data` VALUES ('抢劫');
INSERT INTO `sensitive_word_data` VALUES ('乔石');
INSERT INTO `sensitive_word_data` VALUES ('侨办');
INSERT INTO `sensitive_word_data` VALUES ('切七');
INSERT INTO `sensitive_word_data` VALUES ('窃听器');
INSERT INTO `sensitive_word_data` VALUES ('窃听器材');
INSERT INTO `sensitive_word_data` VALUES ('亲民党');
INSERT INTO `sensitive_word_data` VALUES ('青天白日');
INSERT INTO `sensitive_word_data` VALUES ('情色');
INSERT INTO `sensitive_word_data` VALUES ('去你妈的');
INSERT INTO `sensitive_word_data` VALUES ('去死');
INSERT INTO `sensitive_word_data` VALUES ('全国人大');
INSERT INTO `sensitive_word_data` VALUES ('瘸腿帮');
INSERT INTO `sensitive_word_data` VALUES ('人大');
INSERT INTO `sensitive_word_data` VALUES ('人大代表');
INSERT INTO `sensitive_word_data` VALUES ('人代会');
INSERT INTO `sensitive_word_data` VALUES ('人弹');
INSERT INTO `sensitive_word_data` VALUES ('人民');
INSERT INTO `sensitive_word_data` VALUES ('人民大会堂');
INSERT INTO `sensitive_word_data` VALUES ('人民广场');
INSERT INTO `sensitive_word_data` VALUES ('人民日报');
INSERT INTO `sensitive_word_data` VALUES ('人民银行');
INSERT INTO `sensitive_word_data` VALUES ('人体炸弹');
INSERT INTO `sensitive_word_data` VALUES ('日GM');
INSERT INTO `sensitive_word_data` VALUES ('日Gm');
INSERT INTO `sensitive_word_data` VALUES ('日gM');
INSERT INTO `sensitive_word_data` VALUES ('日gm');
INSERT INTO `sensitive_word_data` VALUES ('日X妈');
INSERT INTO `sensitive_word_data` VALUES ('日本RING');
INSERT INTO `sensitive_word_data` VALUES ('日本鬼子');
INSERT INTO `sensitive_word_data` VALUES ('日你');
INSERT INTO `sensitive_word_data` VALUES ('日你妈');
INSERT INTO `sensitive_word_data` VALUES ('日你娘');
INSERT INTO `sensitive_word_data` VALUES ('日他娘');
INSERT INTO `sensitive_word_data` VALUES ('肉棒');
INSERT INTO `sensitive_word_data` VALUES ('肉壁');
INSERT INTO `sensitive_word_data` VALUES ('肉洞');
INSERT INTO `sensitive_word_data` VALUES ('肉缝');
INSERT INTO `sensitive_word_data` VALUES ('肉棍');
INSERT INTO `sensitive_word_data` VALUES ('肉棍子');
INSERT INTO `sensitive_word_data` VALUES ('肉穴');
INSERT INTO `sensitive_word_data` VALUES ('乳');
INSERT INTO `sensitive_word_data` VALUES ('乳波臀浪');
INSERT INTO `sensitive_word_data` VALUES ('乳房');
INSERT INTO `sensitive_word_data` VALUES ('乳交');
INSERT INTO `sensitive_word_data` VALUES ('乳头');
INSERT INTO `sensitive_word_data` VALUES ('撒尿');
INSERT INTO `sensitive_word_data` VALUES ('萨达姆');
INSERT INTO `sensitive_word_data` VALUES ('塞白');
INSERT INTO `sensitive_word_data` VALUES ('塞你爸');
INSERT INTO `sensitive_word_data` VALUES ('塞你公');
INSERT INTO `sensitive_word_data` VALUES ('塞你老母');
INSERT INTO `sensitive_word_data` VALUES ('塞你老师');
INSERT INTO `sensitive_word_data` VALUES ('塞你母');
INSERT INTO `sensitive_word_data` VALUES ('塞你娘');
INSERT INTO `sensitive_word_data` VALUES ('三个呆婊');
INSERT INTO `sensitive_word_data` VALUES ('三个代婊');
INSERT INTO `sensitive_word_data` VALUES ('三级片');
INSERT INTO `sensitive_word_data` VALUES ('三民主义');
INSERT INTO `sensitive_word_data` VALUES ('三陪');
INSERT INTO `sensitive_word_data` VALUES ('三陪女');
INSERT INTO `sensitive_word_data` VALUES ('三去车仑');
INSERT INTO `sensitive_word_data` VALUES ('三唑仑');
INSERT INTO `sensitive_word_data` VALUES ('骚');
INSERT INTO `sensitive_word_data` VALUES ('骚B');
INSERT INTO `sensitive_word_data` VALUES ('骚逼');
INSERT INTO `sensitive_word_data` VALUES ('骚货');
INSERT INTO `sensitive_word_data` VALUES ('骚');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('色情电影');
INSERT INTO `sensitive_word_data` VALUES ('色情服务');
INSERT INTO `sensitive_word_data` VALUES ('色情小电影');
INSERT INTO `sensitive_word_data` VALUES ('杀人犯');
INSERT INTO `sensitive_word_data` VALUES ('傻B');
INSERT INTO `sensitive_word_data` VALUES ('傻屄');
INSERT INTO `sensitive_word_data` VALUES ('傻逼');
INSERT INTO `sensitive_word_data` VALUES ('傻比');
INSERT INTO `sensitive_word_data` VALUES ('傻吊');
INSERT INTO `sensitive_word_data` VALUES ('傻卵');
INSERT INTO `sensitive_word_data` VALUES ('傻子');
INSERT INTO `sensitive_word_data` VALUES ('煞逼');
INSERT INTO `sensitive_word_data` VALUES ('商务部');
INSERT INTO `sensitive_word_data` VALUES ('上妳');
INSERT INTO `sensitive_word_data` VALUES ('上你');
INSERT INTO `sensitive_word_data` VALUES ('社.会.正.义.力.量');
INSERT INTO `sensitive_word_data` VALUES ('社保基金会');
INSERT INTO `sensitive_word_data` VALUES ('社会主义');
INSERT INTO `sensitive_word_data` VALUES ('社科院');
INSERT INTO `sensitive_word_data` VALUES ('射精');
INSERT INTO `sensitive_word_data` VALUES ('身份生成器');
INSERT INTO `sensitive_word_data` VALUES ('神经病');
INSERT INTO `sensitive_word_data` VALUES ('神通加持法');
INSERT INTO `sensitive_word_data` VALUES ('审计署');
INSERT INTO `sensitive_word_data` VALUES ('升达毕业证');
INSERT INTO `sensitive_word_data` VALUES ('生春袋');
INSERT INTO `sensitive_word_data` VALUES ('生孩子没屁眼');
INSERT INTO `sensitive_word_data` VALUES ('生鸦片');
INSERT INTO `sensitive_word_data` VALUES ('圣女峰');
INSERT INTO `sensitive_word_data` VALUES ('湿透的内裤');
INSERT INTO `sensitive_word_data` VALUES ('十八摸');
INSERT INTO `sensitive_word_data` VALUES ('十年动乱');
INSERT INTO `sensitive_word_data` VALUES ('十五周年');
INSERT INTO `sensitive_word_data` VALUES ('石进');
INSERT INTO `sensitive_word_data` VALUES ('食捻屎');
INSERT INTO `sensitive_word_data` VALUES ('食屎');
INSERT INTO `sensitive_word_data` VALUES ('驶你爸');
INSERT INTO `sensitive_word_data` VALUES ('驶你公');
INSERT INTO `sensitive_word_data` VALUES ('驶你老母');
INSERT INTO `sensitive_word_data` VALUES ('驶你老师');
INSERT INTO `sensitive_word_data` VALUES ('驶你母');
INSERT INTO `sensitive_word_data` VALUES ('驶你娘');
INSERT INTO `sensitive_word_data` VALUES ('世界日报');
INSERT INTO `sensitive_word_data` VALUES ('是鸡');
INSERT INTO `sensitive_word_data` VALUES ('手机复制');
INSERT INTO `sensitive_word_data` VALUES ('手淫');
INSERT INTO `sensitive_word_data` VALUES ('受虐狂');
INSERT INTO `sensitive_word_data` VALUES ('售ID');
INSERT INTO `sensitive_word_data` VALUES ('售号');
INSERT INTO `sensitive_word_data` VALUES ('售软件');
INSERT INTO `sensitive_word_data` VALUES ('双峰微颤');
INSERT INTO `sensitive_word_data` VALUES ('氵去');
INSERT INTO `sensitive_word_data` VALUES ('水利部');
INSERT INTO `sensitive_word_data` VALUES ('水去车仑');
INSERT INTO `sensitive_word_data` VALUES ('税务总局');
INSERT INTO `sensitive_word_data` VALUES ('司法部');
INSERT INTO `sensitive_word_data` VALUES ('私服');
INSERT INTO `sensitive_word_data` VALUES ('私/服');
INSERT INTO `sensitive_word_data` VALUES ('私\\\\服');
INSERT INTO `sensitive_word_data` VALUES ('私服');
INSERT INTO `sensitive_word_data` VALUES ('私-服');
INSERT INTO `sensitive_word_data` VALUES ('私—服');
INSERT INTO `sensitive_word_data` VALUES ('斯大林');
INSERT INTO `sensitive_word_data` VALUES ('死gd');
INSERT INTO `sensitive_word_data` VALUES ('死GD');
INSERT INTO `sensitive_word_data` VALUES ('死gm');
INSERT INTO `sensitive_word_data` VALUES ('死GM');
INSERT INTO `sensitive_word_data` VALUES ('死全家');
INSERT INTO `sensitive_word_data` VALUES ('四川独立');
INSERT INTO `sensitive_word_data` VALUES ('四人帮');
INSERT INTO `sensitive_word_data` VALUES ('宋楚瑜');
INSERT INTO `sensitive_word_data` VALUES ('宋祖英');
INSERT INTO `sensitive_word_data` VALUES ('孙文');
INSERT INTO `sensitive_word_data` VALUES ('孙逸仙');
INSERT INTO `sensitive_word_data` VALUES ('孙中山');
INSERT INTO `sensitive_word_data` VALUES ('他爹');
INSERT INTO `sensitive_word_data` VALUES ('他妈');
INSERT INTO `sensitive_word_data` VALUES ('他妈的');
INSERT INTO `sensitive_word_data` VALUES ('他马的');
INSERT INTO `sensitive_word_data` VALUES ('他母亲');
INSERT INTO `sensitive_word_data` VALUES ('他祖宗');
INSERT INTO `sensitive_word_data` VALUES ('台办');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('台联');
INSERT INTO `sensitive_word_data` VALUES ('台湾党');
INSERT INTO `sensitive_word_data` VALUES ('台湾帝国');
INSERT INTO `sensitive_word_data` VALUES ('台湾独立');
INSERT INTO `sensitive_word_data` VALUES ('台湾共产党');
INSERT INTO `sensitive_word_data` VALUES ('台湾共和国');
INSERT INTO `sensitive_word_data` VALUES ('台湾狗');
INSERT INTO `sensitive_word_data` VALUES ('台湾国');
INSERT INTO `sensitive_word_data` VALUES ('台湾民国');
INSERT INTO `sensitive_word_data` VALUES ('太监');
INSERT INTO `sensitive_word_data` VALUES ('太子党');
INSERT INTO `sensitive_word_data` VALUES ('唐家璇');
INSERT INTO `sensitive_word_data` VALUES ('特别公告');
INSERT INTO `sensitive_word_data` VALUES ('特码');
INSERT INTO `sensitive_word_data` VALUES ('体育总局');
INSERT INTO `sensitive_word_data` VALUES ('天安门');
INSERT INTO `sensitive_word_data` VALUES ('天安门档案');
INSERT INTO `sensitive_word_data` VALUES ('天安门录像带');
INSERT INTO `sensitive_word_data` VALUES ('天安门事件');
INSERT INTO `sensitive_word_data` VALUES ('天安门屠杀');
INSERT INTO `sensitive_word_data` VALUES ('天安门一代');
INSERT INTO `sensitive_word_data` VALUES ('天鹅之旅');
INSERT INTO `sensitive_word_data` VALUES ('天皇');
INSERT INTO `sensitive_word_data` VALUES ('天皇陛下');
INSERT INTO `sensitive_word_data` VALUES ('田纪云');
INSERT INTO `sensitive_word_data` VALUES ('舔西');
INSERT INTO `sensitive_word_data` VALUES ('铁道部');
INSERT INTO `sensitive_word_data` VALUES ('统计局');
INSERT INTO `sensitive_word_data` VALUES ('曾庆红');
INSERT INTO `sensitive_word_data` VALUES ('扎卡维');
INSERT INTO `sensitive_word_data` VALUES ('扎卡维是英雄');
INSERT INTO `sensitive_word_data` VALUES ('张朝阳');
INSERT INTO `sensitive_word_data` VALUES ('张潮阳');
INSERT INTO `sensitive_word_data` VALUES ('张德江');
INSERT INTO `sensitive_word_data` VALUES ('张磊');
INSERT INTO `sensitive_word_data` VALUES ('张立昌');
INSERT INTO `sensitive_word_data` VALUES ('张小平');
INSERT INTO `sensitive_word_data` VALUES ('赵紫阳');
INSERT INTO `sensitive_word_data` VALUES ('侦探设备');
INSERT INTO `sensitive_word_data` VALUES ('真理教');
INSERT INTO `sensitive_word_data` VALUES ('真善忍');
INSERT INTO `sensitive_word_data` VALUES ('镇压');
INSERT INTO `sensitive_word_data` VALUES ('正见网');
INSERT INTO `sensitive_word_data` VALUES ('正清网');
INSERT INTO `sensitive_word_data` VALUES ('正悟网');
INSERT INTO `sensitive_word_data` VALUES ('证监会');
INSERT INTO `sensitive_word_data` VALUES ('政变');
INSERT INTO `sensitive_word_data` VALUES ('政协');
INSERT INTO `sensitive_word_data` VALUES ('值勤');
INSERT INTO `sensitive_word_data` VALUES ('值勤账号');
INSERT INTO `sensitive_word_data` VALUES ('指导员');
INSERT INTO `sensitive_word_data` VALUES ('质检局');
INSERT INTO `sensitive_word_data` VALUES ('致幻剂');
INSERT INTO `sensitive_word_data` VALUES ('中共');
INSERT INTO `sensitive_word_data` VALUES ('中共中央');
INSERT INTO `sensitive_word_data` VALUES ('中国');
INSERT INTO `sensitive_word_data` VALUES ('中国共产党');
INSERT INTO `sensitive_word_data` VALUES ('中国恐怖组织');
INSERT INTO `sensitive_word_data` VALUES ('中华民国');
INSERT INTO `sensitive_word_data` VALUES ('中华人民共和国');
INSERT INTO `sensitive_word_data` VALUES ('中科院');
INSERT INTO `sensitive_word_data` VALUES ('中南海');
INSERT INTO `sensitive_word_data` VALUES ('中宣部');
INSERT INTO `sensitive_word_data` VALUES ('中央');
INSERT INTO `sensitive_word_data` VALUES ('中央电视台');
INSERT INTO `sensitive_word_data` VALUES ('中央政治局');
INSERT INTO `sensitive_word_data` VALUES ('中医药局');
INSERT INTO `sensitive_word_data` VALUES ('周恩来');
INSERT INTO `sensitive_word_data` VALUES ('周永康');
INSERT INTO `sensitive_word_data` VALUES ('周总理');
INSERT INTO `sensitive_word_data` VALUES ('朱德');
INSERT INTO `sensitive_word_data` VALUES ('朱容鸡');
INSERT INTO `sensitive_word_data` VALUES ('朱容基');
INSERT INTO `sensitive_word_data` VALUES ('朱熔基');
INSERT INTO `sensitive_word_data` VALUES ('朱镕基');
INSERT INTO `sensitive_word_data` VALUES ('朱总理');
INSERT INTO `sensitive_word_data` VALUES ('猪操');
INSERT INTO `sensitive_word_data` VALUES ('猪容基');
INSERT INTO `sensitive_word_data` VALUES ('主席');
INSERT INTO `sensitive_word_data` VALUES ('转法轮');
INSERT INTO `sensitive_word_data` VALUES ('转法轮');
INSERT INTO `sensitive_word_data` VALUES ('装屄');
INSERT INTO `sensitive_word_data` VALUES ('装逼');
INSERT INTO `sensitive_word_data` VALUES ('追查国际');
INSERT INTO `sensitive_word_data` VALUES ('子女任职名单');
INSERT INTO `sensitive_word_data` VALUES ('自焚');
INSERT INTO `sensitive_word_data` VALUES ('自杀手册');
INSERT INTO `sensitive_word_data` VALUES ('自杀指南');
INSERT INTO `sensitive_word_data` VALUES ('自由亚洲电台');
INSERT INTO `sensitive_word_data` VALUES ('自由之门');
INSERT INTO `sensitive_word_data` VALUES ('自制手枪');
INSERT INTO `sensitive_word_data` VALUES ('自治机关');
INSERT INTO `sensitive_word_data` VALUES ('@sshole');
INSERT INTO `sensitive_word_data` VALUES ('a$$hole');
INSERT INTO `sensitive_word_data` VALUES ('a$shole');
INSERT INTO `sensitive_word_data` VALUES ('Admin');
INSERT INTO `sensitive_word_data` VALUES ('as$hole');
INSERT INTO `sensitive_word_data` VALUES ('ASS');
INSERT INTO `sensitive_word_data` VALUES ('asshole');
INSERT INTO `sensitive_word_data` VALUES ('bastard');
INSERT INTO `sensitive_word_data` VALUES ('bbscity');
INSERT INTO `sensitive_word_data` VALUES ('beijingspring');
INSERT INTO `sensitive_word_data` VALUES ('bignews');
INSERT INTO `sensitive_word_data` VALUES ('bitch');
INSERT INTO `sensitive_word_data` VALUES ('Bitch');
INSERT INTO `sensitive_word_data` VALUES ('bjzc');
INSERT INTO `sensitive_word_data` VALUES ('boxun');
INSERT INTO `sensitive_word_data` VALUES ('bt');
INSERT INTO `sensitive_word_data` VALUES ('butthead');
INSERT INTO `sensitive_word_data` VALUES ('butthole');
INSERT INTO `sensitive_word_data` VALUES ('cctv');
INSERT INTO `sensitive_word_data` VALUES ('CCTV');
INSERT INTO `sensitive_word_data` VALUES ('cdjp');
INSERT INTO `sensitive_word_data` VALUES ('chengmingmag');
INSERT INTO `sensitive_word_data` VALUES ('chinesenewsweek');
INSERT INTO `sensitive_word_data` VALUES ('cunt');
INSERT INTO `sensitive_word_data` VALUES ('dajiyuan');
INSERT INTO `sensitive_word_data` VALUES ('damm');
INSERT INTO `sensitive_word_data` VALUES ('damn');
INSERT INTO `sensitive_word_data` VALUES ('dick');
INSERT INTO `sensitive_word_data` VALUES ('Dick');
INSERT INTO `sensitive_word_data` VALUES ('DICK');
INSERT INTO `sensitive_word_data` VALUES ('epochtimes');
INSERT INTO `sensitive_word_data` VALUES ('F.L.G');
INSERT INTO `sensitive_word_data` VALUES ('falun');
INSERT INTO `sensitive_word_data` VALUES ('fawanghuihui');
INSERT INTO `sensitive_word_data` VALUES ('fgmtv');
INSERT INTO `sensitive_word_data` VALUES ('flg');
INSERT INTO `sensitive_word_data` VALUES ('FLG');
INSERT INTO `sensitive_word_data` VALUES ('fofg');
INSERT INTO `sensitive_word_data` VALUES ('fosaon');
INSERT INTO `sensitive_word_data` VALUES ('fu(');
INSERT INTO `sensitive_word_data` VALUES ('fuc');
INSERT INTO `sensitive_word_data` VALUES ('Fuck');
INSERT INTO `sensitive_word_data` VALUES ('fuck');
INSERT INTO `sensitive_word_data` VALUES ('FUCK');
INSERT INTO `sensitive_word_data` VALUES ('FUCKYOU');
INSERT INTO `sensitive_word_data` VALUES ('fuckyou');
INSERT INTO `sensitive_word_data` VALUES ('fuk');
INSERT INTO `sensitive_word_data` VALUES ('fv(');
INSERT INTO `sensitive_word_data` VALUES ('fvc');
INSERT INTO `sensitive_word_data` VALUES ('gamemaster');
INSERT INTO `sensitive_word_data` VALUES ('GAMEMASTER');
INSERT INTO `sensitive_word_data` VALUES ('gameMASTER');
INSERT INTO `sensitive_word_data` VALUES ('GAMEmaster');
INSERT INTO `sensitive_word_data` VALUES ('ＧＡＭＥ　ｍａｓｔｅｒ');
INSERT INTO `sensitive_word_data` VALUES ('ｇａｍｅ　ＭＡＳＴＥＲ');
INSERT INTO `sensitive_word_data` VALUES ('ＧＡＭＥ　ＭＡＳＴＥＲ');
INSERT INTO `sensitive_word_data` VALUES ('ｇａｍｅ　ｍａｓｔｅｒ');
INSERT INTO `sensitive_word_data` VALUES ('GameMaste');
INSERT INTO `sensitive_word_data` VALUES ('GameMaster');
INSERT INTO `sensitive_word_data` VALUES ('GAMEMASTER');
INSERT INTO `sensitive_word_data` VALUES ('gc365');
INSERT INTO `sensitive_word_data` VALUES ('globalrescue');
INSERT INTO `sensitive_word_data` VALUES ('Gm');
INSERT INTO `sensitive_word_data` VALUES ('gM');
INSERT INTO `sensitive_word_data` VALUES ('gm');
INSERT INTO `sensitive_word_data` VALUES ('minghui');
INSERT INTO `sensitive_word_data` VALUES ('mingpaonews');
INSERT INTO `sensitive_word_data` VALUES ('minhui');
INSERT INTO `sensitive_word_data` VALUES ('NMD');
INSERT INTO `sensitive_word_data` VALUES ('NND');
INSERT INTO `sensitive_word_data` VALUES ('nnd');
INSERT INTO `sensitive_word_data` VALUES ('on9');
INSERT INTO `sensitive_word_data` VALUES ('ON9');
INSERT INTO `sensitive_word_data` VALUES ('orgasmus');
INSERT INTO `sensitive_word_data` VALUES ('peacehall');
INSERT INTO `sensitive_word_data` VALUES ('penis');
INSERT INTO `sensitive_word_data` VALUES ('phuc');
INSERT INTO `sensitive_word_data` VALUES ('piss');
INSERT INTO `sensitive_word_data` VALUES ('PUSSY');
INSERT INTO `sensitive_word_data` VALUES ('pussy');
INSERT INTO `sensitive_word_data` VALUES ('renminbao');
INSERT INTO `sensitive_word_data` VALUES ('ri');
INSERT INTO `sensitive_word_data` VALUES ('SB');
INSERT INTO `sensitive_word_data` VALUES ('sb');
INSERT INTO `sensitive_word_data` VALUES ('screw');
INSERT INTO `sensitive_word_data` VALUES ('secretchina');
INSERT INTO `sensitive_word_data` VALUES ('sega');
INSERT INTO `sensitive_word_data` VALUES ('sex');
INSERT INTO `sensitive_word_data` VALUES ('sf');
INSERT INTO `sensitive_word_data` VALUES ('sh!t');
INSERT INTO `sensitive_word_data` VALUES ('shengda');
INSERT INTO `sensitive_word_data` VALUES ('SHIT');
INSERT INTO `sensitive_word_data` VALUES ('shit');
INSERT INTO `sensitive_word_data` VALUES ('shyt');
INSERT INTO `sensitive_word_data` VALUES ('SM');
INSERT INTO `sensitive_word_data` VALUES ('snatch');
INSERT INTO `sensitive_word_data` VALUES ('soundofhope');
INSERT INTO `sensitive_word_data` VALUES ('SUCK');
INSERT INTO `sensitive_word_data` VALUES ('suck');
INSERT INTO `sensitive_word_data` VALUES ('Suck');
INSERT INTO `sensitive_word_data` VALUES ('TMD');
INSERT INTO `sensitive_word_data` VALUES ('tmd');
INSERT INTO `sensitive_word_data` VALUES ('TNND');
INSERT INTO `sensitive_word_data` VALUES ('tnnd');
INSERT INTO `sensitive_word_data` VALUES ('WG');
INSERT INTO `sensitive_word_data` VALUES ('wg');
INSERT INTO `sensitive_word_data` VALUES ('WG');
INSERT INTO `sensitive_word_data` VALUES ('Wg');
INSERT INTO `sensitive_word_data` VALUES ('wG');
INSERT INTO `sensitive_word_data` VALUES ('wg');
INSERT INTO `sensitive_word_data` VALUES ('xinguangming');
INSERT INTO `sensitive_word_data` VALUES ('xinsheng');
INSERT INTO `sensitive_word_data` VALUES ('yuanming');
INSERT INTO `sensitive_word_data` VALUES ('zhengjian');
INSERT INTO `sensitive_word_data` VALUES ('zhengqing');
INSERT INTO `sensitive_word_data` VALUES ('zhengwunet');
INSERT INTO `sensitive_word_data` VALUES ('zhongguohun');
INSERT INTO `sensitive_word_data` VALUES ('pps');
INSERT INTO `sensitive_word_data` VALUES ('PPS');
INSERT INTO `sensitive_word_data` VALUES ('爱滋');
INSERT INTO `sensitive_word_data` VALUES ('小穴');
INSERT INTO `sensitive_word_data` VALUES ('法轮功');
INSERT INTO `sensitive_word_data` VALUES ('共产党');
INSERT INTO `sensitive_word_data` VALUES ('政治');
INSERT INTO `sensitive_word_data` VALUES ('卡耐基');
INSERT INTO `sensitive_word_data` VALUES ('李总理');
INSERT INTO `sensitive_word_data` VALUES ('李总统');
INSERT INTO `sensitive_word_data` VALUES ('论公');
INSERT INTO `sensitive_word_data` VALUES ('论功');
INSERT INTO `sensitive_word_data` VALUES ('论攻');
INSERT INTO `sensitive_word_data` VALUES ('論公');
INSERT INTO `sensitive_word_data` VALUES ('論功');
INSERT INTO `sensitive_word_data` VALUES ('論攻');
INSERT INTO `sensitive_word_data` VALUES ('涛哥');
INSERT INTO `sensitive_word_data` VALUES ('万亦凡');
INSERT INTO `sensitive_word_data` VALUES ('青春妇');
INSERT INTO `sensitive_word_data` VALUES ('护士');
INSERT INTO `sensitive_word_data` VALUES ('黄色江');
INSERT INTO `sensitive_word_data` VALUES ('江泽民');
INSERT INTO `sensitive_word_data` VALUES ('毛泽东');
INSERT INTO `sensitive_word_data` VALUES ('裸聊');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('内衣秀');
INSERT INTO `sensitive_word_data` VALUES ('公安局');
INSERT INTO `sensitive_word_data` VALUES ('派出所');
INSERT INTO `sensitive_word_data` VALUES ('黄色小说');
INSERT INTO `sensitive_word_data` VALUES ('陈水扁');
INSERT INTO `sensitive_word_data` VALUES ('马的阳具');
INSERT INTO `sensitive_word_data` VALUES ('阳萎');
INSERT INTO `sensitive_word_data` VALUES ('野鸡');
INSERT INTO `sensitive_word_data` VALUES ('阴部');
INSERT INTO `sensitive_word_data` VALUES ('阴唇');
INSERT INTO `sensitive_word_data` VALUES ('阴道');
INSERT INTO `sensitive_word_data` VALUES ('阴茎');
INSERT INTO `sensitive_word_data` VALUES ('阴毛');
INSERT INTO `sensitive_word_data` VALUES ('淫');
INSERT INTO `sensitive_word_data` VALUES ('淫荡');
INSERT INTO `sensitive_word_data` VALUES ('淫妇');
INSERT INTO `sensitive_word_data` VALUES ('淫秽');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('淫西');
INSERT INTO `sensitive_word_data` VALUES ('月经');
INSERT INTO `sensitive_word_data` VALUES ('杂种');
INSERT INTO `sensitive_word_data` VALUES ('招妓');
INSERT INTO `sensitive_word_data` VALUES ('祖宗');
INSERT INTO `sensitive_word_data` VALUES ('做爱');
INSERT INTO `sensitive_word_data` VALUES ('回民吃猪肉');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('台湾独立');
INSERT INTO `sensitive_word_data` VALUES ('疆独');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('周恩来');
INSERT INTO `sensitive_word_data` VALUES ('邓小平');
INSERT INTO `sensitive_word_data` VALUES ('习近平');
INSERT INTO `sensitive_word_data` VALUES ('温家宝');
INSERT INTO `sensitive_word_data` VALUES ('胡锦涛');
INSERT INTO `sensitive_word_data` VALUES ('强奸');
INSERT INTO `sensitive_word_data` VALUES ('手枪');
INSERT INTO `sensitive_word_data` VALUES ('自杀');
INSERT INTO `sensitive_word_data` VALUES ('共产党');
INSERT INTO `sensitive_word_data` VALUES ('海洛因');
INSERT INTO `sensitive_word_data` VALUES ('枪支');
INSERT INTO `sensitive_word_data` VALUES ('入党');
INSERT INTO `sensitive_word_data` VALUES ('国家');
INSERT INTO `sensitive_word_data` VALUES ('炸药');
INSERT INTO `sensitive_word_data` VALUES ('独裁');
INSERT INTO `sensitive_word_data` VALUES ('狗日的');
INSERT INTO `sensitive_word_data` VALUES ('胡主席');
INSERT INTO `sensitive_word_data` VALUES ('反共');
INSERT INTO `sensitive_word_data` VALUES ('鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('迷幻药');
INSERT INTO `sensitive_word_data` VALUES ('贱人');
INSERT INTO `sensitive_word_data` VALUES ('恐怖组织');
INSERT INTO `sensitive_word_data` VALUES ('犯罪');
INSERT INTO `sensitive_word_data` VALUES ('枪毙');
INSERT INTO `sensitive_word_data` VALUES ('民权');
INSERT INTO `sensitive_word_data` VALUES ('特码');
INSERT INTO `sensitive_word_data` VALUES ('四人帮');
INSERT INTO `sensitive_word_data` VALUES ('子弹');
INSERT INTO `sensitive_word_data` VALUES ('周恩来');
INSERT INTO `sensitive_word_data` VALUES ('周总理');
INSERT INTO `sensitive_word_data` VALUES ('穆斯林');
INSERT INTO `sensitive_word_data` VALUES ('连战');
INSERT INTO `sensitive_word_data` VALUES ('马英九');
INSERT INTO `sensitive_word_data` VALUES ('赌博');
INSERT INTO `sensitive_word_data` VALUES ('骚货');
INSERT INTO `sensitive_word_data` VALUES ('贱货');
INSERT INTO `sensitive_word_data` VALUES ('开枪');
INSERT INTO `sensitive_word_data` VALUES ('腐败');
INSERT INTO `sensitive_word_data` VALUES ('总书记');
INSERT INTO `sensitive_word_data` VALUES ('氯胺酮');
INSERT INTO `sensitive_word_data` VALUES ('雷管');
INSERT INTO `sensitive_word_data` VALUES ('引爆');
INSERT INTO `sensitive_word_data` VALUES ('盗窃');
INSERT INTO `sensitive_word_data` VALUES ('刑法');
INSERT INTO `sensitive_word_data` VALUES ('死刑');
INSERT INTO `sensitive_word_data` VALUES ('摇头丸');
INSERT INTO `sensitive_word_data` VALUES ('K粉');
INSERT INTO `sensitive_word_data` VALUES ('妖术');
INSERT INTO `sensitive_word_data` VALUES ('鸦片');
INSERT INTO `sensitive_word_data` VALUES ('违法');
INSERT INTO `sensitive_word_data` VALUES ('八路军');
INSERT INTO `sensitive_word_data` VALUES ('非法');
INSERT INTO `sensitive_word_data` VALUES ('政府');
INSERT INTO `sensitive_word_data` VALUES ('公安局');
INSERT INTO `sensitive_word_data` VALUES ('派出所');
INSERT INTO `sensitive_word_data` VALUES ('间谍');
INSERT INTO `sensitive_word_data` VALUES ('导弹');
INSERT INTO `sensitive_word_data` VALUES ('邪教');
INSERT INTO `sensitive_word_data` VALUES ('推翻');
INSERT INTO `sensitive_word_data` VALUES ('李长春');
INSERT INTO `sensitive_word_data` VALUES ('黄色小说');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('疆独');
INSERT INTO `sensitive_word_data` VALUES ('朱镕基');
INSERT INTO `sensitive_word_data` VALUES ('新疆独立');
INSERT INTO `sensitive_word_data` VALUES ('西藏分裂');
INSERT INTO `sensitive_word_data` VALUES ('造反');
INSERT INTO `sensitive_word_data` VALUES ('政变');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('嫖娼');
INSERT INTO `sensitive_word_data` VALUES ('卖淫');
INSERT INTO `sensitive_word_data` VALUES ('淫秽');
INSERT INTO `sensitive_word_data` VALUES ('游行');
INSERT INTO `sensitive_word_data` VALUES ('自焚');
INSERT INTO `sensitive_word_data` VALUES ('垮台');
INSERT INTO `sensitive_word_data` VALUES ('镇压');
INSERT INTO `sensitive_word_data` VALUES ('东突');
INSERT INTO `sensitive_word_data` VALUES ('共匪');
INSERT INTO `sensitive_word_data` VALUES ('天安门');
INSERT INTO `sensitive_word_data` VALUES ('淫荡');
INSERT INTO `sensitive_word_data` VALUES ('梵蒂冈');
INSERT INTO `sensitive_word_data` VALUES ('颠覆');
INSERT INTO `sensitive_word_data` VALUES ('人权');
INSERT INTO `sensitive_word_data` VALUES ('治安');
INSERT INTO `sensitive_word_data` VALUES ('做爱');
INSERT INTO `sensitive_word_data` VALUES ('报仇');
INSERT INTO `sensitive_word_data` VALUES ('侮辱');
INSERT INTO `sensitive_word_data` VALUES ('出卖');
INSERT INTO `sensitive_word_data` VALUES ('诋毁');
INSERT INTO `sensitive_word_data` VALUES ('性病');
INSERT INTO `sensitive_word_data` VALUES ('原子弹');
INSERT INTO `sensitive_word_data` VALUES ('成人电影');
INSERT INTO `sensitive_word_data` VALUES ('成人书刊');
INSERT INTO `sensitive_word_data` VALUES ('成人图片');
INSERT INTO `sensitive_word_data` VALUES ('城管');
INSERT INTO `sensitive_word_data` VALUES ('暴力执法');
INSERT INTO `sensitive_word_data` VALUES ('中共');
INSERT INTO `sensitive_word_data` VALUES ('冰毒');
INSERT INTO `sensitive_word_data` VALUES ('催情');
INSERT INTO `sensitive_word_data` VALUES ('春药');
INSERT INTO `sensitive_word_data` VALUES ('达赖');
INSERT INTO `sensitive_word_data` VALUES ('喇嘛');
INSERT INTO `sensitive_word_data` VALUES ('打砸抢');
INSERT INTO `sensitive_word_data` VALUES ('钓鱼岛');
INSERT INTO `sensitive_word_data` VALUES ('赌球');
INSERT INTO `sensitive_word_data` VALUES ('独立');
INSERT INTO `sensitive_word_data` VALUES ('反人类');
INSERT INTO `sensitive_word_data` VALUES ('反中共');
INSERT INTO `sensitive_word_data` VALUES ('二奶');
INSERT INTO `sensitive_word_data` VALUES ('反封锁');
INSERT INTO `sensitive_word_data` VALUES ('你妈的B');
INSERT INTO `sensitive_word_data` VALUES ('我操你妈');
INSERT INTO `sensitive_word_data` VALUES ('干你妈');
INSERT INTO `sensitive_word_data` VALUES ('妈逼的');
INSERT INTO `sensitive_word_data` VALUES ('暴乱');
INSERT INTO `sensitive_word_data` VALUES ('睾丸');
INSERT INTO `sensitive_word_data` VALUES ('狗逼');
INSERT INTO `sensitive_word_data` VALUES ('机密文件');
INSERT INTO `sensitive_word_data` VALUES ('鸡奸');
INSERT INTO `sensitive_word_data` VALUES ('李洪志');
INSERT INTO `sensitive_word_data` VALUES ('李宏志');
INSERT INTO `sensitive_word_data` VALUES ('假钞');
INSERT INTO `sensitive_word_data` VALUES ('假钱');
INSERT INTO `sensitive_word_data` VALUES ('激情电影');
INSERT INTO `sensitive_word_data` VALUES ('双乳');
INSERT INTO `sensitive_word_data` VALUES ('禁书');
INSERT INTO `sensitive_word_data` VALUES ('精液');
INSERT INTO `sensitive_word_data` VALUES ('市委会');
INSERT INTO `sensitive_word_data` VALUES ('伊斯兰');
INSERT INTO `sensitive_word_data` VALUES ('内衣');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('遥控炸弹');
INSERT INTO `sensitive_word_data` VALUES ('抵制');
INSERT INTO `sensitive_word_data` VALUES ('裸体');
INSERT INTO `sensitive_word_data` VALUES ('贩毒');
INSERT INTO `sensitive_word_data` VALUES ('强暴');
INSERT INTO `sensitive_word_data` VALUES ('邪恶');
INSERT INTO `sensitive_word_data` VALUES ('脱光');
INSERT INTO `sensitive_word_data` VALUES ('脱衣服');
INSERT INTO `sensitive_word_data` VALUES ('A片');
INSERT INTO `sensitive_word_data` VALUES ('屠杀');
INSERT INTO `sensitive_word_data` VALUES ('证件');
INSERT INTO `sensitive_word_data` VALUES ('佛主');
INSERT INTO `sensitive_word_data` VALUES ('六合彩');
INSERT INTO `sensitive_word_data` VALUES ('6合彩');
INSERT INTO `sensitive_word_data` VALUES ('录像');
INSERT INTO `sensitive_word_data` VALUES ('操你全家');
INSERT INTO `sensitive_word_data` VALUES ('不得好死');
INSERT INTO `sensitive_word_data` VALUES ('你妈B的');
INSERT INTO `sensitive_word_data` VALUES ('成人网站');
INSERT INTO `sensitive_word_data` VALUES ('暴政');
INSERT INTO `sensitive_word_data` VALUES ('伪造');
INSERT INTO `sensitive_word_data` VALUES ('绝密档案');
INSERT INTO `sensitive_word_data` VALUES ('熟女');
INSERT INTO `sensitive_word_data` VALUES ('中国');
INSERT INTO `sensitive_word_data` VALUES ('爱滋病');
INSERT INTO `sensitive_word_data` VALUES ('成人电影');
INSERT INTO `sensitive_word_data` VALUES ('三级片');
INSERT INTO `sensitive_word_data` VALUES ('政府');
INSERT INTO `sensitive_word_data` VALUES ('天安門');
INSERT INTO `sensitive_word_data` VALUES ('臺灣獨立');
INSERT INTO `sensitive_word_data` VALUES ('台湾');
INSERT INTO `sensitive_word_data` VALUES ('他娘的');
INSERT INTO `sensitive_word_data` VALUES ('它妈的');
INSERT INTO `sensitive_word_data` VALUES ('四川独立');
INSERT INTO `sensitive_word_data` VALUES ('中共');
INSERT INTO `sensitive_word_data` VALUES ('政治');
INSERT INTO `sensitive_word_data` VALUES ('中国');
INSERT INTO `sensitive_word_data` VALUES ('政治');
INSERT INTO `sensitive_word_data` VALUES ('中华人民共和国');
INSERT INTO `sensitive_word_data` VALUES ('阴蒂');
INSERT INTO `sensitive_word_data` VALUES ('乱伦');
INSERT INTO `sensitive_word_data` VALUES ('手淫');
INSERT INTO `sensitive_word_data` VALUES ('阴唇');
INSERT INTO `sensitive_word_data` VALUES ('阴户');
INSERT INTO `sensitive_word_data` VALUES ('强奸');
INSERT INTO `sensitive_word_data` VALUES ('阴茎');
INSERT INTO `sensitive_word_data` VALUES ('法轮');
INSERT INTO `sensitive_word_data` VALUES ('反政府');
INSERT INTO `sensitive_word_data` VALUES ('色情小说');
INSERT INTO `sensitive_word_data` VALUES ('黄网');
INSERT INTO `sensitive_word_data` VALUES ('共产党');
INSERT INTO `sensitive_word_data` VALUES ('裸聊');
INSERT INTO `sensitive_word_data` VALUES ('无码片');
INSERT INTO `sensitive_word_data` VALUES ('无码');
INSERT INTO `sensitive_word_data` VALUES ('西藏');
INSERT INTO `sensitive_word_data` VALUES ('西藏独立');
INSERT INTO `sensitive_word_data` VALUES ('下体');
INSERT INTO `sensitive_word_data` VALUES ('香港');
INSERT INTO `sensitive_word_data` VALUES ('新疆独立');
INSERT INTO `sensitive_word_data` VALUES ('性爱');
INSERT INTO `sensitive_word_data` VALUES ('性交');
INSERT INTO `sensitive_word_data` VALUES ('性免费电影');
INSERT INTO `sensitive_word_data` VALUES ('性虐待');
INSERT INTO `sensitive_word_data` VALUES ('性网站');
INSERT INTO `sensitive_word_data` VALUES ('性網站');
INSERT INTO `sensitive_word_data` VALUES ('胸部');
INSERT INTO `sensitive_word_data` VALUES ('阳具');
INSERT INTO `sensitive_word_data` VALUES ('阳痿');
INSERT INTO `sensitive_word_data` VALUES ('一夜情迷奸');
INSERT INTO `sensitive_word_data` VALUES ('一中一台');
INSERT INTO `sensitive_word_data` VALUES ('阴胫');
INSERT INTO `sensitive_word_data` VALUES ('阴毛');
INSERT INTO `sensitive_word_data` VALUES ('阴毛小穴');
INSERT INTO `sensitive_word_data` VALUES ('阴门');
INSERT INTO `sensitive_word_data` VALUES ('阴囊');
INSERT INTO `sensitive_word_data` VALUES ('阴水');
INSERT INTO `sensitive_word_data` VALUES ('陰蒂');
INSERT INTO `sensitive_word_data` VALUES ('淫虫');
INSERT INTO `sensitive_word_data` VALUES ('淫蟲');
INSERT INTO `sensitive_word_data` VALUES ('淫荡');
INSERT INTO `sensitive_word_data` VALUES ('淫蕩');
INSERT INTO `sensitive_word_data` VALUES ('淫奸');
INSERT INTO `sensitive_word_data` VALUES ('二奶');
INSERT INTO `sensitive_word_data` VALUES ('四六级答案');
INSERT INTO `sensitive_word_data` VALUES ('走私');
INSERT INTO `sensitive_word_data` VALUES ('皮箱炸弹');
INSERT INTO `sensitive_word_data` VALUES ('人民法院');
INSERT INTO `sensitive_word_data` VALUES ('练功');
INSERT INTO `sensitive_word_data` VALUES ('两个中国');
INSERT INTO `sensitive_word_data` VALUES ('轮奸');
INSERT INTO `sensitive_word_data` VALUES ('麻醉药');
INSERT INTO `sensitive_word_data` VALUES ('枪决');
INSERT INTO `sensitive_word_data` VALUES ('侵犯');
INSERT INTO `sensitive_word_data` VALUES ('窃听');
INSERT INTO `sensitive_word_data` VALUES ('色情服务');
INSERT INTO `sensitive_word_data` VALUES ('招妓');
INSERT INTO `sensitive_word_data` VALUES ('召妓');
INSERT INTO `sensitive_word_data` VALUES ('妓女');
INSERT INTO `sensitive_word_data` VALUES ('幼女');
INSERT INTO `sensitive_word_data` VALUES ('蛊惑');
INSERT INTO `sensitive_word_data` VALUES ('蒋介石');
INSERT INTO `sensitive_word_data` VALUES ('马的阳具');
INSERT INTO `sensitive_word_data` VALUES ('阳萎');
INSERT INTO `sensitive_word_data` VALUES ('野鸡');
INSERT INTO `sensitive_word_data` VALUES ('阴部');
INSERT INTO `sensitive_word_data` VALUES ('阴唇');
INSERT INTO `sensitive_word_data` VALUES ('阴道');
INSERT INTO `sensitive_word_data` VALUES ('阴茎');
INSERT INTO `sensitive_word_data` VALUES ('阴毛');
INSERT INTO `sensitive_word_data` VALUES ('淫');
INSERT INTO `sensitive_word_data` VALUES ('淫荡');
INSERT INTO `sensitive_word_data` VALUES ('淫妇');
INSERT INTO `sensitive_word_data` VALUES ('淫秽');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('淫西');
INSERT INTO `sensitive_word_data` VALUES ('月经');
INSERT INTO `sensitive_word_data` VALUES ('杂种');
INSERT INTO `sensitive_word_data` VALUES ('招妓');
INSERT INTO `sensitive_word_data` VALUES ('祖宗');
INSERT INTO `sensitive_word_data` VALUES ('做爱');
INSERT INTO `sensitive_word_data` VALUES ('回民吃猪肉');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('台湾独立');
INSERT INTO `sensitive_word_data` VALUES ('疆独');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('周恩来');
INSERT INTO `sensitive_word_data` VALUES ('烂逼');
INSERT INTO `sensitive_word_data` VALUES ('烂比');
INSERT INTO `sensitive_word_data` VALUES ('烂货');
INSERT INTO `sensitive_word_data` VALUES ('老婊子');
INSERT INTO `sensitive_word_data` VALUES ('老虎机');
INSERT INTO `sensitive_word_data` VALUES ('老虎機');
INSERT INTO `sensitive_word_data` VALUES ('老人政治');
INSERT INTO `sensitive_word_data` VALUES ('李总理');
INSERT INTO `sensitive_word_data` VALUES ('两性狂情');
INSERT INTO `sensitive_word_data` VALUES ('裸干');
INSERT INTO `sensitive_word_data` VALUES ('裸聊');
INSERT INTO `sensitive_word_data` VALUES ('裸聊合法');
INSERT INTO `sensitive_word_data` VALUES ('裸女对对碰');
INSERT INTO `sensitive_word_data` VALUES ('裸女對對碰');
INSERT INTO `sensitive_word_data` VALUES ('裸体');
INSERT INTO `sensitive_word_data` VALUES ('骆冰淫传');
INSERT INTO `sensitive_word_data` VALUES ('雒树刚');
INSERT INTO `sensitive_word_data` VALUES ('妈逼');
INSERT INTO `sensitive_word_data` VALUES ('妈个');
INSERT INTO `sensitive_word_data` VALUES ('妈妈的');
INSERT INTO `sensitive_word_data` VALUES ('妈批');
INSERT INTO `sensitive_word_data` VALUES ('媽個');
INSERT INTO `sensitive_word_data` VALUES ('媽媽的');
INSERT INTO `sensitive_word_data` VALUES ('美女视频');
INSERT INTO `sensitive_word_data` VALUES ('美女視頻');
INSERT INTO `sensitive_word_data` VALUES ('美女野球拳');
INSERT INTO `sensitive_word_data` VALUES ('美女做愛');
INSERT INTO `sensitive_word_data` VALUES ('美少女麻雀');
INSERT INTO `sensitive_word_data` VALUES ('美腿');
INSERT INTO `sensitive_word_data` VALUES ('美腿写真');
INSERT INTO `sensitive_word_data` VALUES ('美腿寫真');
INSERT INTO `sensitive_word_data` VALUES ('妹疼');
INSERT INTO `sensitive_word_data` VALUES ('妹痛');
INSERT INTO `sensitive_word_data` VALUES ('夢幻麻將館');
INSERT INTO `sensitive_word_data` VALUES ('猛插');
INSERT INTO `sensitive_word_data` VALUES ('猛男强奸');
INSERT INTO `sensitive_word_data` VALUES ('迷幻精华素');
INSERT INTO `sensitive_word_data` VALUES ('迷幻药');
INSERT INTO `sensitive_word_data` VALUES ('迷幻液');
INSERT INTO `sensitive_word_data` VALUES ('迷昏蚊');
INSERT INTO `sensitive_word_data` VALUES ('迷昏香烟');
INSERT INTO `sensitive_word_data` VALUES ('迷昏药');
INSERT INTO `sensitive_word_data` VALUES ('迷魂');
INSERT INTO `sensitive_word_data` VALUES ('魂蚊香');
INSERT INTO `sensitive_word_data` VALUES ('迷魂香');
INSERT INTO `sensitive_word_data` VALUES ('迷魂香烟');
INSERT INTO `sensitive_word_data` VALUES ('迷魂药');
INSERT INTO `sensitive_word_data` VALUES ('内裤');
INSERT INTO `sensitive_word_data` VALUES ('内射');
INSERT INTO `sensitive_word_data` VALUES ('内争人权');
INSERT INTO `sensitive_word_data` VALUES ('奶头真红');
INSERT INTO `sensitive_word_data` VALUES ('奶子');
INSERT INTO `sensitive_word_data` VALUES ('女教師');
INSERT INTO `sensitive_word_data` VALUES ('女女');
INSERT INTO `sensitive_word_data` VALUES ('女神教');
INSERT INTO `sensitive_word_data` VALUES ('女优');
INSERT INTO `sensitive_word_data` VALUES ('女优片');
INSERT INTO `sensitive_word_data` VALUES ('女優');
INSERT INTO `sensitive_word_data` VALUES ('虐待');
INSERT INTO `sensitive_word_data` VALUES ('喷剂');
INSERT INTO `sensitive_word_data` VALUES ('喷精');
INSERT INTO `sensitive_word_data` VALUES ('喷尿');
INSERT INTO `sensitive_word_data` VALUES ('喷雾迷药');
INSERT INTO `sensitive_word_data` VALUES ('喷雾型');
INSERT INTO `sensitive_word_data` VALUES ('窃听');
INSERT INTO `sensitive_word_data` VALUES ('窃听器');
INSERT INTO `sensitive_word_data` VALUES ('窃听器材');
INSERT INTO `sensitive_word_data` VALUES ('窃听设备');
INSERT INTO `sensitive_word_data` VALUES ('窃听王');
INSERT INTO `sensitive_word_data` VALUES ('竊聽器');
INSERT INTO `sensitive_word_data` VALUES ('竊聽器材');
INSERT INTO `sensitive_word_data` VALUES ('清纯少妇');
INSERT INTO `sensitive_word_data` VALUES ('清官团');
INSERT INTO `sensitive_word_data` VALUES ('清海师父');
INSERT INTO `sensitive_word_data` VALUES ('清海无上师');
INSERT INTO `sensitive_word_data` VALUES ('清华帮');
INSERT INTO `sensitive_word_data` VALUES ('情妇');
INSERT INTO `sensitive_word_data` VALUES ('情色');
INSERT INTO `sensitive_word_data` VALUES ('情色{5}');
INSERT INTO `sensitive_word_data` VALUES ('情色大片');
INSERT INTO `sensitive_word_data` VALUES ('情色电影');
INSERT INTO `sensitive_word_data` VALUES ('情色光碟');
INSERT INTO `sensitive_word_data` VALUES ('情色呻吟');
INSERT INTO `sensitive_word_data` VALUES ('情色贴图');
INSERT INTO `sensitive_word_data` VALUES ('情色图片');
INSERT INTO `sensitive_word_data` VALUES ('情色文学');
INSERT INTO `sensitive_word_data` VALUES ('情色小说');
INSERT INTO `sensitive_word_data` VALUES ('情色影片');
INSERT INTO `sensitive_word_data` VALUES ('底走光');
INSERT INTO `sensitive_word_data` VALUES ('群发器');
INSERT INTO `sensitive_word_data` VALUES ('群發器');
INSERT INTO `sensitive_word_data` VALUES ('群奸');
INSERT INTO `sensitive_word_data` VALUES ('群交');
INSERT INTO `sensitive_word_data` VALUES ('群射');
INSERT INTO `sensitive_word_data` VALUES ('骚逼');
INSERT INTO `sensitive_word_data` VALUES ('骚妇');
INSERT INTO `sensitive_word_data` VALUES ('骚乱');
INSERT INTO `sensitive_word_data` VALUES ('骚穴');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('色戒未删减');
INSERT INTO `sensitive_word_data` VALUES ('色空寺');
INSERT INTO `sensitive_word_data` VALUES ('色狼');
INSERT INTO `sensitive_word_data` VALUES ('色狼网');
INSERT INTO `sensitive_word_data` VALUES ('色狼網');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('色情{5');
INSERT INTO `sensitive_word_data` VALUES ('色情电视');
INSERT INTO `sensitive_word_data` VALUES ('色情电影');
INSERT INTO `sensitive_word_data` VALUES ('色情電視色情服务');
INSERT INTO `sensitive_word_data` VALUES ('色情图片');
INSERT INTO `sensitive_word_data` VALUES ('色情圖片');
INSERT INTO `sensitive_word_data` VALUES ('色情网站');
INSERT INTO `sensitive_word_data` VALUES ('色情網站');
INSERT INTO `sensitive_word_data` VALUES ('色情小电影');
INSERT INTO `sensitive_word_data` VALUES ('色情小電影');
INSERT INTO `sensitive_word_data` VALUES ('色情小说');
INSERT INTO `sensitive_word_data` VALUES ('色友');
INSERT INTO `sensitive_word_data` VALUES ('色欲');
INSERT INTO `sensitive_word_data` VALUES ('杀人事件');
INSERT INTO `sensitive_word_data` VALUES ('我靠');
INSERT INTO `sensitive_word_data` VALUES ('fuck');
INSERT INTO `sensitive_word_data` VALUES ('李洪志');
INSERT INTO `sensitive_word_data` VALUES ('法轮功');
INSERT INTO `sensitive_word_data` VALUES ('他妈的');
INSERT INTO `sensitive_word_data` VALUES ('性爱');
INSERT INTO `sensitive_word_data` VALUES ('法轮功');
INSERT INTO `sensitive_word_data` VALUES ('falundafa');
INSERT INTO `sensitive_word_data` VALUES ('falun');
INSERT INTO `sensitive_word_data` VALUES ('江泽民');
INSERT INTO `sensitive_word_data` VALUES ('操你妈');
INSERT INTO `sensitive_word_data` VALUES ('三级片');
INSERT INTO `sensitive_word_data` VALUES ('做爱');
INSERT INTO `sensitive_word_data` VALUES ('裸聊');
INSERT INTO `sensitive_word_data` VALUES ('fuck');
INSERT INTO `sensitive_word_data` VALUES ('妈的');
INSERT INTO `sensitive_word_data` VALUES ('你妈');
INSERT INTO `sensitive_word_data` VALUES ('他妈');
INSERT INTO `sensitive_word_data` VALUES ('fuck');
INSERT INTO `sensitive_word_data` VALUES ('shit');
INSERT INTO `sensitive_word_data` VALUES ('法轮');
INSERT INTO `sensitive_word_data` VALUES ('我操');
INSERT INTO `sensitive_word_data` VALUES ('我日');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('黄色小说');
INSERT INTO `sensitive_word_data` VALUES ('色情网络小说');
INSERT INTO `sensitive_word_data` VALUES ('色情电影下载');
INSERT INTO `sensitive_word_data` VALUES ('裸聊');
INSERT INTO `sensitive_word_data` VALUES ('内衣秀');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('罗干');
INSERT INTO `sensitive_word_data` VALUES ('郑义');
INSERT INTO `sensitive_word_data` VALUES ('王刚');
INSERT INTO `sensitive_word_data` VALUES ('乔石');
INSERT INTO `sensitive_word_data` VALUES ('黄菊');
INSERT INTO `sensitive_word_data` VALUES ('江青');
INSERT INTO `sensitive_word_data` VALUES ('程凯');
INSERT INTO `sensitive_word_data` VALUES ('钱其琛');
INSERT INTO `sensitive_word_data` VALUES ('李长春');
INSERT INTO `sensitive_word_data` VALUES ('李瑞环');
INSERT INTO `sensitive_word_data` VALUES ('邓小平');
INSERT INTO `sensitive_word_data` VALUES ('尉健行');
INSERT INTO `sensitive_word_data` VALUES ('李岚清');
INSERT INTO `sensitive_word_data` VALUES ('于幼军');
INSERT INTO `sensitive_word_data` VALUES ('温家宝');
INSERT INTO `sensitive_word_data` VALUES ('吴邦国');
INSERT INTO `sensitive_word_data` VALUES ('姬胜德');
INSERT INTO `sensitive_word_data` VALUES ('吴官正');
INSERT INTO `sensitive_word_data` VALUES ('贾庆林');
INSERT INTO `sensitive_word_data` VALUES ('曹刚川');
INSERT INTO `sensitive_word_data` VALUES ('李岚清');
INSERT INTO `sensitive_word_data` VALUES ('曾培炎');
INSERT INTO `sensitive_word_data` VALUES ('张万年');
INSERT INTO `sensitive_word_data` VALUES ('由喜贵');
INSERT INTO `sensitive_word_data` VALUES ('吴官正');
INSERT INTO `sensitive_word_data` VALUES ('郭伯雄');
INSERT INTO `sensitive_word_data` VALUES ('廖锡龙');
INSERT INTO `sensitive_word_data` VALUES ('徐才厚');
INSERT INTO `sensitive_word_data` VALUES ('丁关根');
INSERT INTO `sensitive_word_data` VALUES ('吴邦国');
INSERT INTO `sensitive_word_data` VALUES ('徐匡迪');
INSERT INTO `sensitive_word_data` VALUES ('尉健行');
INSERT INTO `sensitive_word_data` VALUES ('王沪宁');
INSERT INTO `sensitive_word_data` VALUES ('王宝森');
INSERT INTO `sensitive_word_data` VALUES ('滕文生');
INSERT INTO `sensitive_word_data` VALUES ('刘华清');
INSERT INTO `sensitive_word_data` VALUES ('迟浩田');
INSERT INTO `sensitive_word_data` VALUES ('戴相龙');
INSERT INTO `sensitive_word_data` VALUES ('华建敏');
INSERT INTO `sensitive_word_data` VALUES ('梁光烈');
INSERT INTO `sensitive_word_data` VALUES ('李继耐');
INSERT INTO `sensitive_word_data` VALUES ('项怀诚');
INSERT INTO `sensitive_word_data` VALUES ('陈希同');
INSERT INTO `sensitive_word_data` VALUES ('陈小同');
INSERT INTO `sensitive_word_data` VALUES ('邓笑贫');
INSERT INTO `sensitive_word_data` VALUES ('曾庆红');
INSERT INTO `sensitive_word_data` VALUES ('庆红');
INSERT INTO `sensitive_word_data` VALUES ('朱?F基');
INSERT INTO `sensitive_word_data` VALUES ('朱容基');
INSERT INTO `sensitive_word_data` VALUES ('毛泽东');
INSERT INTO `sensitive_word_data` VALUES ('毛厕洞');
INSERT INTO `sensitive_word_data` VALUES ('毛贼东');
INSERT INTO `sensitive_word_data` VALUES ('胡锦涛');
INSERT INTO `sensitive_word_data` VALUES ('锦涛');
INSERT INTO `sensitive_word_data` VALUES ('胡锦滔');
INSERT INTO `sensitive_word_data` VALUES ('胡锦淘');
INSERT INTO `sensitive_word_data` VALUES ('胡紧掏');
INSERT INTO `sensitive_word_data` VALUES ('胡景涛');
INSERT INTO `sensitive_word_data` VALUES ('胡总书记');
INSERT INTO `sensitive_word_data` VALUES ('黄丽满');
INSERT INTO `sensitive_word_data` VALUES ('王瑞林');
INSERT INTO `sensitive_word_data` VALUES ('钱国梁');
INSERT INTO `sensitive_word_data` VALUES ('姜春云');
INSERT INTO `sensitive_word_data` VALUES ('盛华仁');
INSERT INTO `sensitive_word_data` VALUES ('贾廷安');
INSERT INTO `sensitive_word_data` VALUES ('李登辉');
INSERT INTO `sensitive_word_data` VALUES ('陈水扁');
INSERT INTO `sensitive_word_data` VALUES ('马英九');
INSERT INTO `sensitive_word_data` VALUES ('李洪志');
INSERT INTO `sensitive_word_data` VALUES ('BTO');
INSERT INTO `sensitive_word_data` VALUES ('毛主席');
INSERT INTO `sensitive_word_data` VALUES ('tianwang');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('肛门');
INSERT INTO `sensitive_word_data` VALUES ('B样');
INSERT INTO `sensitive_word_data` VALUES ('法$');
INSERT INTO `sensitive_word_data` VALUES ('法^轮');
INSERT INTO `sensitive_word_data` VALUES ('法^^轮');
INSERT INTO `sensitive_word_data` VALUES ('法@轮');
INSERT INTO `sensitive_word_data` VALUES ('法@@轮');
INSERT INTO `sensitive_word_data` VALUES ('法~轮');
INSERT INTO `sensitive_word_data` VALUES ('法~~轮');
INSERT INTO `sensitive_word_data` VALUES ('法??');
INSERT INTO `sensitive_word_data` VALUES ('李洪');
INSERT INTO `sensitive_word_data` VALUES ('轮功');
INSERT INTO `sensitive_word_data` VALUES ('胡锦涛');
INSERT INTO `sensitive_word_data` VALUES ('吴官正');
INSERT INTO `sensitive_word_data` VALUES ('黄菊吴仪');
INSERT INTO `sensitive_word_data` VALUES ('罗干');
INSERT INTO `sensitive_word_data` VALUES ('邹家华');
INSERT INTO `sensitive_word_data` VALUES ('真善忍');
INSERT INTO `sensitive_word_data` VALUES ('李洪志');
INSERT INTO `sensitive_word_data` VALUES ('赵紫阳');
INSERT INTO `sensitive_word_data` VALUES ('胡耀邦');
INSERT INTO `sensitive_word_data` VALUES ('贾庆林');
INSERT INTO `sensitive_word_data` VALUES ('曾庆红');
INSERT INTO `sensitive_word_data` VALUES ('李长春');
INSERT INTO `sensitive_word_data` VALUES ('王乐泉');
INSERT INTO `sensitive_word_data` VALUES ('王兆国');
INSERT INTO `sensitive_word_data` VALUES ('回良玉');
INSERT INTO `sensitive_word_data` VALUES ('刘淇');
INSERT INTO `sensitive_word_data` VALUES ('刘云山');
INSERT INTO `sensitive_word_data` VALUES ('张立昌');
INSERT INTO `sensitive_word_data` VALUES ('张德江');
INSERT INTO `sensitive_word_data` VALUES ('陈良宇');
INSERT INTO `sensitive_word_data` VALUES ('周永康');
INSERT INTO `sensitive_word_data` VALUES ('俞正声');
INSERT INTO `sensitive_word_data` VALUES ('贺国强');
INSERT INTO `sensitive_word_data` VALUES ('郭伯雄');
INSERT INTO `sensitive_word_data` VALUES ('曹刚川');
INSERT INTO `sensitive_word_data` VALUES ('曾培炎');
INSERT INTO `sensitive_word_data` VALUES ('李鹏');
INSERT INTO `sensitive_word_data` VALUES ('朱?F基');
INSERT INTO `sensitive_word_data` VALUES ('李瑞环');
INSERT INTO `sensitive_word_data` VALUES ('尉健行');
INSERT INTO `sensitive_word_data` VALUES ('萨达姆');
INSERT INTO `sensitive_word_data` VALUES ('拉登');
INSERT INTO `sensitive_word_data` VALUES ('法轮大法');
INSERT INTO `sensitive_word_data` VALUES ('台湾独立');
INSERT INTO `sensitive_word_data` VALUES ('恐怖主义');
INSERT INTO `sensitive_word_data` VALUES ('明慧网');
INSERT INTO `sensitive_word_data` VALUES ('西藏分裂');
INSERT INTO `sensitive_word_data` VALUES ('台湾总统');
INSERT INTO `sensitive_word_data` VALUES ('新疆独立');
INSERT INTO `sensitive_word_data` VALUES ('保卫台湾');
INSERT INTO `sensitive_word_data` VALUES ('台湾国');
INSERT INTO `sensitive_word_data` VALUES ('陈总统');
INSERT INTO `sensitive_word_data` VALUES ('没有人权');
INSERT INTO `sensitive_word_data` VALUES ('政府无能');
INSERT INTO `sensitive_word_data` VALUES ('皇军');
INSERT INTO `sensitive_word_data` VALUES ('造反');
INSERT INTO `sensitive_word_data` VALUES ('民运');
INSERT INTO `sensitive_word_data` VALUES ('推翻');
INSERT INTO `sensitive_word_data` VALUES ('政变');
INSERT INTO `sensitive_word_data` VALUES ('压迫');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('情色');
INSERT INTO `sensitive_word_data` VALUES ('嫖娼');
INSERT INTO `sensitive_word_data` VALUES ('卖淫');
INSERT INTO `sensitive_word_data` VALUES ('淫秽');
INSERT INTO `sensitive_word_data` VALUES ('爆炸');
INSERT INTO `sensitive_word_data` VALUES ('集会');
INSERT INTO `sensitive_word_data` VALUES ('游行');
INSERT INTO `sensitive_word_data` VALUES ('示威');
INSERT INTO `sensitive_word_data` VALUES ('自焚');
INSERT INTO `sensitive_word_data` VALUES ('垮台');
INSERT INTO `sensitive_word_data` VALUES ('倒台');
INSERT INTO `sensitive_word_data` VALUES ('分裂');
INSERT INTO `sensitive_word_data` VALUES ('镇压');
INSERT INTO `sensitive_word_data` VALUES ('迫害');
INSERT INTO `sensitive_word_data` VALUES ('独立');
INSERT INTO `sensitive_word_data` VALUES ('东突');
INSERT INTO `sensitive_word_data` VALUES ('李登辉');
INSERT INTO `sensitive_word_data` VALUES ('两国论');
INSERT INTO `sensitive_word_data` VALUES ('一边一国');
INSERT INTO `sensitive_word_data` VALUES ('陆肆');
INSERT INTO `sensitive_word_data` VALUES ('国家主席');
INSERT INTO `sensitive_word_data` VALUES ('总理');
INSERT INTO `sensitive_word_data` VALUES ('政治局');
INSERT INTO `sensitive_word_data` VALUES ('常委');
INSERT INTO `sensitive_word_data` VALUES ('中共');
INSERT INTO `sensitive_word_data` VALUES ('共军');
INSERT INTO `sensitive_word_data` VALUES ('纳粹');
INSERT INTO `sensitive_word_data` VALUES ('日本帝国');
INSERT INTO `sensitive_word_data` VALUES ('大东亚');
INSERT INTO `sensitive_word_data` VALUES ('共荣');
INSERT INTO `sensitive_word_data` VALUES ('圈赤匪');
INSERT INTO `sensitive_word_data` VALUES ('共匪16大十六大');
INSERT INTO `sensitive_word_data` VALUES ('天安门');
INSERT INTO `sensitive_word_data` VALUES ('中南海');
INSERT INTO `sensitive_word_data` VALUES ('领导');
INSERT INTO `sensitive_word_data` VALUES ('独裁');
INSERT INTO `sensitive_word_data` VALUES ('统治');
INSERT INTO `sensitive_word_data` VALUES ('万岁');
INSERT INTO `sensitive_word_data` VALUES ('私服');
INSERT INTO `sensitive_word_data` VALUES ('私服');
INSERT INTO `sensitive_word_data` VALUES ('私服');
INSERT INTO `sensitive_word_data` VALUES ('Bastard');
INSERT INTO `sensitive_word_data` VALUES ('bitch');
INSERT INTO `sensitive_word_data` VALUES ('cao');
INSERT INTO `sensitive_word_data` VALUES ('falundafa');
INSERT INTO `sensitive_word_data` VALUES ('fuckyou');
INSERT INTO `sensitive_word_data` VALUES ('fuck');
INSERT INTO `sensitive_word_data` VALUES ('J8');
INSERT INTO `sensitive_word_data` VALUES ('nnd');
INSERT INTO `sensitive_word_data` VALUES ('snk.ni8.net');
INSERT INTO `sensitive_word_data` VALUES ('TMD');
INSERT INTO `sensitive_word_data` VALUES ('YOUXIKA爱滋');
INSERT INTO `sensitive_word_data` VALUES ('扒光');
INSERT INTO `sensitive_word_data` VALUES ('白痴');
INSERT INTO `sensitive_word_data` VALUES ('白?V');
INSERT INTO `sensitive_word_data` VALUES ('白烂');
INSERT INTO `sensitive_word_data` VALUES ('包皮');
INSERT INTO `sensitive_word_data` VALUES ('?卤?');
INSERT INTO `sensitive_word_data` VALUES ('婊子');
INSERT INTO `sensitive_word_data` VALUES ('婊子');
INSERT INTO `sensitive_word_data` VALUES ('操逼');
INSERT INTO `sensitive_word_data` VALUES ('操机');
INSERT INTO `sensitive_word_data` VALUES ('操??');
INSERT INTO `sensitive_word_data` VALUES ('操??妈');
INSERT INTO `sensitive_word_data` VALUES ('操??娘');
INSERT INTO `sensitive_word_data` VALUES ('操??全家');
INSERT INTO `sensitive_word_data` VALUES ('操??祖宗');
INSERT INTO `sensitive_word_data` VALUES ('操你');
INSERT INTO `sensitive_word_data` VALUES ('操你老妈');
INSERT INTO `sensitive_word_data` VALUES ('操你老母');
INSERT INTO `sensitive_word_data` VALUES ('操你妈');
INSERT INTO `sensitive_word_data` VALUES ('操你奶奶');
INSERT INTO `sensitive_word_data` VALUES ('操你娘');
INSERT INTO `sensitive_word_data` VALUES ('操你全家');
INSERT INTO `sensitive_word_data` VALUES ('操你祖宗');
INSERT INTO `sensitive_word_data` VALUES ('??您妈');
INSERT INTO `sensitive_word_data` VALUES ('??您娘?H');
INSERT INTO `sensitive_word_data` VALUES ('插你');
INSERT INTO `sensitive_word_data` VALUES ('插死你');
INSERT INTO `sensitive_word_data` VALUES ('吃屎');
INSERT INTO `sensitive_word_data` VALUES ('吹箫');
INSERT INTO `sensitive_word_data` VALUES ('打炮');
INSERT INTO `sensitive_word_data` VALUES ('荡妇');
INSERT INTO `sensitive_word_data` VALUES ('?诺?娘');
INSERT INTO `sensitive_word_data` VALUES ('放荡');
INSERT INTO `sensitive_word_data` VALUES ('肥西干');
INSERT INTO `sensitive_word_data` VALUES ('x娘');
INSERT INTO `sensitive_word_data` VALUES ('干机掰');
INSERT INTO `sensitive_word_data` VALUES ('??老母');
INSERT INTO `sensitive_word_data` VALUES ('干??妈');
INSERT INTO `sensitive_word_data` VALUES ('干??马');
INSERT INTO `sensitive_word_data` VALUES ('干??娘');
INSERT INTO `sensitive_word_data` VALUES ('干你');
INSERT INTO `sensitive_word_data` VALUES ('干你老母');
INSERT INTO `sensitive_word_data` VALUES ('干你良');
INSERT INTO `sensitive_word_data` VALUES ('干你妈');
INSERT INTO `sensitive_word_data` VALUES ('干你娘');
INSERT INTO `sensitive_word_data` VALUES ('干您娘');
INSERT INTO `sensitive_word_data` VALUES ('干七八');
INSERT INTO `sensitive_word_data` VALUES ('干死CS');
INSERT INTO `sensitive_word_data` VALUES ('干死GM');
INSERT INTO `sensitive_word_data` VALUES ('干死客服');
INSERT INTO `sensitive_word_data` VALUES ('干死你');
INSERT INTO `sensitive_word_data` VALUES ('?指幽?娘');
INSERT INTO `sensitive_word_data` VALUES ('?改隳?');
INSERT INTO `sensitive_word_data` VALUES ('狗狼养的');
INSERT INTO `sensitive_word_data` VALUES ('狗娘养的');
INSERT INTO `sensitive_word_data` VALUES ('狗屁');
INSERT INTO `sensitive_word_data` VALUES ('狗日');
INSERT INTO `sensitive_word_data` VALUES ('狗日的');
INSERT INTO `sensitive_word_data` VALUES ('龟儿子');
INSERT INTO `sensitive_word_data` VALUES ('龟头');
INSERT INTO `sensitive_word_data` VALUES ('鬼公');
INSERT INTO `sensitive_word_data` VALUES ('花柳');
INSERT INTO `sensitive_word_data` VALUES ('机八');
INSERT INTO `sensitive_word_data` VALUES ('机巴');
INSERT INTO `sensitive_word_data` VALUES ('鸡8');
INSERT INTO `sensitive_word_data` VALUES ('鸡八');
INSERT INTO `sensitive_word_data` VALUES ('鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('鸡叭');
INSERT INTO `sensitive_word_data` VALUES ('鸡吧');
INSERT INTO `sensitive_word_data` VALUES ('芭');
INSERT INTO `sensitive_word_data` VALUES ('鸡鸡');
INSERT INTO `sensitive_word_data` VALUES ('鸡奸');
INSERT INTO `sensitive_word_data` VALUES ('?u巴');
INSERT INTO `sensitive_word_data` VALUES ('几八');
INSERT INTO `sensitive_word_data` VALUES ('几巴');
INSERT INTO `sensitive_word_data` VALUES ('几叭');
INSERT INTO `sensitive_word_data` VALUES ('几芭');
INSERT INTO `sensitive_word_data` VALUES ('妓');
INSERT INTO `sensitive_word_data` VALUES ('妓女');
INSERT INTO `sensitive_word_data` VALUES ('妓院');
INSERT INTO `sensitive_word_data` VALUES ('奸');
INSERT INTO `sensitive_word_data` VALUES ('??贱');
INSERT INTO `sensitive_word_data` VALUES ('B贱货');
INSERT INTO `sensitive_word_data` VALUES ('贱人');
INSERT INTO `sensitive_word_data` VALUES ('?v');
INSERT INTO `sensitive_word_data` VALUES ('交配');
INSERT INTO `sensitive_word_data` VALUES ('姣西');
INSERT INTO `sensitive_word_data` VALUES ('叫床');
INSERT INTO `sensitive_word_data` VALUES ('她妈的');
INSERT INTO `sensitive_word_data` VALUES ('她马的');
INSERT INTO `sensitive_word_data` VALUES ('她奶奶的');
INSERT INTO `sensitive_word_data` VALUES ('军妓');
INSERT INTO `sensitive_word_data` VALUES ('靠爸');
INSERT INTO `sensitive_word_data` VALUES ('靠母');
INSERT INTO `sensitive_word_data` VALUES ('靠腰口肯');
INSERT INTO `sensitive_word_data` VALUES ('懒8');
INSERT INTO `sensitive_word_data` VALUES ('懒八');
INSERT INTO `sensitive_word_data` VALUES ('懒教');
INSERT INTO `sensitive_word_data` VALUES ('烂逼');
INSERT INTO `sensitive_word_data` VALUES ('烂货');
INSERT INTO `sensitive_word_data` VALUES ('??');
INSERT INTO `sensitive_word_data` VALUES ('浪叫');
INSERT INTO `sensitive_word_data` VALUES ('老母');
INSERT INTO `sensitive_word_data` VALUES ('老味');
INSERT INTO `sensitive_word_data` VALUES ('轮奸');
INSERT INTO `sensitive_word_data` VALUES ('妈B');
INSERT INTO `sensitive_word_data` VALUES ('妈逼');
INSERT INTO `sensitive_word_data` VALUES ('妈比');
INSERT INTO `sensitive_word_data` VALUES ('妈的');
INSERT INTO `sensitive_word_data` VALUES ('妈的B');
INSERT INTO `sensitive_word_data` VALUES ('乳房');
INSERT INTO `sensitive_word_data` VALUES ('乳头');
INSERT INTO `sensitive_word_data` VALUES ('撒尿');
INSERT INTO `sensitive_word_data` VALUES ('塞你娘赛??阿母');
INSERT INTO `sensitive_word_data` VALUES ('骚');
INSERT INTO `sensitive_word_data` VALUES ('骚逼');
INSERT INTO `sensitive_word_data` VALUES ('骚货');
INSERT INTO `sensitive_word_data` VALUES ('傻B');
INSERT INTO `sensitive_word_data` VALUES ('傻逼');
INSERT INTO `sensitive_word_data` VALUES ('傻比');
INSERT INTO `sensitive_word_data` VALUES ('射精');
INSERT INTO `sensitive_word_data` VALUES ('射你');
INSERT INTO `sensitive_word_data` VALUES ('马的阳具');
INSERT INTO `sensitive_word_data` VALUES ('阳萎');
INSERT INTO `sensitive_word_data` VALUES ('野鸡');
INSERT INTO `sensitive_word_data` VALUES ('阴部');
INSERT INTO `sensitive_word_data` VALUES ('阴唇');
INSERT INTO `sensitive_word_data` VALUES ('阴道');
INSERT INTO `sensitive_word_data` VALUES ('阴茎');
INSERT INTO `sensitive_word_data` VALUES ('阴毛');
INSERT INTO `sensitive_word_data` VALUES ('淫');
INSERT INTO `sensitive_word_data` VALUES ('淫荡');
INSERT INTO `sensitive_word_data` VALUES ('淫妇');
INSERT INTO `sensitive_word_data` VALUES ('淫秽');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('淫西');
INSERT INTO `sensitive_word_data` VALUES ('月经');
INSERT INTO `sensitive_word_data` VALUES ('杂种');
INSERT INTO `sensitive_word_data` VALUES ('招妓');
INSERT INTO `sensitive_word_data` VALUES ('祖宗');
INSERT INTO `sensitive_word_data` VALUES ('做爱');
INSERT INTO `sensitive_word_data` VALUES ('回民吃猪肉');
INSERT INTO `sensitive_word_data` VALUES ('台独（台湾独立）');
INSERT INTO `sensitive_word_data` VALUES ('疆独');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('周恩来');
INSERT INTO `sensitive_word_data` VALUES ('抵制游行');
INSERT INTO `sensitive_word_data` VALUES ('大善大忍');
INSERT INTO `sensitive_word_data` VALUES ('宗教迫害');
INSERT INTO `sensitive_word_data` VALUES ('赤党');
INSERT INTO `sensitive_word_data` VALUES ('网络封锁');
INSERT INTO `sensitive_word_data` VALUES ('相互勾联');
INSERT INTO `sensitive_word_data` VALUES ('党禁');
INSERT INTO `sensitive_word_data` VALUES ('敌对分子');
INSERT INTO `sensitive_word_data` VALUES ('反共');
INSERT INTO `sensitive_word_data` VALUES ('海外民运');
INSERT INTO `sensitive_word_data` VALUES ('宪政');
INSERT INTO `sensitive_word_data` VALUES ('梵蒂冈');
INSERT INTO `sensitive_word_data` VALUES ('天灭中共');
INSERT INTO `sensitive_word_data` VALUES ('平反六四');
INSERT INTO `sensitive_word_data` VALUES ('渗透中共');
INSERT INTO `sensitive_word_data` VALUES ('政治变革');
INSERT INTO `sensitive_word_data` VALUES ('呼吁书');
INSERT INTO `sensitive_word_data` VALUES ('党棍官');
INSERT INTO `sensitive_word_data` VALUES ('网络活动颠覆');
INSERT INTO `sensitive_word_data` VALUES ('人权保障');
INSERT INTO `sensitive_word_data` VALUES ('巴哈依教');
INSERT INTO `sensitive_word_data` VALUES ('台人治台');
INSERT INTO `sensitive_word_data` VALUES ('公民私权');
INSERT INTO `sensitive_word_data` VALUES ('告全国同胞书');
INSERT INTO `sensitive_word_data` VALUES ('西藏地震');
INSERT INTO `sensitive_word_data` VALUES ('大法');
INSERT INTO `sensitive_word_data` VALUES ('自焚');
INSERT INTO `sensitive_word_data` VALUES ('迫害致死');
INSERT INTO `sensitive_word_data` VALUES ('邪恶势力');
INSERT INTO `sensitive_word_data` VALUES ('李洪志');
INSERT INTO `sensitive_word_data` VALUES ('九评');
INSERT INTO `sensitive_word_data` VALUES ('赤裸');
INSERT INTO `sensitive_word_data` VALUES ('口交');
INSERT INTO `sensitive_word_data` VALUES ('性欲');
INSERT INTO `sensitive_word_data` VALUES ('肛交');
INSERT INTO `sensitive_word_data` VALUES ('爱液');
INSERT INTO `sensitive_word_data` VALUES ('奶头');
INSERT INTO `sensitive_word_data` VALUES ('精液');
INSERT INTO `sensitive_word_data` VALUES ('做爱');
INSERT INTO `sensitive_word_data` VALUES ('作爱');
INSERT INTO `sensitive_word_data` VALUES ('强暴');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('新疆独立');
INSERT INTO `sensitive_word_data` VALUES ('疆独');
INSERT INTO `sensitive_word_data` VALUES ('颠覆国家');
INSERT INTO `sensitive_word_data` VALUES ('共匪');
INSERT INTO `sensitive_word_data` VALUES ('共党');
INSERT INTO `sensitive_word_data` VALUES ('中国共产党');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('代练');
INSERT INTO `sensitive_word_data` VALUES ('动网');
INSERT INTO `sensitive_word_data` VALUES ('动网先锋');
INSERT INTO `sensitive_word_data` VALUES ('六合彩');
INSERT INTO `sensitive_word_data` VALUES ('6合彩');
INSERT INTO `sensitive_word_data` VALUES ('汽车炸弹');
INSERT INTO `sensitive_word_data` VALUES ('法轮功');
INSERT INTO `sensitive_word_data` VALUES ('海洛因');
INSERT INTO `sensitive_word_data` VALUES ('枪支');
INSERT INTO `sensitive_word_data` VALUES ('入党');
INSERT INTO `sensitive_word_data` VALUES ('共产党');
INSERT INTO `sensitive_word_data` VALUES ('炸药');
INSERT INTO `sensitive_word_data` VALUES ('独裁');
INSERT INTO `sensitive_word_data` VALUES ('独派');
INSERT INTO `sensitive_word_data` VALUES ('狗日的');
INSERT INTO `sensitive_word_data` VALUES ('统治');
INSERT INTO `sensitive_word_data` VALUES ('维权');
INSERT INTO `sensitive_word_data` VALUES ('绿营');
INSERT INTO `sensitive_word_data` VALUES ('胡主席');
INSERT INTO `sensitive_word_data` VALUES ('反共');
INSERT INTO `sensitive_word_data` VALUES ('愤青');
INSERT INTO `sensitive_word_data` VALUES ('日本');
INSERT INTO `sensitive_word_data` VALUES ('抗日');
INSERT INTO `sensitive_word_data` VALUES ('她妈的');
INSERT INTO `sensitive_word_data` VALUES ('保平安');
INSERT INTO `sensitive_word_data` VALUES ('圣火');
INSERT INTO `sensitive_word_data` VALUES ('钓鱼岛');
INSERT INTO `sensitive_word_data` VALUES ('鸡吧');
INSERT INTO `sensitive_word_data` VALUES ('天安门');
INSERT INTO `sensitive_word_data` VALUES ('飞弹');
INSERT INTO `sensitive_word_data` VALUES ('炸药');
INSERT INTO `sensitive_word_data` VALUES ('宪法');
INSERT INTO `sensitive_word_data` VALUES ('法律');
INSERT INTO `sensitive_word_data` VALUES ('屠杀');
INSERT INTO `sensitive_word_data` VALUES ('自杀');
INSERT INTO `sensitive_word_data` VALUES ('强奸');
INSERT INTO `sensitive_word_data` VALUES ('民权');
INSERT INTO `sensitive_word_data` VALUES ('迷药');
INSERT INTO `sensitive_word_data` VALUES ('迷幻');
INSERT INTO `sensitive_word_data` VALUES ('贱人');
INSERT INTO `sensitive_word_data` VALUES ('销售军用手枪');
INSERT INTO `sensitive_word_data` VALUES ('陈水扁');
INSERT INTO `sensitive_word_data` VALUES ('误国');
INSERT INTO `sensitive_word_data` VALUES ('垃圾');
INSERT INTO `sensitive_word_data` VALUES ('恐怖');
INSERT INTO `sensitive_word_data` VALUES ('袭击');
INSERT INTO `sensitive_word_data` VALUES ('犯法');
INSERT INTO `sensitive_word_data` VALUES ('政治');
INSERT INTO `sensitive_word_data` VALUES ('犯罪');
INSERT INTO `sensitive_word_data` VALUES ('犯法');
INSERT INTO `sensitive_word_data` VALUES ('枪毙');
INSERT INTO `sensitive_word_data` VALUES ('丁子霖');
INSERT INTO `sensitive_word_data` VALUES ('7号文件');
INSERT INTO `sensitive_word_data` VALUES ('3号文件');
INSERT INTO `sensitive_word_data` VALUES ('4号文件');
INSERT INTO `sensitive_word_data` VALUES ('5号文件');
INSERT INTO `sensitive_word_data` VALUES ('6号文件');
INSERT INTO `sensitive_word_data` VALUES ('特码');
INSERT INTO `sensitive_word_data` VALUES ('七贤帮');
INSERT INTO `sensitive_word_data` VALUES ('三民主义');
INSERT INTO `sensitive_word_data` VALUES ('四人帮');
INSERT INTO `sensitive_word_data` VALUES ('干部');
INSERT INTO `sensitive_word_data` VALUES ('世维');
INSERT INTO `sensitive_word_data` VALUES ('东突');
INSERT INTO `sensitive_word_data` VALUES ('伊斯兰');
INSERT INTO `sensitive_word_data` VALUES ('余传琮');
INSERT INTO `sensitive_word_data` VALUES ('公开信');
INSERT INTO `sensitive_word_data` VALUES ('公投');
INSERT INTO `sensitive_word_data` VALUES ('雷管');
INSERT INTO `sensitive_word_data` VALUES ('手枪');
INSERT INTO `sensitive_word_data` VALUES ('吾吉买买提');
INSERT INTO `sensitive_word_data` VALUES ('吾尔凯西');
INSERT INTO `sensitive_word_data` VALUES ('周永康');
INSERT INTO `sensitive_word_data` VALUES ('烧光');
INSERT INTO `sensitive_word_data` VALUES ('抢光');
INSERT INTO `sensitive_word_data` VALUES ('地震');
INSERT INTO `sensitive_word_data` VALUES ('国民党');
INSERT INTO `sensitive_word_data` VALUES ('土制');
INSERT INTO `sensitive_word_data` VALUES ('圣战');
INSERT INTO `sensitive_word_data` VALUES ('胡锦涛');
INSERT INTO `sensitive_word_data` VALUES ('温家宝');
INSERT INTO `sensitive_word_data` VALUES ('习近平');
INSERT INTO `sensitive_word_data` VALUES ('江泽民');
INSERT INTO `sensitive_word_data` VALUES ('毛泽东');
INSERT INTO `sensitive_word_data` VALUES ('毛主席');
INSERT INTO `sensitive_word_data` VALUES ('温总理');
INSERT INTO `sensitive_word_data` VALUES ('周恩来');
INSERT INTO `sensitive_word_data` VALUES ('周总理');
INSERT INTO `sensitive_word_data` VALUES ('穆斯林');
INSERT INTO `sensitive_word_data` VALUES ('兄弟会');
INSERT INTO `sensitive_word_data` VALUES ('立法');
INSERT INTO `sensitive_word_data` VALUES ('立委');
INSERT INTO `sensitive_word_data` VALUES ('法院');
INSERT INTO `sensitive_word_data` VALUES ('连战');
INSERT INTO `sensitive_word_data` VALUES ('陈水扁');
INSERT INTO `sensitive_word_data` VALUES ('马英九');
INSERT INTO `sensitive_word_data` VALUES ('赛马');
INSERT INTO `sensitive_word_data` VALUES ('赌博');
INSERT INTO `sensitive_word_data` VALUES ('骰子');
INSERT INTO `sensitive_word_data` VALUES ('黄大仙');
INSERT INTO `sensitive_word_data` VALUES ('白小姐');
INSERT INTO `sensitive_word_data` VALUES ('彩票');
INSERT INTO `sensitive_word_data` VALUES ('办证');
INSERT INTO `sensitive_word_data` VALUES ('骚货');
INSERT INTO `sensitive_word_data` VALUES ('贱货');
INSERT INTO `sensitive_word_data` VALUES ('配方');
INSERT INTO `sensitive_word_data` VALUES ('曾道人');
INSERT INTO `sensitive_word_data` VALUES ('西北帮');
INSERT INTO `sensitive_word_data` VALUES ('开枪');
INSERT INTO `sensitive_word_data` VALUES ('腐败');
INSERT INTO `sensitive_word_data` VALUES ('真主党');
INSERT INTO `sensitive_word_data` VALUES ('胡温');
INSERT INTO `sensitive_word_data` VALUES ('氯胺酮');
INSERT INTO `sensitive_word_data` VALUES ('民权');
INSERT INTO `sensitive_word_data` VALUES ('货到付款');
INSERT INTO `sensitive_word_data` VALUES ('拉登');
INSERT INTO `sensitive_word_data` VALUES ('引爆');
INSERT INTO `sensitive_word_data` VALUES ('左派');
INSERT INTO `sensitive_word_data` VALUES ('右派');
INSERT INTO `sensitive_word_data` VALUES ('司法院');
INSERT INTO `sensitive_word_data` VALUES ('吕秀莲');
INSERT INTO `sensitive_word_data` VALUES ('危机');
INSERT INTO `sensitive_word_data` VALUES ('间谍');
INSERT INTO `sensitive_word_data` VALUES ('宗教');
INSERT INTO `sensitive_word_data` VALUES ('教主');
INSERT INTO `sensitive_word_data` VALUES ('司令');
INSERT INTO `sensitive_word_data` VALUES ('自缢');
INSERT INTO `sensitive_word_data` VALUES ('嫌犯');
INSERT INTO `sensitive_word_data` VALUES ('逃犯');
INSERT INTO `sensitive_word_data` VALUES ('派出所');
INSERT INTO `sensitive_word_data` VALUES ('公安局');
INSERT INTO `sensitive_word_data` VALUES ('检察机关');
INSERT INTO `sensitive_word_data` VALUES ('大会堂');
INSERT INTO `sensitive_word_data` VALUES ('检察院');
INSERT INTO `sensitive_word_data` VALUES ('刑讯');
INSERT INTO `sensitive_word_data` VALUES ('逼迫');
INSERT INTO `sensitive_word_data` VALUES ('刑法');
INSERT INTO `sensitive_word_data` VALUES ('死刑');
INSERT INTO `sensitive_word_data` VALUES ('上吊');
INSERT INTO `sensitive_word_data` VALUES ('盗窃');
INSERT INTO `sensitive_word_data` VALUES ('在押');
INSERT INTO `sensitive_word_data` VALUES ('办案');
INSERT INTO `sensitive_word_data` VALUES ('摇头丸');
INSERT INTO `sensitive_word_data` VALUES ('K粉');
INSERT INTO `sensitive_word_data` VALUES ('妖术');
INSERT INTO `sensitive_word_data` VALUES ('鸦片');
INSERT INTO `sensitive_word_data` VALUES ('罂粟');
INSERT INTO `sensitive_word_data` VALUES ('狗屎');
INSERT INTO `sensitive_word_data` VALUES ('警察');
INSERT INTO `sensitive_word_data` VALUES ('贱');
INSERT INTO `sensitive_word_data` VALUES ('奸');
INSERT INTO `sensitive_word_data` VALUES ('专制');
INSERT INTO `sensitive_word_data` VALUES ('违反');
INSERT INTO `sensitive_word_data` VALUES ('违法');
INSERT INTO `sensitive_word_data` VALUES ('八路军');
INSERT INTO `sensitive_word_data` VALUES ('游行');
INSERT INTO `sensitive_word_data` VALUES ('伊斯兰');
INSERT INTO `sensitive_word_data` VALUES ('宗教');
INSERT INTO `sensitive_word_data` VALUES ('教主');
INSERT INTO `sensitive_word_data` VALUES ('非法');
INSERT INTO `sensitive_word_data` VALUES ('暴行');
INSERT INTO `sensitive_word_data` VALUES ('地震');
INSERT INTO `sensitive_word_data` VALUES ('政府');
INSERT INTO `sensitive_word_data` VALUES ('腐败');
INSERT INTO `sensitive_word_data` VALUES ('内讧');
INSERT INTO `sensitive_word_data` VALUES ('裁决');
INSERT INTO `sensitive_word_data` VALUES ('公安局');
INSERT INTO `sensitive_word_data` VALUES ('派出所');
INSERT INTO `sensitive_word_data` VALUES ('法律');
INSERT INTO `sensitive_word_data` VALUES ('黑幕');
INSERT INTO `sensitive_word_data` VALUES ('奸商');
INSERT INTO `sensitive_word_data` VALUES ('间谍');
INSERT INTO `sensitive_word_data` VALUES ('飞弹');
INSERT INTO `sensitive_word_data` VALUES ('导弹');
INSERT INTO `sensitive_word_data` VALUES ('条约');
INSERT INTO `sensitive_word_data` VALUES ('邪教');
INSERT INTO `sensitive_word_data` VALUES ('推翻');
INSERT INTO `sensitive_word_data` VALUES ('本拉登');
INSERT INTO `sensitive_word_data` VALUES ('生死');
INSERT INTO `sensitive_word_data` VALUES ('政策');
INSERT INTO `sensitive_word_data` VALUES ('远程炸弹');
INSERT INTO `sensitive_word_data` VALUES ('远程攻击');
INSERT INTO `sensitive_word_data` VALUES ('軍官');
INSERT INTO `sensitive_word_data` VALUES ('基地');
INSERT INTO `sensitive_word_data` VALUES ('枪杀');
INSERT INTO `sensitive_word_data` VALUES ('致死');
INSERT INTO `sensitive_word_data` VALUES ('天灭');
INSERT INTO `sensitive_word_data` VALUES ('平反');
INSERT INTO `sensitive_word_data` VALUES ('炸弹');
INSERT INTO `sensitive_word_data` VALUES ('抵制');
INSERT INTO `sensitive_word_data` VALUES ('荡妇');
INSERT INTO `sensitive_word_data` VALUES ('干b');
INSERT INTO `sensitive_word_data` VALUES ('干B卧槽');
INSERT INTO `sensitive_word_data` VALUES ('含丸');
INSERT INTO `sensitive_word_data` VALUES ('舔菊');
INSERT INTO `sensitive_word_data` VALUES ('革命');
INSERT INTO `sensitive_word_data` VALUES ('A片');
INSERT INTO `sensitive_word_data` VALUES ('a片');
INSERT INTO `sensitive_word_data` VALUES ('骚');
INSERT INTO `sensitive_word_data` VALUES ('违反');
INSERT INTO `sensitive_word_data` VALUES ('违法');
INSERT INTO `sensitive_word_data` VALUES ('抢劫');
INSERT INTO `sensitive_word_data` VALUES ('反动');
INSERT INTO `sensitive_word_data` VALUES ('阳具');
INSERT INTO `sensitive_word_data` VALUES ('共产');
INSERT INTO `sensitive_word_data` VALUES ('侮辱');
INSERT INTO `sensitive_word_data` VALUES ('诋毁');
INSERT INTO `sensitive_word_data` VALUES ('战争');
INSERT INTO `sensitive_word_data` VALUES ('欺骗');
INSERT INTO `sensitive_word_data` VALUES ('灭国');
INSERT INTO `sensitive_word_data` VALUES ('换妻');
INSERT INTO `sensitive_word_data` VALUES ('脱光');
INSERT INTO `sensitive_word_data` VALUES ('群交');
INSERT INTO `sensitive_word_data` VALUES ('裸奔');
INSERT INTO `sensitive_word_data` VALUES ('避孕套');
INSERT INTO `sensitive_word_data` VALUES ('少儿');
INSERT INTO `sensitive_word_data` VALUES ('花柳');
INSERT INTO `sensitive_word_data` VALUES ('性病');
INSERT INTO `sensitive_word_data` VALUES ('001工程');
INSERT INTO `sensitive_word_data` VALUES ('17大');
INSERT INTO `sensitive_word_data` VALUES ('17权力布局');
INSERT INTO `sensitive_word_data` VALUES ('18禁');
INSERT INTO `sensitive_word_data` VALUES ('1Pondo');
INSERT INTO `sensitive_word_data` VALUES ('21世纪中国基金会');
INSERT INTO `sensitive_word_data` VALUES ('301医院');
INSERT INTO `sensitive_word_data` VALUES ('314事件');
INSERT INTO `sensitive_word_data` VALUES ('371工程');
INSERT INTO `sensitive_word_data` VALUES ('3退');
INSERT INTO `sensitive_word_data` VALUES ('4．25事件');
INSERT INTO `sensitive_word_data` VALUES ('51ini.com');
INSERT INTO `sensitive_word_data` VALUES ('571工程');
INSERT INTO `sensitive_word_data` VALUES ('6-4tianwang');
INSERT INTO `sensitive_word_data` VALUES ('6.4事件');
INSERT INTO `sensitive_word_data` VALUES ('610洗脑班');
INSERT INTO `sensitive_word_data` VALUES ('64大屠杀');
INSERT INTO `sensitive_word_data` VALUES ('64学潮');
INSERT INTO `sensitive_word_data` VALUES ('6合彩');
INSERT INTO `sensitive_word_data` VALUES ('AV麻将');
INSERT INTO `sensitive_word_data` VALUES ('AV麻將');
INSERT INTO `sensitive_word_data` VALUES ('AV女');
INSERT INTO `sensitive_word_data` VALUES ('A级');
INSERT INTO `sensitive_word_data` VALUES ('A片');
INSERT INTO `sensitive_word_data` VALUES ('bitch');
INSERT INTO `sensitive_word_data` VALUES ('C4等炸弹制作方法炸药制作');
INSERT INTO `sensitive_word_data` VALUES ('C4塑胶TNT');
INSERT INTO `sensitive_word_data` VALUES ('C4炸药制作');
INSERT INTO `sensitive_word_data` VALUES ('c4制作方法');
INSERT INTO `sensitive_word_data` VALUES ('DalaiLama自傳');
INSERT INTO `sensitive_word_data` VALUES ('DIY原子弹');
INSERT INTO `sensitive_word_data` VALUES ('falun');
INSERT INTO `sensitive_word_data` VALUES ('falu');
INSERT INTO `sensitive_word_data` VALUES ('falun');
INSERT INTO `sensitive_word_data` VALUES ('falundafa');
INSERT INTO `sensitive_word_data` VALUES ('falungong');
INSERT INTO `sensitive_word_data` VALUES ('FaLunGong');
INSERT INTO `sensitive_word_data` VALUES ('fangong');
INSERT INTO `sensitive_word_data` VALUES ('fanhua');
INSERT INTO `sensitive_word_data` VALUES ('fantizi520');
INSERT INTO `sensitive_word_data` VALUES ('Fa轮功');
INSERT INTO `sensitive_word_data` VALUES ('fa轮功');
INSERT INTO `sensitive_word_data` VALUES ('fuck');
INSERT INTO `sensitive_word_data` VALUES ('GHB');
INSERT INTO `sensitive_word_data` VALUES ('GHB粉');
INSERT INTO `sensitive_word_data` VALUES ('GHB强效迷幻液');
INSERT INTO `sensitive_word_data` VALUES ('GPS预警器');
INSERT INTO `sensitive_word_data` VALUES ('GPS預警器');
INSERT INTO `sensitive_word_data` VALUES ('hongzhi');
INSERT INTO `sensitive_word_data` VALUES ('J巴');
INSERT INTO `sensitive_word_data` VALUES ('K粉');
INSERT INTO `sensitive_word_data` VALUES ('lama');
INSERT INTO `sensitive_word_data` VALUES ('lihongzhi');
INSERT INTO `sensitive_word_data` VALUES ('MC军团');
INSERT INTO `sensitive_word_data` VALUES ('MC軍團');
INSERT INTO `sensitive_word_data` VALUES ('功学T');
INSERT INTO `sensitive_word_data` VALUES ('PE-6拦截器');
INSERT INTO `sensitive_word_data` VALUES ('PE-6攔截器');
INSERT INTO `sensitive_word_data` VALUES ('peacehall');
INSERT INTO `sensitive_word_data` VALUES ('PK黑社会');
INSERT INTO `sensitive_word_data` VALUES ('qiang支');
INSERT INTO `sensitive_word_data` VALUES ('qq幸运用户抽奖');
INSERT INTO `sensitive_word_data` VALUES ('qq幸哂脩舫楠?');
INSERT INTO `sensitive_word_data` VALUES ('SIM卡抽奖');
INSERT INTO `sensitive_word_data` VALUES ('SM虐待');
INSERT INTO `sensitive_word_data` VALUES ('suck');
INSERT INTO `sensitive_word_data` VALUES ('svdc');
INSERT INTO `sensitive_word_data` VALUES ('taip');
INSERT INTO `sensitive_word_data` VALUES ('The3FeelOnline');
INSERT INTO `sensitive_word_data` VALUES ('tianwang');
INSERT INTO `sensitive_word_data` VALUES ('tibetalk');
INSERT INTO `sensitive_word_data` VALUES ('TMD=>真美妙');
INSERT INTO `sensitive_word_data` VALUES ('TND');
INSERT INTO `sensitive_word_data` VALUES ('TNND');
INSERT INTO `sensitive_word_data` VALUES ('TNT炸弹制作方法');
INSERT INTO `sensitive_word_data` VALUES ('tnt炸药');
INSERT INTO `sensitive_word_data` VALUES ('TNT炸药制作法');
INSERT INTO `sensitive_word_data` VALUES ('VOA采访热比娅');
INSERT INTO `sensitive_word_data` VALUES ('[av]');
INSERT INTO `sensitive_word_data` VALUES ('[hz]');
INSERT INTO `sensitive_word_data` VALUES ('[sm]');
INSERT INTO `sensitive_word_data` VALUES ('“震撼”视频文件');
INSERT INTO `sensitive_word_data` VALUES ('震撼中”文件');
INSERT INTO `sensitive_word_data` VALUES ('《12个春秋》');
INSERT INTO `sensitive_word_data` VALUES ('《风波记》');
INSERT INTO `sensitive_word_data` VALUES ('《目睹中国改革开放28年之怪现状》');
INSERT INTO `sensitive_word_data` VALUES ('《苹果》');
INSERT INTO `sensitive_word_data` VALUES ('《色戒》');
INSERT INTO `sensitive_word_data` VALUES ('《天音》');
INSERT INTO `sensitive_word_data` VALUES ('《天音》专辑');
INSERT INTO `sensitive_word_data` VALUES ('《中国民主》');
INSERT INTO `sensitive_word_data` VALUES ('６10办公室');
INSERT INTO `sensitive_word_data` VALUES ('８.9事件');
INSERT INTO `sensitive_word_data` VALUES ('阿不来提');
INSERT INTO `sensitive_word_data` VALUES ('阿里布达年代记');
INSERT INTO `sensitive_word_data` VALUES ('艾司唑仑');
INSERT INTO `sensitive_word_data` VALUES ('艾斯海提');
INSERT INTO `sensitive_word_data` VALUES ('爱国运动');
INSERT INTO `sensitive_word_data` VALUES ('爱国者同盟');
INSERT INTO `sensitive_word_data` VALUES ('爱国者同盟网站');
INSERT INTO `sensitive_word_data` VALUES ('爱姐妹');
INSERT INTO `sensitive_word_data` VALUES ('爱神之传奇');
INSERT INTO `sensitive_word_data` VALUES ('爱滋村里的爱');
INSERT INTO `sensitive_word_data` VALUES ('愛姐妹');
INSERT INTO `sensitive_word_data` VALUES ('安定片');
INSERT INTO `sensitive_word_data` VALUES ('安魂网');
INSERT INTO `sensitive_word_data` VALUES ('安立敏');
INSERT INTO `sensitive_word_data` VALUES ('八九见证');
INSERT INTO `sensitive_word_data` VALUES ('八九学潮');
INSERT INTO `sensitive_word_data` VALUES ('八荣八耻');
INSERT INTO `sensitive_word_data` VALUES ('巴赫');
INSERT INTO `sensitive_word_data` VALUES ('巴拉斯');
INSERT INTO `sensitive_word_data` VALUES ('巴特尔');
INSERT INTO `sensitive_word_data` VALUES ('巴音朝鲁');
INSERT INTO `sensitive_word_data` VALUES ('罢工');
INSERT INTO `sensitive_word_data` VALUES ('罢课');
INSERT INTO `sensitive_word_data` VALUES ('白军');
INSERT INTO `sensitive_word_data` VALUES ('白立朴');
INSERT INTO `sensitive_word_data` VALUES ('白梦');
INSERT INTO `sensitive_word_data` VALUES ('白皮书');
INSERT INTO `sensitive_word_data` VALUES ('白小姐');
INSERT INTO `sensitive_word_data` VALUES ('办高利贷');
INSERT INTO `sensitive_word_data` VALUES ('办理文凭');
INSERT INTO `sensitive_word_data` VALUES ('办理证件');
INSERT INTO `sensitive_word_data` VALUES ('办证');
INSERT INTO `sensitive_word_data` VALUES ('伴我淫');
INSERT INTO `sensitive_word_data` VALUES ('辦理文憑');
INSERT INTO `sensitive_word_data` VALUES ('辦理證件');
INSERT INTO `sensitive_word_data` VALUES ('包娃衣');
INSERT INTO `sensitive_word_data` VALUES ('包夜');
INSERT INTO `sensitive_word_data` VALUES ('保钓');
INSERT INTO `sensitive_word_data` VALUES ('报告汇编');
INSERT INTO `sensitive_word_data` VALUES ('报禁');
INSERT INTO `sensitive_word_data` VALUES ('报码聊天');
INSERT INTO `sensitive_word_data` VALUES ('鲍戈');
INSERT INTO `sensitive_word_data` VALUES ('鲍彤');
INSERT INTO `sensitive_word_data` VALUES ('暴动');
INSERT INTO `sensitive_word_data` VALUES ('暴動');
INSERT INTO `sensitive_word_data` VALUES ('暴干');
INSERT INTO `sensitive_word_data` VALUES ('暴力拆迁');
INSERT INTO `sensitive_word_data` VALUES ('暴力冲突');
INSERT INTO `sensitive_word_data` VALUES ('暴力镇压');
INSERT INTO `sensitive_word_data` VALUES ('暴乱');
INSERT INTO `sensitive_word_data` VALUES ('暴亂');
INSERT INTO `sensitive_word_data` VALUES ('暴政');
INSERT INTO `sensitive_word_data` VALUES ('爆炸物');
INSERT INTO `sensitive_word_data` VALUES ('北京黑幕');
INSERT INTO `sensitive_word_data` VALUES ('北京劲展鹏');
INSERT INTO `sensitive_word_data` VALUES ('北京市委常委');
INSERT INTO `sensitive_word_data` VALUES ('北京市委黑幕');
INSERT INTO `sensitive_word_data` VALUES ('北京宣传部长');
INSERT INTO `sensitive_word_data` VALUES ('北京战争');
INSERT INTO `sensitive_word_data` VALUES ('北京政法委书记');
INSERT INTO `sensitive_word_data` VALUES ('北京政权');
INSERT INTO `sensitive_word_data` VALUES ('北京政坛清华名人');
INSERT INTO `sensitive_word_data` VALUES ('本拉登');
INSERT INTO `sensitive_word_data` VALUES ('苯巴比妥');
INSERT INTO `sensitive_word_data` VALUES ('苯乙酸诺龙');
INSERT INTO `sensitive_word_data` VALUES ('避孕套');
INSERT INTO `sensitive_word_data` VALUES ('变革之风');
INSERT INTO `sensitive_word_data` VALUES ('变声电话');
INSERT INTO `sensitive_word_data` VALUES ('变声器');
INSERT INTO `sensitive_word_data` VALUES ('变态');
INSERT INTO `sensitive_word_data` VALUES ('變聲電話');
INSERT INTO `sensitive_word_data` VALUES ('變聲器');
INSERT INTO `sensitive_word_data` VALUES ('婊子');
INSERT INTO `sensitive_word_data` VALUES ('冰毒');
INSERT INTO `sensitive_word_data` VALUES ('冰火');
INSERT INTO `sensitive_word_data` VALUES ('兵种教材');
INSERT INTO `sensitive_word_data` VALUES ('病业说');
INSERT INTO `sensitive_word_data` VALUES ('波霸');
INSERT INTO `sensitive_word_data` VALUES ('波动少女');
INSERT INTO `sensitive_word_data` VALUES ('波動少女');
INSERT INTO `sensitive_word_data` VALUES ('伯希来');
INSERT INTO `sensitive_word_data` VALUES ('博彩');
INSERT INTO `sensitive_word_data` VALUES ('博讯');
INSERT INTO `sensitive_word_data` VALUES ('薄格');
INSERT INTO `sensitive_word_data` VALUES ('薄熙来');
INSERT INTO `sensitive_word_data` VALUES ('不良少女日记');
INSERT INTO `sensitive_word_data` VALUES ('不是易非毁责。志空服金生');
INSERT INTO `sensitive_word_data` VALUES ('步枪');
INSERT INTO `sensitive_word_data` VALUES ('财政部绝密');
INSERT INTO `sensitive_word_data` VALUES ('蔡崇国');
INSERT INTO `sensitive_word_data` VALUES ('参谋业务参考资料');
INSERT INTO `sensitive_word_data` VALUES ('沧澜曲');
INSERT INTO `sensitive_word_data` VALUES ('藏春阁');
INSERT INTO `sensitive_word_data` VALUES ('藏春閣');
INSERT INTO `sensitive_word_data` VALUES ('藏獨');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('藏妇会');
INSERT INTO `sensitive_word_data` VALUES ('藏青会');
INSERT INTO `sensitive_word_data` VALUES ('操B');
INSERT INTO `sensitive_word_data` VALUES ('操逼');
INSERT INTO `sensitive_word_data` VALUES ('操比');
INSERT INTO `sensitive_word_data` VALUES ('操蛋');
INSERT INTO `sensitive_word_data` VALUES ('操你');
INSERT INTO `sensitive_word_data` VALUES ('操你妈');
INSERT INTO `sensitive_word_data` VALUES ('操你娘');
INSERT INTO `sensitive_word_data` VALUES ('操死');
INSERT INTO `sensitive_word_data` VALUES ('操');
INSERT INTO `sensitive_word_data` VALUES ('操他');
INSERT INTO `sensitive_word_data` VALUES ('曹长青');
INSERT INTO `sensitive_word_data` VALUES ('曹刚川');
INSERT INTO `sensitive_word_data` VALUES ('草莓牛奶');
INSERT INTO `sensitive_word_data` VALUES ('草你妈');
INSERT INTO `sensitive_word_data` VALUES ('插B');
INSERT INTO `sensitive_word_data` VALUES ('插插');
INSERT INTO `sensitive_word_data` VALUES ('插她');
INSERT INTO `sensitive_word_data` VALUES ('插你');
INSERT INTO `sensitive_word_data` VALUES ('插他');
INSERT INTO `sensitive_word_data` VALUES ('插我');
INSERT INTO `sensitive_word_data` VALUES ('柴玲');
INSERT INTO `sensitive_word_data` VALUES ('禅密功');
INSERT INTO `sensitive_word_data` VALUES ('長瀨愛');
INSERT INTO `sensitive_word_data` VALUES ('常劲');
INSERT INTO `sensitive_word_data` VALUES ('常委');
INSERT INTO `sensitive_word_data` VALUES ('常委汪兆钧');
INSERT INTO `sensitive_word_data` VALUES ('超常科学');
INSERT INTO `sensitive_word_data` VALUES ('超越红墙');
INSERT INTO `sensitive_word_data` VALUES ('朝河蘭');
INSERT INTO `sensitive_word_data` VALUES ('潮吹');
INSERT INTO `sensitive_word_data` VALUES ('炒股国歌');
INSERT INTO `sensitive_word_data` VALUES ('炒股國歌');
INSERT INTO `sensitive_word_data` VALUES ('车仑');
INSERT INTO `sensitive_word_data` VALUES ('车牌反光');
INSERT INTO `sensitive_word_data` VALUES ('陈炳基');
INSERT INTO `sensitive_word_data` VALUES ('陈军');
INSERT INTO `sensitive_word_data` VALUES ('陈良宇');
INSERT INTO `sensitive_word_data` VALUES ('陈良宇沉浮之路');
INSERT INTO `sensitive_word_data` VALUES ('陈蒙');
INSERT INTO `sensitive_word_data` VALUES ('陈破空');
INSERT INTO `sensitive_word_data` VALUES ('陈水扁');
INSERT INTO `sensitive_word_data` VALUES ('陈水扁总统');
INSERT INTO `sensitive_word_data` VALUES ('陈希同');
INSERT INTO `sensitive_word_data` VALUES ('陈小同');
INSERT INTO `sensitive_word_data` VALUES ('陈宣良');
INSERT INTO `sensitive_word_data` VALUES ('陈一谘');
INSERT INTO `sensitive_word_data` VALUES ('陈总统');
INSERT INTO `sensitive_word_data` VALUES ('陳方安生');
INSERT INTO `sensitive_word_data` VALUES ('成佛做主');
INSERT INTO `sensitive_word_data` VALUES ('成人{5}');
INSERT INTO `sensitive_word_data` VALUES ('成人表演');
INSERT INTO `sensitive_word_data` VALUES ('成人电影');
INSERT INTO `sensitive_word_data` VALUES ('成人電影');
INSERT INTO `sensitive_word_data` VALUES ('成人激情');
INSERT INTO `sensitive_word_data` VALUES ('成人交友');
INSERT INTO `sensitive_word_data` VALUES ('成人卡通');
INSERT INTO `sensitive_word_data` VALUES ('成人录像');
INSERT INTO `sensitive_word_data` VALUES ('成人论坛');
INSERT INTO `sensitive_word_data` VALUES ('成人論壇');
INSERT INTO `sensitive_word_data` VALUES ('成人漫画');
INSERT INTO `sensitive_word_data` VALUES ('成人配色');
INSERT INTO `sensitive_word_data` VALUES ('成人片');
INSERT INTO `sensitive_word_data` VALUES ('成人书库');
INSERT INTO `sensitive_word_data` VALUES ('成人贴图');
INSERT INTO `sensitive_word_data` VALUES ('成人貼圖');
INSERT INTO `sensitive_word_data` VALUES ('成人图片');
INSERT INTO `sensitive_word_data` VALUES ('成人圖片');
INSERT INTO `sensitive_word_data` VALUES ('成人网站');
INSERT INTO `sensitive_word_data` VALUES ('成人網站');
INSERT INTO `sensitive_word_data` VALUES ('成人文学');
INSERT INTO `sensitive_word_data` VALUES ('成人小说');
INSERT INTO `sensitive_word_data` VALUES ('成人小說');
INSERT INTO `sensitive_word_data` VALUES ('成人笑话');
INSERT INTO `sensitive_word_data` VALUES ('成人杂志');
INSERT INTO `sensitive_word_data` VALUES ('成人雜誌');
INSERT INTO `sensitive_word_data` VALUES ('城管');
INSERT INTO `sensitive_word_data` VALUES ('程凯');
INSERT INTO `sensitive_word_data` VALUES ('程铁军');
INSERT INTO `sensitive_word_data` VALUES ('程渭山');
INSERT INTO `sensitive_word_data` VALUES ('程真');
INSERT INTO `sensitive_word_data` VALUES ('痴汉是犯罪');
INSERT INTO `sensitive_word_data` VALUES ('癡漢是犯罪');
INSERT INTO `sensitive_word_data` VALUES ('迟浩田');
INSERT INTO `sensitive_word_data` VALUES ('迟来的救灾');
INSERT INTO `sensitive_word_data` VALUES ('持不同政见');
INSERT INTO `sensitive_word_data` VALUES ('赤匪');
INSERT INTO `sensitive_word_data` VALUES ('赤化');
INSERT INTO `sensitive_word_data` VALUES ('抽插');
INSERT INTO `sensitive_word_data` VALUES ('臭作');
INSERT INTO `sensitive_word_data` VALUES ('出售冰毒');
INSERT INTO `sensitive_word_data` VALUES ('出售答案');
INSERT INTO `sensitive_word_data` VALUES ('出售弹药');
INSERT INTO `sensitive_word_data` VALUES ('出售二手走私车');
INSERT INTO `sensitive_word_data` VALUES ('出售发票');
INSERT INTO `sensitive_word_data` VALUES ('出售工字');
INSERT INTO `sensitive_word_data` VALUES ('出售假币');
INSERT INTO `sensitive_word_data` VALUES ('出售假幣');
INSERT INTO `sensitive_word_data` VALUES ('出售雷管');
INSERT INTO `sensitive_word_data` VALUES ('出售雷管炸药自制炸弹');
INSERT INTO `sensitive_word_data` VALUES ('出售枪支');
INSERT INTO `sensitive_word_data` VALUES ('出售槍支');
INSERT INTO `sensitive_word_data` VALUES ('出售手枪');
INSERT INTO `sensitive_word_data` VALUES ('出售手槍');
INSERT INTO `sensitive_word_data` VALUES ('出售银行');
INSERT INTO `sensitive_word_data` VALUES ('出售炸药');
INSERT INTO `sensitive_word_data` VALUES ('出售走私车');
INSERT INTO `sensitive_word_data` VALUES ('除湿机');
INSERT INTO `sensitive_word_data` VALUES ('处女');
INSERT INTO `sensitive_word_data` VALUES ('处女终结者{MOD}');
INSERT INTO `sensitive_word_data` VALUES ('处女终结者**');
INSERT INTO `sensitive_word_data` VALUES ('川島和津實');
INSERT INTO `sensitive_word_data` VALUES ('传九退三');
INSERT INTO `sensitive_word_data` VALUES ('传说的胡曾联手是一种假象');
INSERT INTO `sensitive_word_data` VALUES ('传真群发');
INSERT INTO `sensitive_word_data` VALUES ('传中共中央关于17大的人事安排意见');
INSERT INTO `sensitive_word_data` VALUES ('创世之子猎艳之旅');
INSERT INTO `sensitive_word_data` VALUES ('吹萧');
INSERT INTO `sensitive_word_data` VALUES ('春夏之交');
INSERT INTO `sensitive_word_data` VALUES ('春夏自由论坛');
INSERT INTO `sensitive_word_data` VALUES ('春药');
INSERT INTO `sensitive_word_data` VALUES ('春藥');
INSERT INTO `sensitive_word_data` VALUES ('慈悲功');
INSERT INTO `sensitive_word_data` VALUES ('粗口歌');
INSERT INTO `sensitive_word_data` VALUES ('促红细胞生成素');
INSERT INTO `sensitive_word_data` VALUES ('崔会烈');
INSERT INTO `sensitive_word_data` VALUES ('催泪弹');
INSERT INTO `sensitive_word_data` VALUES ('催泪枪');
INSERT INTO `sensitive_word_data` VALUES ('催情春药');
INSERT INTO `sensitive_word_data` VALUES ('催情粉');
INSERT INTO `sensitive_word_data` VALUES ('催情水');
INSERT INTO `sensitive_word_data` VALUES ('催情药');
INSERT INTO `sensitive_word_data` VALUES ('催情藥');
INSERT INTO `sensitive_word_data` VALUES ('催情液');
INSERT INTO `sensitive_word_data` VALUES ('达赖');
INSERT INTO `sensitive_word_data` VALUES ('达赖喇嘛');
INSERT INTO `sensitive_word_data` VALUES ('达赖领奖');
INSERT INTO `sensitive_word_data` VALUES ('达米宣教会');
INSERT INTO `sensitive_word_data` VALUES ('答案卫星接收机');
INSERT INTO `sensitive_word_data` VALUES ('打{10}倒{10}');
INSERT INTO `sensitive_word_data` VALUES ('{10}产{10}党');
INSERT INTO `sensitive_word_data` VALUES ('打保单');
INSERT INTO `sensitive_word_data` VALUES ('打倒共产党');
INSERT INTO `sensitive_word_data` VALUES ('打飞机');
INSERT INTO `sensitive_word_data` VALUES ('打炮');
INSERT INTO `sensitive_word_data` VALUES ('打坦克手册');
INSERT INTO `sensitive_word_data` VALUES ('打砸抢');
INSERT INTO `sensitive_word_data` VALUES ('大b');
INSERT INTO `sensitive_word_data` VALUES ('大{10}纪{10}元');
INSERT INTO `sensitive_word_data` VALUES ('大逼');
INSERT INTO `sensitive_word_data` VALUES ('大比');
INSERT INTO `sensitive_word_data` VALUES ('大法');
INSERT INTO `sensitive_word_data` VALUES ('大法大福');
INSERT INTO `sensitive_word_data` VALUES ('大法大纪园');
INSERT INTO `sensitive_word_data` VALUES ('大法弟子');
INSERT INTO `sensitive_word_data` VALUES ('大法洪传');
INSERT INTO `sensitive_word_data` VALUES ('大法师傅');
INSERT INTO `sensitive_word_data` VALUES ('大法新闻社');
INSERT INTO `sensitive_word_data` VALUES ('大法修炼者');
INSERT INTO `sensitive_word_data` VALUES ('大法之声');
INSERT INTO `sensitive_word_data` VALUES ('大砝弟子');
INSERT INTO `sensitive_word_data` VALUES ('大花逼');
INSERT INTO `sensitive_word_data` VALUES ('大鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('大记元');
INSERT INTO `sensitive_word_data` VALUES ('大纪');
INSERT INTO `sensitive_word_data` VALUES ('大纪元');
INSERT INTO `sensitive_word_data` VALUES ('大纪元时报');
INSERT INTO `sensitive_word_data` VALUES ('大纪元新闻网');
INSERT INTO `sensitive_word_data` VALUES ('大纪元杂志');
INSERT INTO `sensitive_word_data` VALUES ('大纪园');
INSERT INTO `sensitive_word_data` VALUES ('大紀元');
INSERT INTO `sensitive_word_data` VALUES ('大陆独裁者');
INSERT INTO `sensitive_word_data` VALUES ('大学暴动');
INSERT INTO `sensitive_word_data` VALUES ('大学骚乱');
INSERT INTO `sensitive_word_data` VALUES ('大學騷亂');
INSERT INTO `sensitive_word_data` VALUES ('大圆满法');
INSERT INTO `sensitive_word_data` VALUES ('大祚荣');
INSERT INTO `sensitive_word_data` VALUES ('代办');
INSERT INTO `sensitive_word_data` VALUES ('代办签证');
INSERT INTO `sensitive_word_data` VALUES ('代办证件');
INSERT INTO `sensitive_word_data` VALUES ('代办证件{MOD}');
INSERT INTO `sensitive_word_data` VALUES ('代办证件**');
INSERT INTO `sensitive_word_data` VALUES ('代辦');
INSERT INTO `sensitive_word_data` VALUES ('代缴发票');
INSERT INTO `sensitive_word_data` VALUES ('代缴税');
INSERT INTO `sensitive_word_data` VALUES ('代开');
INSERT INTO `sensitive_word_data` VALUES ('代开发票');
INSERT INTO `sensitive_word_data` VALUES ('代开发票{MOD}');
INSERT INTO `sensitive_word_data` VALUES ('代开发票**');
INSERT INTO `sensitive_word_data` VALUES ('代开商业发票');
INSERT INTO `sensitive_word_data` VALUES ('代开增值税');
INSERT INTO `sensitive_word_data` VALUES ('代開');
INSERT INTO `sensitive_word_data` VALUES ('代開發票');
INSERT INTO `sensitive_word_data` VALUES ('代卖发票');
INSERT INTO `sensitive_word_data` VALUES ('代售发票');
INSERT INTO `sensitive_word_data` VALUES ('代孕');
INSERT INTO `sensitive_word_data` VALUES ('戴海静');
INSERT INTO `sensitive_word_data` VALUES ('戴海靜');
INSERT INTO `sensitive_word_data` VALUES ('戴相龙');
INSERT INTO `sensitive_word_data` VALUES ('耽美');
INSERT INTO `sensitive_word_data` VALUES ('党保平安');
INSERT INTO `sensitive_word_data` VALUES ('党棍');
INSERT INTO `sensitive_word_data` VALUES ('党国');
INSERT INTO `sensitive_word_data` VALUES ('党禁');
INSERT INTO `sensitive_word_data` VALUES ('党魁');
INSERT INTO `sensitive_word_data` VALUES ('党妈妈');
INSERT INTO `sensitive_word_data` VALUES ('党内内部资料');
INSERT INTO `sensitive_word_data` VALUES ('党内权力');
INSERT INTO `sensitive_word_data` VALUES ('党内权争');
INSERT INTO `sensitive_word_data` VALUES ('党内危机');
INSERT INTO `sensitive_word_data` VALUES ('党内言事潮');
INSERT INTO `sensitive_word_data` VALUES ('党委书记');
INSERT INTO `sensitive_word_data` VALUES ('党文化');
INSERT INTO `sensitive_word_data` VALUES ('党政人事');
INSERT INTO `sensitive_word_data` VALUES ('荡妇');
INSERT INTO `sensitive_word_data` VALUES ('登辉');
INSERT INTO `sensitive_word_data` VALUES ('等级答案');
INSERT INTO `sensitive_word_data` VALUES ('邓二世');
INSERT INTO `sensitive_word_data` VALUES ('邓力群自述');
INSERT INTO `sensitive_word_data` VALUES ('邓派');
INSERT INTO `sensitive_word_data` VALUES ('邓小平');
INSERT INTO `sensitive_word_data` VALUES ('邓笑贫');
INSERT INTO `sensitive_word_data` VALUES ('邓颖超日记');
INSERT INTO `sensitive_word_data` VALUES ('鄧小平');
INSERT INTO `sensitive_word_data` VALUES ('狄玉明');
INSERT INTO `sensitive_word_data` VALUES ('迪里夏提');
INSERT INTO `sensitive_word_data` VALUES ('底裤');
INSERT INTO `sensitive_word_data` VALUES ('地磅仪');
INSERT INTO `sensitive_word_data` VALUES ('地磅儀');
INSERT INTO `sensitive_word_data` VALUES ('地方召会');
INSERT INTO `sensitive_word_data` VALUES ('地块规划');
INSERT INTO `sensitive_word_data` VALUES ('地西泮片');
INSERT INTO `sensitive_word_data` VALUES ('地下教会');
INSERT INTO `sensitive_word_data` VALUES ('地下刊物');
INSERT INTO `sensitive_word_data` VALUES ('地下先烈');
INSERT INTO `sensitive_word_data` VALUES ('地震天谴');
INSERT INTO `sensitive_word_data` VALUES ('弟疼');
INSERT INTO `sensitive_word_data` VALUES ('弟痛');
INSERT INTO `sensitive_word_data` VALUES ('弟子');
INSERT INTO `sensitive_word_data` VALUES ('帝国之梦');
INSERT INTO `sensitive_word_data` VALUES ('帝國之夢');
INSERT INTO `sensitive_word_data` VALUES ('递进民主');
INSERT INTO `sensitive_word_data` VALUES ('第二代身份证');
INSERT INTO `sensitive_word_data` VALUES ('第三党');
INSERT INTO `sensitive_word_data` VALUES ('第三道路党');
INSERT INTO `sensitive_word_data` VALUES ('第十六次代表');
INSERT INTO `sensitive_word_data` VALUES ('第四代');
INSERT INTO `sensitive_word_data` VALUES ('第五代红人');
INSERT INTO `sensitive_word_data` VALUES ('第五代接班梯队');
INSERT INTO `sensitive_word_data` VALUES ('第五代中央领导人');
INSERT INTO `sensitive_word_data` VALUES ('第一书记');
INSERT INTO `sensitive_word_data` VALUES ('颠覆中国政权');
INSERT INTO `sensitive_word_data` VALUES ('颠覆中华人民共和国政');
INSERT INTO `sensitive_word_data` VALUES ('点对点裸聊');
INSERT INTO `sensitive_word_data` VALUES ('电车之狼');
INSERT INTO `sensitive_word_data` VALUES ('电动葫芦');
INSERT INTO `sensitive_word_data` VALUES ('电话拦截');
INSERT INTO `sensitive_word_data` VALUES ('电视流氓');
INSERT INTO `sensitive_word_data` VALUES ('电信路藏民');
INSERT INTO `sensitive_word_data` VALUES ('电子狗');
INSERT INTO `sensitive_word_data` VALUES ('電車之狼');
INSERT INTO `sensitive_word_data` VALUES ('電話攔截');
INSERT INTO `sensitive_word_data` VALUES ('電子狗');
INSERT INTO `sensitive_word_data` VALUES ('钓鱼岛');
INSERT INTO `sensitive_word_data` VALUES ('调试家用卫星');
INSERT INTO `sensitive_word_data` VALUES ('調教');
INSERT INTO `sensitive_word_data` VALUES ('丁关根');
INSERT INTO `sensitive_word_data` VALUES ('丁元');
INSERT INTO `sensitive_word_data` VALUES ('丁子霖');
INSERT INTO `sensitive_word_data` VALUES ('叮丙诺菲');
INSERT INTO `sensitive_word_data` VALUES ('定情粉');
INSERT INTO `sensitive_word_data` VALUES ('定情药');
INSERT INTO `sensitive_word_data` VALUES ('东北独立');
INSERT INTO `sensitive_word_data` VALUES ('东突');
INSERT INTO `sensitive_word_data` VALUES ('东突厥斯坦');
INSERT INTO `sensitive_word_data` VALUES ('东突厥斯坦伊斯兰');
INSERT INTO `sensitive_word_data` VALUES ('东突厥斯坦伊斯兰运动');
INSERT INTO `sensitive_word_data` VALUES ('东土耳其斯坦');
INSERT INTO `sensitive_word_data` VALUES ('东西南北论坛');
INSERT INTO `sensitive_word_data` VALUES ('东洲');
INSERT INTO `sensitive_word_data` VALUES ('董存瑞问');
INSERT INTO `sensitive_word_data` VALUES ('董存瑞問');
INSERT INTO `sensitive_word_data` VALUES ('董宜胜');
INSERT INTO `sensitive_word_data` VALUES ('动乱');
INSERT INTO `sensitive_word_data` VALUES ('毒气赌具');
INSERT INTO `sensitive_word_data` VALUES ('独裁');
INSERT INTO `sensitive_word_data` VALUES ('独裁政治');
INSERT INTO `sensitive_word_data` VALUES ('独立台湾会');
INSERT INTO `sensitive_word_data` VALUES ('独立中文笔会');
INSERT INTO `sensitive_word_data` VALUES ('赌博粉');
INSERT INTO `sensitive_word_data` VALUES ('赌博专用');
INSERT INTO `sensitive_word_data` VALUES ('赌球');
INSERT INTO `sensitive_word_data` VALUES ('赌球网站');
INSERT INTO `sensitive_word_data` VALUES ('賭博粉');
INSERT INTO `sensitive_word_data` VALUES ('賭博專用');
INSERT INTO `sensitive_word_data` VALUES ('杜智富');
INSERT INTO `sensitive_word_data` VALUES ('渡海登陆作战选编');
INSERT INTO `sensitive_word_data` VALUES ('短信广告');
INSERT INTO `sensitive_word_data` VALUES ('短信猫');
INSERT INTO `sensitive_word_data` VALUES ('短信群发');
INSERT INTO `sensitive_word_data` VALUES ('短信群发器');
INSERT INTO `sensitive_word_data` VALUES ('短信群发器{MOD}');
INSERT INTO `sensitive_word_data` VALUES ('短信群发器**');
INSERT INTO `sensitive_word_data` VALUES ('短信商务广告');
INSERT INTO `sensitive_word_data` VALUES ('对共产党清算');
INSERT INTO `sensitive_word_data` VALUES ('对日强硬');
INSERT INTO `sensitive_word_data` VALUES ('对外高层人事');
INSERT INTO `sensitive_word_data` VALUES ('对中共的姑息就是对死难者的残忍');
INSERT INTO `sensitive_word_data` VALUES ('多党');
INSERT INTO `sensitive_word_data` VALUES ('多党执政');
INSERT INTO `sensitive_word_data` VALUES ('多黨');
INSERT INTO `sensitive_word_data` VALUES ('多吉才让');
INSERT INTO `sensitive_word_data` VALUES ('多美康');
INSERT INTO `sensitive_word_data` VALUES ('多维新闻');
INSERT INTO `sensitive_word_data` VALUES ('屙民');
INSERT INTO `sensitive_word_data` VALUES ('恶党');
INSERT INTO `sensitive_word_data` VALUES ('恶警');
INSERT INTO `sensitive_word_data` VALUES ('恩诺欣');
INSERT INTO `sensitive_word_data` VALUES ('二B');
INSERT INTO `sensitive_word_data` VALUES ('二逼');
INSERT INTO `sensitive_word_data` VALUES ('二奶大奖');
INSERT INTO `sensitive_word_data` VALUES ('二奶大赛');
INSERT INTO `sensitive_word_data` VALUES ('二奶大賽');
INSERT INTO `sensitive_word_data` VALUES ('发-票');
INSERT INTO `sensitive_word_data` VALUES ('发愣');
INSERT INTO `sensitive_word_data` VALUES ('发抡');
INSERT INTO `sensitive_word_data` VALUES ('发抡功');
INSERT INTO `sensitive_word_data` VALUES ('发仑');
INSERT INTO `sensitive_word_data` VALUES ('发仑da发');
INSERT INTO `sensitive_word_data` VALUES ('发伦');
INSERT INTO `sensitive_word_data` VALUES ('发伦工');
INSERT INTO `sensitive_word_data` VALUES ('发伦功');
INSERT INTO `sensitive_word_data` VALUES ('发囵');
INSERT INTO `sensitive_word_data` VALUES ('发沦');
INSERT INTO `sensitive_word_data` VALUES ('发纶');
INSERT INTO `sensitive_word_data` VALUES ('发轮');
INSERT INTO `sensitive_word_data` VALUES ('发轮功');
INSERT INTO `sensitive_word_data` VALUES ('发轮功陈果');
INSERT INTO `sensitive_word_data` VALUES ('发论');
INSERT INTO `sensitive_word_data` VALUES ('发论公');
INSERT INTO `sensitive_word_data` VALUES ('发论功');
INSERT INTO `sensitive_word_data` VALUES ('发票');
INSERT INTO `sensitive_word_data` VALUES ('发票代开');
INSERT INTO `sensitive_word_data` VALUES ('发正念');
INSERT INTO `sensitive_word_data` VALUES ('發-票');
INSERT INTO `sensitive_word_data` VALUES ('發倫');
INSERT INTO `sensitive_word_data` VALUES ('發淪');
INSERT INTO `sensitive_word_data` VALUES ('發輪');
INSERT INTO `sensitive_word_data` VALUES ('發論');
INSERT INTO `sensitive_word_data` VALUES ('發票');
INSERT INTO `sensitive_word_data` VALUES ('法轮功');
INSERT INTO `sensitive_word_data` VALUES ('法*功');
INSERT INTO `sensitive_word_data` VALUES ('法+轮+功');
INSERT INTO `sensitive_word_data` VALUES ('法+輪+功');
INSERT INTO `sensitive_word_data` VALUES ('法.{0');
INSERT INTO `sensitive_word_data` VALUES ('6}轮.{0');
INSERT INTO `sensitive_word_data` VALUES ('6}功');
INSERT INTO `sensitive_word_data` VALUES ('法.{0');
INSERT INTO `sensitive_word_data` VALUES ('6}輪.{0');
INSERT INTO `sensitive_word_data` VALUES ('6}功');
INSERT INTO `sensitive_word_data` VALUES ('法.轮.功');
INSERT INTO `sensitive_word_data` VALUES ('法?');
INSERT INTO `sensitive_word_data` VALUES ('法lun功');
INSERT INTO `sensitive_word_data` VALUES ('法L功');
INSERT INTO `sensitive_word_data` VALUES ('法{10}轮{10}功');
INSERT INTO `sensitive_word_data` VALUES ('法？轮？功');
INSERT INTO `sensitive_word_data` VALUES ('法车仑工力');
INSERT INTO `sensitive_word_data` VALUES ('法功');
INSERT INTO `sensitive_word_data` VALUES ('法国游');
INSERT INTO `sensitive_word_data` VALUES ('法拉盛');
INSERT INTO `sensitive_word_data` VALUES ('法拉盛缅街');
INSERT INTO `sensitive_word_data` VALUES ('法愣');
INSERT INTO `sensitive_word_data` VALUES ('法抡');
INSERT INTO `sensitive_word_data` VALUES ('法抡功');
INSERT INTO `sensitive_word_data` VALUES ('法仑');
INSERT INTO `sensitive_word_data` VALUES ('法伦');
INSERT INTO `sensitive_word_data` VALUES ('法囵');
INSERT INTO `sensitive_word_data` VALUES ('法沦');
INSERT INTO `sensitive_word_data` VALUES ('法纶');
INSERT INTO `sensitive_word_data` VALUES ('法轮');
INSERT INTO `sensitive_word_data` VALUES ('法轮{5}');
INSERT INTO `sensitive_word_data` VALUES ('法轮大法');
INSERT INTO `sensitive_word_data` VALUES ('法轮弟子');
INSERT INTO `sensitive_word_data` VALUES ('法轮佛法');
INSERT INTO `sensitive_word_data` VALUES ('法轮功');
INSERT INTO `sensitive_word_data` VALUES ('法倫');
INSERT INTO `sensitive_word_data` VALUES ('法淪');
INSERT INTO `sensitive_word_data` VALUES ('法輪');
INSERT INTO `sensitive_word_data` VALUES ('法论');
INSERT INTO `sensitive_word_data` VALUES ('法論');
INSERT INTO `sensitive_word_data` VALUES ('法十轮十功');
INSERT INTO `sensitive_word_data` VALUES ('法一轮');
INSERT INTO `sensitive_word_data` VALUES ('法谪');
INSERT INTO `sensitive_word_data` VALUES ('法谪功');
INSERT INTO `sensitive_word_data` VALUES ('法正');
INSERT INTO `sensitive_word_data` VALUES ('法正乾坤');
INSERT INTO `sensitive_word_data` VALUES ('法正人间');
INSERT INTO `sensitive_word_data` VALUES ('砝仑');
INSERT INTO `sensitive_word_data` VALUES ('砝伦');
INSERT INTO `sensitive_word_data` VALUES ('砝轮');
INSERT INTO `sensitive_word_data` VALUES ('珐(工力)学T');
INSERT INTO `sensitive_word_data` VALUES ('珐.輪功');
INSERT INTO `sensitive_word_data` VALUES ('樊守志');
INSERT INTO `sensitive_word_data` VALUES ('反党');
INSERT INTO `sensitive_word_data` VALUES ('反动');
INSERT INTO `sensitive_word_data` VALUES ('反对共产党');
INSERT INTO `sensitive_word_data` VALUES ('反对共产主义');
INSERT INTO `sensitive_word_data` VALUES ('反封锁');
INSERT INTO `sensitive_word_data` VALUES ('反封锁技术');
INSERT INTO `sensitive_word_data` VALUES ('反腐败论坛');
INSERT INTO `sensitive_word_data` VALUES ('反腐总攻');
INSERT INTO `sensitive_word_data` VALUES ('反革命政变纲领');
INSERT INTO `sensitive_word_data` VALUES ('反攻大陆');
INSERT INTO `sensitive_word_data` VALUES ('反共');
INSERT INTO `sensitive_word_data` VALUES ('反共传单');
INSERT INTO `sensitive_word_data` VALUES ('反共言论');
INSERT INTO `sensitive_word_data` VALUES ('反华');
INSERT INTO `sensitive_word_data` VALUES ('反雷达测速');
INSERT INTO `sensitive_word_data` VALUES ('反雷達測速');
INSERT INTO `sensitive_word_data` VALUES ('反民主');
INSERT INTO `sensitive_word_data` VALUES ('反人类');
INSERT INTO `sensitive_word_data` VALUES ('反人类罪');
INSERT INTO `sensitive_word_data` VALUES ('反社会');
INSERT INTO `sensitive_word_data` VALUES ('反政府');
INSERT INTO `sensitive_word_data` VALUES ('反中');
INSERT INTO `sensitive_word_data` VALUES ('反中共黑色暴力');
INSERT INTO `sensitive_word_data` VALUES ('饭岛爱');
INSERT INTO `sensitive_word_data` VALUES ('飯島愛');
INSERT INTO `sensitive_word_data` VALUES ('方励之');
INSERT INTO `sensitive_word_data` VALUES ('方针定调');
INSERT INTO `sensitive_word_data` VALUES ('方舟子');
INSERT INTO `sensitive_word_data` VALUES ('方祖岐');
INSERT INTO `sensitive_word_data` VALUES ('芳香型智悟气功');
INSERT INTO `sensitive_word_data` VALUES ('防拍器');
INSERT INTO `sensitive_word_data` VALUES ('防身药水');
INSERT INTO `sensitive_word_data` VALUES ('仿真枪');
INSERT INTO `sensitive_word_data` VALUES ('放荡青春');
INSERT INTO `sensitive_word_data` VALUES ('放光明电视制作中心');
INSERT INTO `sensitive_word_data` VALUES ('放下生死');
INSERT INTO `sensitive_word_data` VALUES ('飞天舞蹈学校');
INSERT INTO `sensitive_word_data` VALUES ('飞扬论坛');
INSERT INTO `sensitive_word_data` VALUES ('斐得勒');
INSERT INTO `sensitive_word_data` VALUES ('废除劳教签名');
INSERT INTO `sensitive_word_data` VALUES ('废统');
INSERT INTO `sensitive_word_data` VALUES ('费良勇');
INSERT INTO `sensitive_word_data` VALUES ('分家在');
INSERT INTO `sensitive_word_data` VALUES ('分裂');
INSERT INTO `sensitive_word_data` VALUES ('粉嫩小洞');
INSERT INTO `sensitive_word_data` VALUES ('粉饰太平');
INSERT INTO `sensitive_word_data` VALUES ('粉碎林陈材料');
INSERT INTO `sensitive_word_data` VALUES ('粉碎林陈反党集团反革命政变的斗');
INSERT INTO `sensitive_word_data` VALUES ('风骚侍女');
INSERT INTO `sensitive_word_data` VALUES ('风雨神州论坛');
INSERT INTO `sensitive_word_data` VALUES ('风月大陆');
INSERT INTO `sensitive_word_data` VALUES ('封从德');
INSERT INTO `sensitive_word_data` VALUES ('封杀');
INSERT INTO `sensitive_word_data` VALUES ('風花');
INSERT INTO `sensitive_word_data` VALUES ('冯东海');
INSERT INTO `sensitive_word_data` VALUES ('冯素英');
INSERT INTO `sensitive_word_data` VALUES ('佛怀煽仇录');
INSERT INTO `sensitive_word_data` VALUES ('佛展千手法');
INSERT INTO `sensitive_word_data` VALUES ('夫妇乐园');
INSERT INTO `sensitive_word_data` VALUES ('服务器托管');
INSERT INTO `sensitive_word_data` VALUES ('府软弱');
INSERT INTO `sensitive_word_data` VALUES ('腐败');
INSERT INTO `sensitive_word_data` VALUES ('腐敗');
INSERT INTO `sensitive_word_data` VALUES ('付申奇');
INSERT INTO `sensitive_word_data` VALUES ('妇的哀羞');
INSERT INTO `sensitive_word_data` VALUES ('复员军官代表');
INSERT INTO `sensitive_word_data` VALUES ('复员军官诉求书');
INSERT INTO `sensitive_word_data` VALUES ('复转军人');
INSERT INTO `sensitive_word_data` VALUES ('副书记');
INSERT INTO `sensitive_word_data` VALUES ('副主席');
INSERT INTO `sensitive_word_data` VALUES ('傅成玉');
INSERT INTO `sensitive_word_data` VALUES ('傅申奇');
INSERT INTO `sensitive_word_data` VALUES ('傅志寰');
INSERT INTO `sensitive_word_data` VALUES ('改革六大成绩');
INSERT INTO `sensitive_word_data` VALUES ('改革阵痛');
INSERT INTO `sensitive_word_data` VALUES ('干你妈');
INSERT INTO `sensitive_word_data` VALUES ('干她');
INSERT INTO `sensitive_word_data` VALUES ('干妳');
INSERT INTO `sensitive_word_data` VALUES ('干妳老母');
INSERT INTO `sensitive_word_data` VALUES ('干妳妈');
INSERT INTO `sensitive_word_data` VALUES ('干妳娘');
INSERT INTO `sensitive_word_data` VALUES ('干你');
INSERT INTO `sensitive_word_data` VALUES ('干你妈');
INSERT INTO `sensitive_word_data` VALUES ('干你妈b');
INSERT INTO `sensitive_word_data` VALUES ('干你妈逼');
INSERT INTO `sensitive_word_data` VALUES ('干你娘');
INSERT INTO `sensitive_word_data` VALUES ('干扰器');
INSERT INTO `sensitive_word_data` VALUES ('干扰赈灾募捐事件回放');
INSERT INTO `sensitive_word_data` VALUES ('干死你');
INSERT INTO `sensitive_word_data` VALUES ('幹擾器');
INSERT INTO `sensitive_word_data` VALUES ('赣江学院');
INSERT INTO `sensitive_word_data` VALUES ('肛交');
INSERT INTO `sensitive_word_data` VALUES ('肛门');
INSERT INTO `sensitive_word_data` VALUES ('港澳博球网');
INSERT INTO `sensitive_word_data` VALUES ('高潮');
INSERT INTO `sensitive_word_data` VALUES ('高低温交变湿热试验箱');
INSERT INTO `sensitive_word_data` VALUES ('高干');
INSERT INTO `sensitive_word_data` VALUES ('高干新子弟');
INSERT INTO `sensitive_word_data` VALUES ('高干子弟');
INSERT INTO `sensitive_word_data` VALUES ('高干子弟名单');
INSERT INTO `sensitive_word_data` VALUES ('高干子女');
INSERT INTO `sensitive_word_data` VALUES ('高幹');
INSERT INTO `sensitive_word_data` VALUES ('高幹子弟');
INSERT INTO `sensitive_word_data` VALUES ('高幹子女');
INSERT INTO `sensitive_word_data` VALUES ('高官');
INSERT INTO `sensitive_word_data` VALUES ('高文谦');
INSERT INTO `sensitive_word_data` VALUES ('高效春药');
INSERT INTO `sensitive_word_data` VALUES ('高校罢餐');
INSERT INTO `sensitive_word_data` VALUES ('高校暴乱');
INSERT INTO `sensitive_word_data` VALUES ('高校暴亂');
INSERT INTO `sensitive_word_data` VALUES ('高校群体事件');
INSERT INTO `sensitive_word_data` VALUES ('高校骚乱');
INSERT INTO `sensitive_word_data` VALUES ('高校騷亂');
INSERT INTO `sensitive_word_data` VALUES ('高薪养廉');
INSERT INTO `sensitive_word_data` VALUES ('高瞻');
INSERT INTO `sensitive_word_data` VALUES ('高智晟');
INSERT INTO `sensitive_word_data` VALUES ('高自联');
INSERT INTO `sensitive_word_data` VALUES ('睾丸');
INSERT INTO `sensitive_word_data` VALUES ('睾丸素');
INSERT INTO `sensitive_word_data` VALUES ('告全国股民同胞书');
INSERT INTO `sensitive_word_data` VALUES ('告全国人大书');
INSERT INTO `sensitive_word_data` VALUES ('告全体网民书');
INSERT INTO `sensitive_word_data` VALUES ('告中国人民解放军广大官兵书');
INSERT INTO `sensitive_word_data` VALUES ('戈扬');
INSERT INTO `sensitive_word_data` VALUES ('哥疼');
INSERT INTO `sensitive_word_data` VALUES ('哥痛');
INSERT INTO `sensitive_word_data` VALUES ('鸽派');
INSERT INTO `sensitive_word_data` VALUES ('割肉人');
INSERT INTO `sensitive_word_data` VALUES ('歌功颂德');
INSERT INTO `sensitive_word_data` VALUES ('革命');
INSERT INTO `sensitive_word_data` VALUES ('革命无罪');
INSERT INTO `sensitive_word_data` VALUES ('葛振峰');
INSERT INTO `sensitive_word_data` VALUES ('蛤蟆');
INSERT INTO `sensitive_word_data` VALUES ('蛤蟆转世');
INSERT INTO `sensitive_word_data` VALUES ('个人崇拜');
INSERT INTO `sensitive_word_data` VALUES ('个人圆满说');
INSERT INTO `sensitive_word_data` VALUES ('个邪的党（魔教）');
INSERT INTO `sensitive_word_data` VALUES ('跟踪定位器{MOD}');
INSERT INTO `sensitive_word_data` VALUES ('跟踪定位器**');
INSERT INTO `sensitive_word_data` VALUES ('更衣');
INSERT INTO `sensitive_word_data` VALUES ('工力');
INSERT INTO `sensitive_word_data` VALUES ('工业炸药配方设计');
INSERT INTO `sensitive_word_data` VALUES ('工自联');
INSERT INTO `sensitive_word_data` VALUES ('公安');
INSERT INTO `sensitive_word_data` VALUES ('公安部');
INSERT INTO `sensitive_word_data` VALUES ('公安文件');
INSERT INTO `sensitive_word_data` VALUES ('公安与武警的区别');
INSERT INTO `sensitive_word_data` VALUES ('公款');
INSERT INTO `sensitive_word_data` VALUES ('功法');
INSERT INTO `sensitive_word_data` VALUES ('功学');
INSERT INTO `sensitive_word_data` VALUES ('功学员');
INSERT INTO `sensitive_word_data` VALUES ('功友');
INSERT INTO `sensitive_word_data` VALUES ('功友弟子');
INSERT INTO `sensitive_word_data` VALUES ('攻台');
INSERT INTO `sensitive_word_data` VALUES ('龚平?');
INSERT INTO `sensitive_word_data` VALUES ('共+产+党');
INSERT INTO `sensitive_word_data` VALUES ('共+產+黨');
INSERT INTO `sensitive_word_data` VALUES ('共+铲+党');
INSERT INTO `sensitive_word_data` VALUES ('共.{0');
INSERT INTO `sensitive_word_data` VALUES ('6}产.{0');
INSERT INTO `sensitive_word_data` VALUES ('6}党');
INSERT INTO `sensitive_word_data` VALUES ('共.{0');
INSERT INTO `sensitive_word_data` VALUES ('6}產.{0');
INSERT INTO `sensitive_word_data` VALUES ('6}黨');
INSERT INTO `sensitive_word_data` VALUES ('共.{0');
INSERT INTO `sensitive_word_data` VALUES ('6}铲.{0');
INSERT INTO `sensitive_word_data` VALUES ('6}党');
INSERT INTO `sensitive_word_data` VALUES ('共.产.党');
INSERT INTO `sensitive_word_data` VALUES ('共.产党');
INSERT INTO `sensitive_word_data` VALUES ('共chang党');
INSERT INTO `sensitive_word_data` VALUES ('共残党');
INSERT INTO `sensitive_word_data` VALUES ('共惨党');
INSERT INTO `sensitive_word_data` VALUES ('共产');
INSERT INTO `sensitive_word_data` VALUES ('共产.党');
INSERT INTO `sensitive_word_data` VALUES ('共产党');
INSERT INTO `sensitive_word_data` VALUES ('共产党的报应');
INSERT INTO `sensitive_word_data` VALUES ('共产党的末日');
INSERT INTO `sensitive_word_data` VALUES ('共产极权');
INSERT INTO `sensitive_word_data` VALUES ('共产王朝');
INSERT INTO `sensitive_word_data` VALUES ('共产无赖');
INSERT INTO `sensitive_word_data` VALUES ('共产小丑');
INSERT INTO `sensitive_word_data` VALUES ('共产主义');
INSERT INTO `sensitive_word_data` VALUES ('共产主义黑皮书');
INSERT INTO `sensitive_word_data` VALUES ('共产专制');
INSERT INTO `sensitive_word_data` VALUES ('共铲党');
INSERT INTO `sensitive_word_data` VALUES ('共党');
INSERT INTO `sensitive_word_data` VALUES ('共黨');
INSERT INTO `sensitive_word_data` VALUES ('共匪');
INSERT INTO `sensitive_word_data` VALUES ('共狗');
INSERT INTO `sensitive_word_data` VALUES ('共和国之怒');
INSERT INTO `sensitive_word_data` VALUES ('共军');
INSERT INTO `sensitive_word_data` VALUES ('共奴');
INSERT INTO `sensitive_word_data` VALUES ('勾清明');
INSERT INTO `sensitive_word_data` VALUES ('狗b');
INSERT INTO `sensitive_word_data` VALUES ('狗逼');
INSERT INTO `sensitive_word_data` VALUES ('狗操');
INSERT INTO `sensitive_word_data` VALUES ('狗卵子');
INSERT INTO `sensitive_word_data` VALUES ('狗娘');
INSERT INTO `sensitive_word_data` VALUES ('古方迷香');
INSERT INTO `sensitive_word_data` VALUES ('古拉格');
INSERT INTO `sensitive_word_data` VALUES ('乖乖药');
INSERT INTO `sensitive_word_data` VALUES ('关于对敌斗争中有关政政策界限汇编');
INSERT INTO `sensitive_word_data` VALUES ('关于做好定案材料工作的意见');
INSERT INTO `sensitive_word_data` VALUES ('关卓中');
INSERT INTO `sensitive_word_data` VALUES ('观音法门');
INSERT INTO `sensitive_word_data` VALUES ('官场日志');
INSERT INTO `sensitive_word_data` VALUES ('官商勾结');
INSERT INTO `sensitive_word_data` VALUES ('官员成为政治新星');
INSERT INTO `sensitive_word_data` VALUES ('贯通两极法');
INSERT INTO `sensitive_word_data` VALUES ('光端机');
INSERT INTO `sensitive_word_data` VALUES ('广安事件');
INSERT INTO `sensitive_word_data` VALUES ('广东饶平钱东镇');
INSERT INTO `sensitive_word_data` VALUES ('广闻');
INSERT INTO `sensitive_word_data` VALUES ('廣安事件');
INSERT INTO `sensitive_word_data` VALUES ('龟头');
INSERT INTO `sensitive_word_data` VALUES ('硅谷民主促进会');
INSERT INTO `sensitive_word_data` VALUES ('龜頭');
INSERT INTO `sensitive_word_data` VALUES ('桂世镛');
INSERT INTO `sensitive_word_data` VALUES ('郭伯雄');
INSERT INTO `sensitive_word_data` VALUES ('郭罗基');
INSERT INTO `sensitive_word_data` VALUES ('郭平');
INSERT INTO `sensitive_word_data` VALUES ('郭岩华');
INSERT INTO `sensitive_word_data` VALUES ('国际声援西藏');
INSERT INTO `sensitive_word_data` VALUES ('国际西藏运动');
INSERT INTO `sensitive_word_data` VALUES ('国际援藏网');
INSERT INTO `sensitive_word_data` VALUES ('国家安全');
INSERT INTO `sensitive_word_data` VALUES ('国家机密');
INSERT INTO `sensitive_word_data` VALUES ('国家粮油统计报表');
INSERT INTO `sensitive_word_data` VALUES ('国家政府档案');
INSERT INTO `sensitive_word_data` VALUES ('国军');
INSERT INTO `sensitive_word_data` VALUES ('国民党');
INSERT INTO `sensitive_word_data` VALUES ('国民党名单');
INSERT INTO `sensitive_word_data` VALUES ('国色天香网');
INSERT INTO `sensitive_word_data` VALUES ('国新办主任');
INSERT INTO `sensitive_word_data` VALUES ('国研新闻邮件');
INSERT INTO `sensitive_word_data` VALUES ('国贼');
INSERT INTO `sensitive_word_data` VALUES ('国之利刃');
INSERT INTO `sensitive_word_data` VALUES ('哈批');
INSERT INTO `sensitive_word_data` VALUES ('海盗的悠闲');
INSERT INTO `sensitive_word_data` VALUES ('海乐神');
INSERT INTO `sensitive_word_data` VALUES ('海外护法');
INSERT INTO `sensitive_word_data` VALUES ('酣乐欣');
INSERT INTO `sensitive_word_data` VALUES ('韩东方');
INSERT INTO `sensitive_word_data` VALUES ('韩联潮');
INSERT INTO `sensitive_word_data` VALUES ('韩杼滨');
INSERT INTO `sensitive_word_data` VALUES ('汉风');
INSERT INTO `sensitive_word_data` VALUES ('号码生成器');
INSERT INTO `sensitive_word_data` VALUES ('何德普');
INSERT INTO `sensitive_word_data` VALUES ('何勇');
INSERT INTO `sensitive_word_data` VALUES ('和奸成瘾');
INSERT INTO `sensitive_word_data` VALUES ('和解的智慧');
INSERT INTO `sensitive_word_data` VALUES ('和平请愿书');
INSERT INTO `sensitive_word_data` VALUES ('和平修练');
INSERT INTO `sensitive_word_data` VALUES ('和平演变道路已');
INSERT INTO `sensitive_word_data` VALUES ('被中共堵死');
INSERT INTO `sensitive_word_data` VALUES ('和弦');
INSERT INTO `sensitive_word_data` VALUES ('河殇');
INSERT INTO `sensitive_word_data` VALUES ('河殇核污染');
INSERT INTO `sensitive_word_data` VALUES ('核设施');
INSERT INTO `sensitive_word_data` VALUES ('核污染');
INSERT INTO `sensitive_word_data` VALUES ('贺邦靖');
INSERT INTO `sensitive_word_data` VALUES ('褐铁矿选矿设备');
INSERT INTO `sensitive_word_data` VALUES ('黑车');
INSERT INTO `sensitive_word_data` VALUES ('黑幕重重腐败到底');
INSERT INTO `sensitive_word_data` VALUES ('黑皮书');
INSERT INTO `sensitive_word_data` VALUES ('黑枪');
INSERT INTO `sensitive_word_data` VALUES ('黑社会');
INSERT INTO `sensitive_word_data` VALUES ('黑社會');
INSERT INTO `sensitive_word_data` VALUES ('黑手党');
INSERT INTO `sensitive_word_data` VALUES ('黑瞎子岛');
INSERT INTO `sensitive_word_data` VALUES ('黑星女侠');
INSERT INTO `sensitive_word_data` VALUES ('黑窑工母亲网上寻助');
INSERT INTO `sensitive_word_data` VALUES ('黑窑母亲群体募捐');
INSERT INTO `sensitive_word_data` VALUES ('嘿咻');
INSERT INTO `sensitive_word_data` VALUES ('弘法会');
INSERT INTO `sensitive_word_data` VALUES ('红病历');
INSERT INTO `sensitive_word_data` VALUES ('红朝谎言录');
INSERT INTO `sensitive_word_data` VALUES ('红潮谎言录');
INSERT INTO `sensitive_word_data` VALUES ('红潮艳史');
INSERT INTO `sensitive_word_data` VALUES ('红灯区');
INSERT INTO `sensitive_word_data` VALUES ('红色恐怖');
INSERT INTO `sensitive_word_data` VALUES ('红兽');
INSERT INTO `sensitive_word_data` VALUES ('红头文件');
INSERT INTO `sensitive_word_data` VALUES ('红卫兵');
INSERT INTO `sensitive_word_data` VALUES ('红血丝');
INSERT INTO `sensitive_word_data` VALUES ('红志');
INSERT INTO `sensitive_word_data` VALUES ('红智');
INSERT INTO `sensitive_word_data` VALUES ('洪法交流');
INSERT INTO `sensitive_word_data` VALUES ('洪巨平');
INSERT INTO `sensitive_word_data` VALUES ('洪水的志向');
INSERT INTO `sensitive_word_data` VALUES ('洪吟');
INSERT INTO `sensitive_word_data` VALUES ('洪哲胜');
INSERT INTO `sensitive_word_data` VALUES ('洪志');
INSERT INTO `sensitive_word_data` VALUES ('洪治');
INSERT INTO `sensitive_word_data` VALUES ('洪智');
INSERT INTO `sensitive_word_data` VALUES ('紅河谷論壇');
INSERT INTO `sensitive_word_data` VALUES ('紅志');
INSERT INTO `sensitive_word_data` VALUES ('紅智');
INSERT INTO `sensitive_word_data` VALUES ('后方想定的编写');
INSERT INTO `sensitive_word_data` VALUES ('后勤资料手册');
INSERT INTO `sensitive_word_data` VALUES ('呼喊派');
INSERT INTO `sensitive_word_data` VALUES ('胡J涛');
INSERT INTO `sensitive_word_data` VALUES ('胡春华');
INSERT INTO `sensitive_word_data` VALUES ('胡的接班人');
INSERT INTO `sensitive_word_data` VALUES ('胡江');
INSERT INTO `sensitive_word_data` VALUES ('胡紧掏');
INSERT INTO `sensitive_word_data` VALUES ('胡紧套');
INSERT INTO `sensitive_word_data` VALUES ('胡锦涛');
INSERT INTO `sensitive_word_data` VALUES ('胡锦滔');
INSERT INTO `sensitive_word_data` VALUES ('胡锦淘');
INSERT INTO `sensitive_word_data` VALUES ('胡鍧?胡鍧?胡进涛');
INSERT INTO `sensitive_word_data` VALUES ('胡景涛');
INSERT INTO `sensitive_word_data` VALUES ('胡派');
INSERT INTO `sensitive_word_data` VALUES ('胡平');
INSERT INTO `sensitive_word_data` VALUES ('胡书记');
INSERT INTO `sensitive_word_data` VALUES ('胡温');
INSERT INTO `sensitive_word_data` VALUES ('胡温怒批政法系统');
INSERT INTO `sensitive_word_data` VALUES ('胡溫怒批政法系統');
INSERT INTO `sensitive_word_data` VALUES ('胡瘟');
INSERT INTO `sensitive_word_data` VALUES ('胡系');
INSERT INTO `sensitive_word_data` VALUES ('胡下台');
INSERT INTO `sensitive_word_data` VALUES ('胡新宇');
INSERT INTO `sensitive_word_data` VALUES ('胡耀邦');
INSERT INTO `sensitive_word_data` VALUES ('胡耀帮');
INSERT INTO `sensitive_word_data` VALUES ('胡中央');
INSERT INTO `sensitive_word_data` VALUES ('胡主席');
INSERT INTO `sensitive_word_data` VALUES ('胡总书记');
INSERT INTO `sensitive_word_data` VALUES ('华藏功');
INSERT INTO `sensitive_word_data` VALUES ('华国锋');
INSERT INTO `sensitive_word_data` VALUES ('华建敏');
INSERT INTO `sensitive_word_data` VALUES ('华通时事论坛');
INSERT INTO `sensitive_word_data` VALUES ('华夏文摘');
INSERT INTO `sensitive_word_data` VALUES ('华语世界论坛');
INSERT INTO `sensitive_word_data` VALUES ('华岳时事论坛');
INSERT INTO `sensitive_word_data` VALUES ('话在肉身显现');
INSERT INTO `sensitive_word_data` VALUES ('换妻');
INSERT INTO `sensitive_word_data` VALUES ('換妻');
INSERT INTO `sensitive_word_data` VALUES ('黃海暗殺事件');
INSERT INTO `sensitive_word_data` VALUES ('黃菊');
INSERT INTO `sensitive_word_data` VALUES ('黃麗滿');
INSERT INTO `sensitive_word_data` VALUES ('黃色電影');
INSERT INTO `sensitive_word_data` VALUES ('黃色圖片');
INSERT INTO `sensitive_word_data` VALUES ('黃色小電影');
INSERT INTO `sensitive_word_data` VALUES ('黄JU');
INSERT INTO `sensitive_word_data` VALUES ('黄慈萍');
INSERT INTO `sensitive_word_data` VALUES ('黄海暗杀');
INSERT INTO `sensitive_word_data` VALUES ('黄海暗杀事件');
INSERT INTO `sensitive_word_data` VALUES ('黄海事件');
INSERT INTO `sensitive_word_data` VALUES ('黄褐斑');
INSERT INTO `sensitive_word_data` VALUES ('黄华华');
INSERT INTO `sensitive_word_data` VALUES ('黄祸');
INSERT INTO `sensitive_word_data` VALUES ('黄金书');
INSERT INTO `sensitive_word_data` VALUES ('黄局');
INSERT INTO `sensitive_word_data` VALUES ('黄菊');
INSERT INTO `sensitive_word_data` VALUES ('黄菊　');
INSERT INTO `sensitive_word_data` VALUES ('黄菊遗孀');
INSERT INTO `sensitive_word_data` VALUES ('黄丽满');
INSERT INTO `sensitive_word_data` VALUES ('黄霉素');
INSERT INTO `sensitive_word_data` VALUES ('黄色{5}');
INSERT INTO `sensitive_word_data` VALUES ('黄色电影');
INSERT INTO `sensitive_word_data` VALUES ('黄色漫画');
INSERT INTO `sensitive_word_data` VALUES ('黄色图片');
INSERT INTO `sensitive_word_data` VALUES ('黄色网站');
INSERT INTO `sensitive_word_data` VALUES ('黄色文学');
INSERT INTO `sensitive_word_data` VALUES ('黄色小电影');
INSERT INTO `sensitive_word_data` VALUES ('黄色小说');
INSERT INTO `sensitive_word_data` VALUES ('黄色影视');
INSERT INTO `sensitive_word_data` VALUES ('黄网导航');
INSERT INTO `sensitive_word_data` VALUES ('黄翔');
INSERT INTO `sensitive_word_data` VALUES ('黄作兴');
INSERT INTO `sensitive_word_data` VALUES ('簧片');
INSERT INTO `sensitive_word_data` VALUES ('回良玉');
INSERT INTO `sensitive_word_data` VALUES ('回民暴');
INSERT INTO `sensitive_word_data` VALUES ('回民暴动');
INSERT INTO `sensitive_word_data` VALUES ('回民猪');
INSERT INTO `sensitive_word_data` VALUES ('回忆六四');
INSERT INTO `sensitive_word_data` VALUES ('悔过书');
INSERT INTO `sensitive_word_data` VALUES ('惠澤社群');
INSERT INTO `sensitive_word_data` VALUES ('慧网');
INSERT INTO `sensitive_word_data` VALUES ('昏迷剂');
INSERT INTO `sensitive_word_data` VALUES ('昏药');
INSERT INTO `sensitive_word_data` VALUES ('昏藥');
INSERT INTO `sensitive_word_data` VALUES ('混蛋神风流史');
INSERT INTO `sensitive_word_data` VALUES ('活佛');
INSERT INTO `sensitive_word_data` VALUES ('活体');
INSERT INTO `sensitive_word_data` VALUES ('火药制作');
INSERT INTO `sensitive_word_data` VALUES ('霍英东');
INSERT INTO `sensitive_word_data` VALUES ('鸡八');
INSERT INTO `sensitive_word_data` VALUES ('鸡巴');
INSERT INTO `sensitive_word_data` VALUES ('鸡吧');
INSERT INTO `sensitive_word_data` VALUES ('鸡奸');
INSERT INTO `sensitive_word_data` VALUES ('鸡毛信文汇');
INSERT INTO `sensitive_word_data` VALUES ('姬胜德');
INSERT INTO `sensitive_word_data` VALUES ('积克馆');
INSERT INTO `sensitive_word_data` VALUES ('基督');
INSERT INTO `sensitive_word_data` VALUES ('基督灵恩布道团');
INSERT INTO `sensitive_word_data` VALUES ('激流中国');
INSERT INTO `sensitive_word_data` VALUES ('激情大片');
INSERT INTO `sensitive_word_data` VALUES ('激情电影');
INSERT INTO `sensitive_word_data` VALUES ('激情電影');
INSERT INTO `sensitive_word_data` VALUES ('激情聊天');
INSERT INTO `sensitive_word_data` VALUES ('激情美女');
INSERT INTO `sensitive_word_data` VALUES ('激情视频');
INSERT INTO `sensitive_word_data` VALUES ('激情視頻');
INSERT INTO `sensitive_word_data` VALUES ('激情图片');
INSERT INTO `sensitive_word_data` VALUES ('激情圖片');
INSERT INTO `sensitive_word_data` VALUES ('激情文学');
INSERT INTO `sensitive_word_data` VALUES ('激情小电影');
INSERT INTO `sensitive_word_data` VALUES ('激情小電影');
INSERT INTO `sensitive_word_data` VALUES ('激情自拍');
INSERT INTO `sensitive_word_data` VALUES ('及川奈央');
INSERT INTO `sensitive_word_data` VALUES ('吉炳轩');
INSERT INTO `sensitive_word_data` VALUES ('吉祥宝贝');
INSERT INTO `sensitive_word_data` VALUES ('疾病业债说');
INSERT INTO `sensitive_word_data` VALUES ('集体上访');
INSERT INTO `sensitive_word_data` VALUES ('集体做爱');
INSERT INTO `sensitive_word_data` VALUES ('记者原子弹的DIY制作');
INSERT INTO `sensitive_word_data` VALUES ('纪律检查');
INSERT INTO `sensitive_word_data` VALUES ('纪元');
INSERT INTO `sensitive_word_data` VALUES ('妓女=>jnv');
INSERT INTO `sensitive_word_data` VALUES ('妓女的口号');
INSERT INTO `sensitive_word_data` VALUES ('加盖机密××××');
INSERT INTO `sensitive_word_data` VALUES ('佳静安定片');
INSERT INTO `sensitive_word_data` VALUES ('家用天线');
INSERT INTO `sensitive_word_data` VALUES ('家用卫星');
INSERT INTO `sensitive_word_data` VALUES ('贾庆林');
INSERT INTO `sensitive_word_data` VALUES ('贾廷安');
INSERT INTO `sensitive_word_data` VALUES ('贾系');
INSERT INTO `sensitive_word_data` VALUES ('贾育台');
INSERT INTO `sensitive_word_data` VALUES ('贾治邦');
INSERT INTO `sensitive_word_data` VALUES ('賈慶林');
INSERT INTO `sensitive_word_data` VALUES ('假币=>>');
INSERT INTO `sensitive_word_data` VALUES ('假币出售');
INSERT INTO `sensitive_word_data` VALUES ('假钞');
INSERT INTO `sensitive_word_data` VALUES ('假鈔');
INSERT INTO `sensitive_word_data` VALUES ('假教育');
INSERT INTO `sensitive_word_data` VALUES ('监听');
INSERT INTO `sensitive_word_data` VALUES ('监听宝');
INSERT INTO `sensitive_word_data` VALUES ('监听器');
INSERT INTO `sensitive_word_data` VALUES ('监听设备');
INSERT INTO `sensitive_word_data` VALUES ('监听王');
INSERT INTO `sensitive_word_data` VALUES ('监狱管理局');
INSERT INTO `sensitive_word_data` VALUES ('监狱里的斗争');
INSERT INTO `sensitive_word_data` VALUES ('監聽寶');
INSERT INTO `sensitive_word_data` VALUES ('監聽器');
INSERT INTO `sensitive_word_data` VALUES ('監聽王');
INSERT INTO `sensitive_word_data` VALUES ('简鸿章');
INSERT INTO `sensitive_word_data` VALUES ('简易原子弹制作');
INSERT INTO `sensitive_word_data` VALUES ('简易炸药制作');
INSERT INTO `sensitive_word_data` VALUES ('简易制作C4炸弹教程');
INSERT INTO `sensitive_word_data` VALUES ('建定防火');
INSERT INTO `sensitive_word_data` VALUES ('建国党');
INSERT INTO `sensitive_word_data` VALUES ('剑教材');
INSERT INTO `sensitive_word_data` VALUES ('贱逼');
INSERT INTO `sensitive_word_data` VALUES ('贱比');
INSERT INTO `sensitive_word_data` VALUES ('践踏中国女性');
INSERT INTO `sensitive_word_data` VALUES ('江core');
INSERT INTO `sensitive_word_data` VALUES ('江ze民');
INSERT INTO `sensitive_word_data` VALUES ('江z民');
INSERT INTO `sensitive_word_data` VALUES ('江{1}泽{2}民');
INSERT INTO `sensitive_word_data` VALUES ('江八点');
INSERT INTO `sensitive_word_data` VALUES ('江独裁');
INSERT INTO `sensitive_word_data` VALUES ('江恶人');
INSERT INTO `sensitive_word_data` VALUES ('江二世');
INSERT INTO `sensitive_word_data` VALUES ('江蛤蟆');
INSERT INTO `sensitive_word_data` VALUES ('江公子');
INSERT INTO `sensitive_word_data` VALUES ('江核心');
INSERT INTO `sensitive_word_data` VALUES ('江黑心');
INSERT INTO `sensitive_word_data` VALUES ('江胡');
INSERT INTO `sensitive_word_data` VALUES ('江湖淫娘');
INSERT INTO `sensitive_word_data` VALUES ('江昏君');
INSERT INTO `sensitive_word_data` VALUES ('江祸心');
INSERT INTO `sensitive_word_data` VALUES ('江家帮');
INSERT INTO `sensitive_word_data` VALUES ('江姐问');
INSERT INTO `sensitive_word_data` VALUES ('江姐問');
INSERT INTO `sensitive_word_data` VALUES ('江锦恒');
INSERT INTO `sensitive_word_data` VALUES ('江老贼');
INSERT INTO `sensitive_word_data` VALUES ('江理论');
INSERT INTO `sensitive_word_data` VALUES ('江流氓');
INSERT INTO `sensitive_word_data` VALUES ('江路线');
INSERT INTO `sensitive_word_data` VALUES ('江驴');
INSERT INTO `sensitive_word_data` VALUES ('江罗');
INSERT INTO `sensitive_word_data` VALUES ('江罗集团');
INSERT INTO `sensitive_word_data` VALUES ('江绵恒');
INSERT INTO `sensitive_word_data` VALUES ('江魔头');
INSERT INTO `sensitive_word_data` VALUES ('江牌');
INSERT INTO `sensitive_word_data` VALUES ('江派');
INSERT INTO `sensitive_word_data` VALUES ('江派和胡派');
INSERT INTO `sensitive_word_data` VALUES ('江派人马');
INSERT INTO `sensitive_word_data` VALUES ('江青');
INSERT INTO `sensitive_word_data` VALUES ('江青××');
INSERT INTO `sensitive_word_data` VALUES ('江青同志在批林整风汇报会议华东组和中南组会上的讲话');
INSERT INTO `sensitive_word_data` VALUES ('江青在批林反孔会议上的讲话×××');
INSERT INTO `sensitive_word_data` VALUES ('江泉集团');
INSERT INTO `sensitive_word_data` VALUES ('江人马');
INSERT INTO `sensitive_word_data` VALUES ('三条腿');
INSERT INTO `sensitive_word_data` VALUES ('江三秀');
INSERT INTO `sensitive_word_data` VALUES ('江山美人志');
INSERT INTO `sensitive_word_data` VALUES ('江神经');
INSERT INTO `sensitive_word_data` VALUES ('江氏');
INSERT INTO `sensitive_word_data` VALUES ('江氏集团');
INSERT INTO `sensitive_word_data` VALUES ('江氏家族');
INSERT INTO `sensitive_word_data` VALUES ('江梳头');
INSERT INTO `sensitive_word_data` VALUES ('江宋');
INSERT INTO `sensitive_word_data` VALUES ('江戏子');
INSERT INTO `sensitive_word_data` VALUES ('江系');
INSERT INTO `sensitive_word_data` VALUES ('江系人马');
INSERT INTO `sensitive_word_data` VALUES ('江宰民');
INSERT INTO `sensitive_word_data` VALUES ('江则民');
INSERT INTO `sensitive_word_data` VALUES ('江择min');
INSERT INTO `sensitive_word_data` VALUES ('江泽公审');
INSERT INTO `sensitive_word_data` VALUES ('江泽慧');
INSERT INTO `sensitive_word_data` VALUES ('江泽民');
INSERT INTO `sensitive_word_data` VALUES ('江泽民瑞士');
INSERT INTO `sensitive_word_data` VALUES ('江泽民宋祖英');
INSERT INTO `sensitive_word_data` VALUES ('江澤民');
INSERT INTO `sensitive_word_data` VALUES ('江贼');
INSERT INTO `sensitive_word_data` VALUES ('江贼民');
INSERT INTO `sensitive_word_data` VALUES ('江折民');
INSERT INTO `sensitive_word_data` VALUES ('江者民');
INSERT INTO `sensitive_word_data` VALUES ('江浙民');
INSERT INTO `sensitive_word_data` VALUES ('江朱');
INSERT INTO `sensitive_word_data` VALUES ('江猪');
INSERT INTO `sensitive_word_data` VALUES ('江猪媳');
INSERT INTO `sensitive_word_data` VALUES ('江主席');
INSERT INTO `sensitive_word_data` VALUES ('江作秀');
INSERT INTO `sensitive_word_data` VALUES ('姜春云');
INSERT INTO `sensitive_word_data` VALUES ('姜凤阁');
INSERT INTO `sensitive_word_data` VALUES ('将则民');
INSERT INTO `sensitive_word_data` VALUES ('僵贼');
INSERT INTO `sensitive_word_data` VALUES ('僵贼民');
INSERT INTO `sensitive_word_data` VALUES ('疆獨');
INSERT INTO `sensitive_word_data` VALUES ('疆独');
INSERT INTO `sensitive_word_data` VALUES ('疆独藏独');
INSERT INTO `sensitive_word_data` VALUES ('讲法');
INSERT INTO `sensitive_word_data` VALUES ('讲事实要说法');
INSERT INTO `sensitive_word_data` VALUES ('蒋匪军陆军部队师以上主官情况调查');
INSERT INTO `sensitive_word_data` VALUES ('蒋彦永');
INSERT INTO `sensitive_word_data` VALUES ('降灾民');
INSERT INTO `sensitive_word_data` VALUES ('酱猪媳');
INSERT INTO `sensitive_word_data` VALUES ('交媾');
INSERT INTO `sensitive_word_data` VALUES ('交警');
INSERT INTO `sensitive_word_data` VALUES ('交友网');
INSERT INTO `sensitive_word_data` VALUES ('胶质炸弹');
INSERT INTO `sensitive_word_data` VALUES ('焦焕成');
INSERT INTO `sensitive_word_data` VALUES ('角落里的枪');
INSERT INTO `sensitive_word_data` VALUES ('狡猾的风水相师');
INSERT INTO `sensitive_word_data` VALUES ('叫床');
INSERT INTO `sensitive_word_data` VALUES ('叫春');
INSERT INTO `sensitive_word_data` VALUES ('教徒');
INSERT INTO `sensitive_word_data` VALUES ('教徒人权');
INSERT INTO `sensitive_word_data` VALUES ('教养院');
INSERT INTO `sensitive_word_data` VALUES ('阶级敌人');
INSERT INTO `sensitive_word_data` VALUES ('接班群体');
INSERT INTO `sensitive_word_data` VALUES ('揭个黑幕');
INSERT INTO `sensitive_word_data` VALUES ('揭批书');
INSERT INTO `sensitive_word_data` VALUES ('姐疼');
INSERT INTO `sensitive_word_data` VALUES ('姐痛');
INSERT INTO `sensitive_word_data` VALUES ('解放军的最新式军服>*@*');
INSERT INTO `sensitive_word_data` VALUES ('解厚铨');
INSERT INTO `sensitive_word_data` VALUES ('解码器');
INSERT INTO `sensitive_word_data` VALUES ('解碼器');
INSERT INTO `sensitive_word_data` VALUES ('解体的命运');
INSERT INTO `sensitive_word_data` VALUES ('解体中共');
INSERT INTO `sensitive_word_data` VALUES ('解学智');
INSERT INTO `sensitive_word_data` VALUES ('解振华');
INSERT INTO `sensitive_word_data` VALUES ('金伯帆');
INSERT INTO `sensitive_word_data` VALUES ('金道铭');
INSERT INTO `sensitive_word_data` VALUES ('金鳞岂是池中物');
INSERT INTO `sensitive_word_data` VALUES ('金尧如');
INSERT INTO `sensitive_word_data` VALUES ('金银焕');
INSERT INTO `sensitive_word_data` VALUES ('金澤文子');
INSERT INTO `sensitive_word_data` VALUES ('津人治津');
INSERT INTO `sensitive_word_data` VALUES ('锦涛');
INSERT INTO `sensitive_word_data` VALUES ('近平');
INSERT INTO `sensitive_word_data` VALUES ('近親');
INSERT INTO `sensitive_word_data` VALUES ('禁断少女');
INSERT INTO `sensitive_word_data` VALUES ('禁忌试玩');
INSERT INTO `sensitive_word_data` VALUES ('禁忌試玩');
INSERT INTO `sensitive_word_data` VALUES ('禁看');
INSERT INTO `sensitive_word_data` VALUES ('禁书');
INSERT INTO `sensitive_word_data` VALUES ('禁网禁片');
INSERT INTO `sensitive_word_data` VALUES ('京郊旅游');
INSERT INTO `sensitive_word_data` VALUES ('经文');
INSERT INTO `sensitive_word_data` VALUES ('经租房');
INSERT INTO `sensitive_word_data` VALUES ('惊暴双乳');
INSERT INTO `sensitive_word_data` VALUES ('惊悚空间');
INSERT INTO `sensitive_word_data` VALUES ('晶白体');
INSERT INTO `sensitive_word_data` VALUES ('精液');
INSERT INTO `sensitive_word_data` VALUES ('驚悚空間');
INSERT INTO `sensitive_word_data` VALUES ('警察');
INSERT INTO `sensitive_word_data` VALUES ('警用教材');
INSERT INTO `sensitive_word_data` VALUES ('净白体');
INSERT INTO `sensitive_word_data` VALUES ('净水器');
INSERT INTO `sensitive_word_data` VALUES ('靖志远');
INSERT INTO `sensitive_word_data` VALUES ('静坐');
INSERT INTO `sensitive_word_data` VALUES ('九-评');
INSERT INTO `sensitive_word_data` VALUES ('九.评');
INSERT INTO `sensitive_word_data` VALUES ('九.十.三运动');
INSERT INTO `sensitive_word_data` VALUES ('九评');
INSERT INTO `sensitive_word_data` VALUES ('九评{5}');
INSERT INTO `sensitive_word_data` VALUES ('九评××');
INSERT INTO `sensitive_word_data` VALUES ('九评公产党');
INSERT INTO `sensitive_word_data` VALUES ('九评共产党');
INSERT INTO `sensitive_word_data` VALUES ('九十三运动');
INSERT INTO `sensitive_word_data` VALUES ('旧金山总领馆');
INSERT INTO `sensitive_word_data` VALUES ('旧民运');
INSERT INTO `sensitive_word_data` VALUES ('具有中国特色的魔鬼辞典');
INSERT INTO `sensitive_word_data` VALUES ('绝版');
INSERT INTO `sensitive_word_data` VALUES ('绝人寰的暴行');
INSERT INTO `sensitive_word_data` VALUES ('觉醒了的中国');
INSERT INTO `sensitive_word_data` VALUES ('军长发威PK');
INSERT INTO `sensitive_word_data` VALUES ('军队干部转业复员工作文件汇编');
INSERT INTO `sensitive_word_data` VALUES ('军队走私');
INSERT INTO `sensitive_word_data` VALUES ('军火');
INSERT INTO `sensitive_word_data` VALUES ('军妓');
INSERT INTO `sensitive_word_data` VALUES ('军事标号');
INSERT INTO `sensitive_word_data` VALUES ('军事地图');
INSERT INTO `sensitive_word_data` VALUES ('军事训练大纲');
INSERT INTO `sensitive_word_data` VALUES ('军事训练评定标准');
INSERT INTO `sensitive_word_data` VALUES ('军委公开信');
INSERT INTO `sensitive_word_data` VALUES ('军需物质保管');
INSERT INTO `sensitive_word_data` VALUES ('军需物资保管');
INSERT INTO `sensitive_word_data` VALUES ('军用地图');
INSERT INTO `sensitive_word_data` VALUES ('军用教材');
INSERT INTO `sensitive_word_data` VALUES ('军用手枪');
INSERT INTO `sensitive_word_data` VALUES ('军政名单');
INSERT INTO `sensitive_word_data` VALUES ('军转安置');
INSERT INTO `sensitive_word_data` VALUES ('军转干部');
INSERT INTO `sensitive_word_data` VALUES ('軍長發威PK');
INSERT INTO `sensitive_word_data` VALUES ('軍火');
INSERT INTO `sensitive_word_data` VALUES ('卡耐基');
INSERT INTO `sensitive_word_data` VALUES ('卡辛纳大道和三福大道交界处');
INSERT INTO `sensitive_word_data` VALUES ('开垦民主');
INSERT INTO `sensitive_word_data` VALUES ('开天目');
INSERT INTO `sensitive_word_data` VALUES ('康成元');
INSERT INTO `sensitive_word_data` VALUES ('康涛杰');
INSERT INTO `sensitive_word_data` VALUES ('磁悬浮');
INSERT INTO `sensitive_word_data` VALUES ('中共当局');
INSERT INTO `sensitive_word_data` VALUES ('考后付款');
INSERT INTO `sensitive_word_data` VALUES ('考前发放');
INSERT INTO `sensitive_word_data` VALUES ('靠你妈');
INSERT INTO `sensitive_word_data` VALUES ('科西嘉独立');
INSERT INTO `sensitive_word_data` VALUES ('颗粒包装机');
INSERT INTO `sensitive_word_data` VALUES ('刻章');
INSERT INTO `sensitive_word_data` VALUES ('空难');
INSERT INTO `sensitive_word_data` VALUES ('空難');
INSERT INTO `sensitive_word_data` VALUES ('空中民主墙');
INSERT INTO `sensitive_word_data` VALUES ('恐怖分子');
INSERT INTO `sensitive_word_data` VALUES ('恐怖分子第一步炸弹');
INSERT INTO `sensitive_word_data` VALUES ('恐怖分子DIY');
INSERT INTO `sensitive_word_data` VALUES ('恐怖分子必备');
INSERT INTO `sensitive_word_data` VALUES ('恐怖分子皮箱炸弹');
INSERT INTO `sensitive_word_data` VALUES ('恐怖分子傻瓜手册');
INSERT INTO `sensitive_word_data` VALUES ('恐怖牢笼');
INSERT INTO `sensitive_word_data` VALUES ('恐怖牢?恐共');
INSERT INTO `sensitive_word_data` VALUES ('恐惧杀手');
INSERT INTO `sensitive_word_data` VALUES ('恐懼殺手');
INSERT INTO `sensitive_word_data` VALUES ('口技');
INSERT INTO `sensitive_word_data` VALUES ('口交');
INSERT INTO `sensitive_word_data` VALUES ('口香糖炸弹');
INSERT INTO `sensitive_word_data` VALUES ('口淫');
INSERT INTO `sensitive_word_data` VALUES ('扣应队');
INSERT INTO `sensitive_word_data` VALUES ('酷刑罪{MOD}');
INSERT INTO `sensitive_word_data` VALUES ('酷刑罪**');
INSERT INTO `sensitive_word_data` VALUES ('跨世纪的良心犯');
INSERT INTO `sensitive_word_data` VALUES ('快操我');
INSERT INTO `sensitive_word_data` VALUES ('狂操');
INSERT INTO `sensitive_word_data` VALUES ('狂插');
INSERT INTO `sensitive_word_data` VALUES ('狂干');
INSERT INTO `sensitive_word_data` VALUES ('狂搞');
INSERT INTO `sensitive_word_data` VALUES ('邝锦文');
INSERT INTO `sensitive_word_data` VALUES ('昆仑女神功');
INSERT INTO `sensitive_word_data` VALUES ('捆绑');
INSERT INTO `sensitive_word_data` VALUES ('拉帮游说');
INSERT INTO `sensitive_word_data` VALUES ('拉登');
INSERT INTO `sensitive_word_data` VALUES ('拉登熟知中国');
INSERT INTO `sensitive_word_data` VALUES ('拉登熟知中國');
INSERT INTO `sensitive_word_data` VALUES ('拉票贿选');
INSERT INTO `sensitive_word_data` VALUES ('拉萨僧人接连抗议');
INSERT INTO `sensitive_word_data` VALUES ('拉萨事件');
INSERT INTO `sensitive_word_data` VALUES ('喇嘛');
INSERT INTO `sensitive_word_data` VALUES ('赖昌星');
INSERT INTO `sensitive_word_data` VALUES ('拦截器');
INSERT INTO `sensitive_word_data` VALUES ('攔截器');
INSERT INTO `sensitive_word_data` VALUES ('烂逼');
INSERT INTO `sensitive_word_data` VALUES ('烂比');
INSERT INTO `sensitive_word_data` VALUES ('烂货');
INSERT INTO `sensitive_word_data` VALUES ('郎咸平');
INSERT INTO `sensitive_word_data` VALUES ('劳动教养所');
INSERT INTO `sensitive_word_data` VALUES ('劳改');
INSERT INTO `sensitive_word_data` VALUES ('劳工观察');
INSERT INTO `sensitive_word_data` VALUES ('劳教');
INSERT INTO `sensitive_word_data` VALUES ('劳教基金');
INSERT INTO `sensitive_word_data` VALUES ('老婊子');
INSERT INTO `sensitive_word_data` VALUES ('老虎机');
INSERT INTO `sensitive_word_data` VALUES ('老虎機');
INSERT INTO `sensitive_word_data` VALUES ('老江');
INSERT INTO `sensitive_word_data` VALUES ('老毛');
INSERT INTO `sensitive_word_data` VALUES ('老人政治');
INSERT INTO `sensitive_word_data` VALUES ('雷达测速器');
INSERT INTO `sensitive_word_data` VALUES ('雷達測速器');
INSERT INTO `sensitive_word_data` VALUES ('雷管');
INSERT INTO `sensitive_word_data` VALUES ('雷管制造技术');
INSERT INTO `sensitive_word_data` VALUES ('雷鸣球');
INSERT INTO `sensitive_word_data` VALUES ('冷宽');
INSERT INTO `sensitive_word_data` VALUES ('黎安友');
INSERT INTO `sensitive_word_data` VALUES ('黎阳平');
INSERT INTO `sensitive_word_data` VALUES ('黎阳评');
INSERT INTO `sensitive_word_data` VALUES ('黎陽評');
INSERT INTO `sensitive_word_data` VALUES ('黎智英');
INSERT INTO `sensitive_word_data` VALUES ('李洪志');
INSERT INTO `sensitive_word_data` VALUES ('李{10}洪{10}志');
INSERT INTO `sensitive_word_data` VALUES ('李长春');
INSERT INTO `sensitive_word_data` VALUES ('李長春');
INSERT INTO `sensitive_word_data` VALUES ('李崇礼');
INSERT INTO `sensitive_word_data` VALUES ('李崇仁');
INSERT INTO `sensitive_word_data` VALUES ('李崇禧');
INSERT INTO `sensitive_word_data` VALUES ('李传卿');
INSERT INTO `sensitive_word_data` VALUES ('李大尸');
INSERT INTO `sensitive_word_data` VALUES ('李大师');
INSERT INTO `sensitive_word_data` VALUES ('李登辉');
INSERT INTO `sensitive_word_data` VALUES ('李登辉总统');
INSERT INTO `sensitive_word_data` VALUES ('李弘旨');
INSERT INTO `sensitive_word_data` VALUES ('李红志');
INSERT INTO `sensitive_word_data` VALUES ('李红痔');
INSERT INTO `sensitive_word_data` VALUES ('李红智');
INSERT INTO `sensitive_word_data` VALUES ('李宏志');
INSERT INTO `sensitive_word_data` VALUES ('李宏治');
INSERT INTO `sensitive_word_data` VALUES ('李宏智');
INSERT INTO `sensitive_word_data` VALUES ('李洪宽');
INSERT INTO `sensitive_word_data` VALUES ('李洪志');
INSERT INTO `sensitive_word_data` VALUES ('李洪智');
INSERT INTO `sensitive_word_data` VALUES ('李洪痣');
INSERT INTO `sensitive_word_data` VALUES ('李洪誌');
INSERT INTO `sensitive_word_data` VALUES ('李鸿志');
INSERT INTO `sensitive_word_data` VALUES ('李鸿智');
INSERT INTO `sensitive_word_data` VALUES ('李继耐');
INSERT INTO `sensitive_word_data` VALUES ('李兰菊');
INSERT INTO `sensitive_word_data` VALUES ('李岚清');
INSERT INTO `sensitive_word_data` VALUES ('李嵐清');
INSERT INTO `sensitive_word_data` VALUES ('李良辉');
INSERT INTO `sensitive_word_data` VALUES ('李录');
INSERT INTO `sensitive_word_data` VALUES ('李禄');
INSERT INTO `sensitive_word_data` VALUES ('李鹏');
INSERT INTO `sensitive_word_data` VALUES ('李鹏之女');
INSERT INTO `sensitive_word_data` VALUES ('李鵬');
INSERT INTO `sensitive_word_data` VALUES ('李瑞环');
INSERT INTO `sensitive_word_data` VALUES ('李瑞環');
INSERT INTO `sensitive_word_data` VALUES ('李三共志');
INSERT INTO `sensitive_word_data` VALUES ('李少民');
INSERT INTO `sensitive_word_data` VALUES ('李淑娴');
INSERT INTO `sensitive_word_data` VALUES ('李旺阳');
INSERT INTO `sensitive_word_data` VALUES ('李伟信的笔供');
INSERT INTO `sensitive_word_data` VALUES ('李文斌');
INSERT INTO `sensitive_word_data` VALUES ('李向东');
INSERT INTO `sensitive_word_data` VALUES ('李小朋');
INSERT INTO `sensitive_word_data` VALUES ('李小鹏');
INSERT INTO `sensitive_word_data` VALUES ('李远哲');
INSERT INTO `sensitive_word_data` VALUES ('李遠哲');
INSERT INTO `sensitive_word_data` VALUES ('李月月鸟');
INSERT INTO `sensitive_word_data` VALUES ('李志绥');
INSERT INTO `sensitive_word_data` VALUES ('李总理');
INSERT INTO `sensitive_word_data` VALUES ('李总统');
INSERT INTO `sensitive_word_data` VALUES ('里藏春');
INSERT INTO `sensitive_word_data` VALUES ('历史篡改者');
INSERT INTO `sensitive_word_data` VALUES ('历史上的真实故事');
INSERT INTO `sensitive_word_data` VALUES ('俪影蝎心');
INSERT INTO `sensitive_word_data` VALUES ('连队资料');
INSERT INTO `sensitive_word_data` VALUES ('连胜德');
INSERT INTO `sensitive_word_data` VALUES ('连线机');
INSERT INTO `sensitive_word_data` VALUES ('莲花艺术团');
INSERT INTO `sensitive_word_data` VALUES ('連發');
INSERT INTO `sensitive_word_data` VALUES ('联合起诉廉政大论坛');
INSERT INTO `sensitive_word_data` VALUES ('联合起诉最高人民法院');
INSERT INTO `sensitive_word_data` VALUES ('联名上书');
INSERT INTO `sensitive_word_data` VALUES ('联总');
INSERT INTO `sensitive_word_data` VALUES ('联总这声传单');
INSERT INTO `sensitive_word_data` VALUES ('联总之声');
INSERT INTO `sensitive_word_data` VALUES ('联总之声传单');
INSERT INTO `sensitive_word_data` VALUES ('廉政大论坛');
INSERT INTO `sensitive_word_data` VALUES ('练功群众');
INSERT INTO `sensitive_word_data` VALUES ('炼功');
INSERT INTO `sensitive_word_data` VALUES ('梁光烈');
INSERT INTO `sensitive_word_data` VALUES ('梁擎墩');
INSERT INTO `sensitive_word_data` VALUES ('两岸关系');
INSERT INTO `sensitive_word_data` VALUES ('两岸三地论坛');
INSERT INTO `sensitive_word_data` VALUES ('两个中国');
INSERT INTO `sensitive_word_data` VALUES ('两会');
INSERT INTO `sensitive_word_data` VALUES ('两会报道');
INSERT INTO `sensitive_word_data` VALUES ('两会新闻');
INSERT INTO `sensitive_word_data` VALUES ('两派争斗');
INSERT INTO `sensitive_word_data` VALUES ('两性狂情');
INSERT INTO `sensitive_word_data` VALUES ('两性淫乱');
INSERT INTO `sensitive_word_data` VALUES ('兩性淫亂');
INSERT INTO `sensitive_word_data` VALUES ('辽阳工潮');
INSERT INTO `sensitive_word_data` VALUES ('廖锡龙');
INSERT INTO `sensitive_word_data` VALUES ('劣等人种博彩');
INSERT INTO `sensitive_word_data` VALUES ('猎枪');
INSERT INTO `sensitive_word_data` VALUES ('猎杀熊猫');
INSERT INTO `sensitive_word_data` VALUES ('林保华');
INSERT INTO `sensitive_word_data` VALUES ('林彪');
INSERT INTO `sensitive_word_data` VALUES ('林彪事件真相×××××');
INSERT INTO `sensitive_word_data` VALUES ('林彪元帅军事论文');
INSERT INTO `sensitive_word_data` VALUES ('林长盛');
INSERT INTO `sensitive_word_data` VALUES ('林樵清');
INSERT INTO `sensitive_word_data` VALUES ('林慎立');
INSERT INTO `sensitive_word_data` VALUES ('林昭纪念奖');
INSERT INTO `sensitive_word_data` VALUES ('临震预报');
INSERT INTO `sensitive_word_data` VALUES ('灵修团体{BANNED}');
INSERT INTO `sensitive_word_data` VALUES ('灵修团体**');
INSERT INTO `sensitive_word_data` VALUES ('凌锋');
INSERT INTO `sensitive_word_data` VALUES ('凌辱');
INSERT INTO `sensitive_word_data` VALUES ('铃声下载');
INSERT INTO `sensitive_word_data` VALUES ('菱恝');
INSERT INTO `sensitive_word_data` VALUES ('领导班子名单外泄');
INSERT INTO `sensitive_word_data` VALUES ('领导财产公示');
INSERT INTO `sensitive_word_data` VALUES ('领导层预备人选');
INSERT INTO `sensitive_word_data` VALUES ('領導財產公示');
INSERT INTO `sensitive_word_data` VALUES ('令狐安');
INSERT INTO `sensitive_word_data` VALUES ('令狐计划');
INSERT INTO `sensitive_word_data` VALUES ('令计划');
INSERT INTO `sensitive_word_data` VALUES ('刘宾深');
INSERT INTO `sensitive_word_data` VALUES ('刘宾雁');
INSERT INTO `sensitive_word_data` VALUES ('刘春良');
INSERT INTO `sensitive_word_data` VALUES ('刘刚');
INSERT INTO `sensitive_word_data` VALUES ('刘国凯');
INSERT INTO `sensitive_word_data` VALUES ('刘华清');
INSERT INTO `sensitive_word_data` VALUES ('刘俊国');
INSERT INTO `sensitive_word_data` VALUES ('刘凯中');
INSERT INTO `sensitive_word_data` VALUES ('刘奇葆');
INSERT INTO `sensitive_word_data` VALUES ('刘千石');
INSERT INTO `sensitive_word_data` VALUES ('刘青');
INSERT INTO `sensitive_word_data` VALUES ('刘山青');
INSERT INTO `sensitive_word_data` VALUES ('刘少奇');
INSERT INTO `sensitive_word_data` VALUES ('刘士贤');
INSERT INTO `sensitive_word_data` VALUES ('刘文胜');
INSERT INTO `sensitive_word_data` VALUES ('刘晓波');
INSERT INTO `sensitive_word_data` VALUES ('刘晓竹');
INSERT INTO `sensitive_word_data` VALUES ('刘永川');
INSERT INTO `sensitive_word_data` VALUES ('流氓警察');
INSERT INTO `sensitive_word_data` VALUES ('流氓民运');
INSERT INTO `sensitive_word_data` VALUES ('流氓无产者');
INSERT INTO `sensitive_word_data` VALUES ('流脑');
INSERT INTO `sensitive_word_data` VALUES ('流水穴');
INSERT INTO `sensitive_word_data` VALUES ('流亡');
INSERT INTO `sensitive_word_data` VALUES ('流亡藏人');
INSERT INTO `sensitive_word_data` VALUES ('流亡政府');
INSERT INTO `sensitive_word_data` VALUES ('流亡中的自在');
INSERT INTO `sensitive_word_data` VALUES ('留四进三');
INSERT INTO `sensitive_word_data` VALUES ('六●四');
INSERT INTO `sensitive_word_data` VALUES ('六彩');
INSERT INTO `sensitive_word_data` VALUES ('六代接班人');
INSERT INTO `sensitive_word_data` VALUES ('六合');
INSERT INTO `sensitive_word_data` VALUES ('六合采');
INSERT INTO `sensitive_word_data` VALUES ('六合彩');
INSERT INTO `sensitive_word_data` VALUES ('六级答案');
INSERT INTO `sensitive_word_data` VALUES ('六四');
INSERT INTO `sensitive_word_data` VALUES ('六四母亲');
INSERT INTO `sensitive_word_data` VALUES ('六四青年网');
INSERT INTO `sensitive_word_data` VALUES ('六四事件');
INSERT INTO `sensitive_word_data` VALUES ('六四受难者家属证辞');
INSERT INTO `sensitive_word_data` VALUES ('六四屠城');
INSERT INTO `sensitive_word_data` VALUES ('六四屠杀');
INSERT INTO `sensitive_word_data` VALUES ('六四宣言');
INSERT INTO `sensitive_word_data` VALUES ('六四学潮');
INSERT INTO `sensitive_word_data` VALUES ('六四血案');
INSERT INTO `sensitive_word_data` VALUES ('六四运动');
INSERT INTO `sensitive_word_data` VALUES ('六四政变');
INSERT INTO `sensitive_word_data` VALUES ('六四之役');
INSERT INTO `sensitive_word_data` VALUES ('六四资料馆');
INSERT INTO `sensitive_word_data` VALUES ('六星合彩');
INSERT INTO `sensitive_word_data` VALUES ('六月联盟');
INSERT INTO `sensitive_word_data` VALUES ('六月聯盟');
INSERT INTO `sensitive_word_data` VALUES ('龙虎豹');
INSERT INTO `sensitive_word_data` VALUES ('龙新民');
INSERT INTO `sensitive_word_data` VALUES ('龍虎豹');
INSERT INTO `sensitive_word_data` VALUES ('露点');
INSERT INTO `sensitive_word_data` VALUES ('露拉3D');
INSERT INTO `sensitive_word_data` VALUES ('露毛');
INSERT INTO `sensitive_word_data` VALUES ('露乳');
INSERT INTO `sensitive_word_data` VALUES ('鲁俊');
INSERT INTO `sensitive_word_data` VALUES ('陆空军地图');
INSERT INTO `sensitive_word_data` VALUES ('陆肆');
INSERT INTO `sensitive_word_data` VALUES ('陆委');
INSERT INTO `sensitive_word_data` VALUES ('陆委会');
INSERT INTO `sensitive_word_data` VALUES ('吕京花');
INSERT INTO `sensitive_word_data` VALUES ('吕秀莲');
INSERT INTO `sensitive_word_data` VALUES ('铝热剂');
INSERT INTO `sensitive_word_data` VALUES ('氯三苯乙烯');
INSERT INTO `sensitive_word_data` VALUES ('氯硝安定');
INSERT INTO `sensitive_word_data` VALUES ('乱交');
INSERT INTO `sensitive_word_data` VALUES ('乱伦');
INSERT INTO `sensitive_word_data` VALUES ('亂倫');
INSERT INTO `sensitive_word_data` VALUES ('抡功');
INSERT INTO `sensitive_word_data` VALUES ('伦敦西藏网');
INSERT INTO `sensitive_word_data` VALUES ('伦公');
INSERT INTO `sensitive_word_data` VALUES ('伦功');
INSERT INTO `sensitive_word_data` VALUES ('伦攻');
INSERT INTO `sensitive_word_data` VALUES ('沦公');
INSERT INTO `sensitive_word_data` VALUES ('沦功');
INSERT INTO `sensitive_word_data` VALUES ('沦攻');
INSERT INTO `sensitive_word_data` VALUES ('轮暴致死');
INSERT INTO `sensitive_word_data` VALUES ('轮大');
INSERT INTO `sensitive_word_data` VALUES ('轮公');
INSERT INTO `sensitive_word_data` VALUES ('轮功');
INSERT INTO `sensitive_word_data` VALUES ('轮攻');
INSERT INTO `sensitive_word_data` VALUES ('轮奸');
INSERT INTO `sensitive_word_data` VALUES ('轮奸虐杀');
INSERT INTO `sensitive_word_data` VALUES ('轮子小报');
INSERT INTO `sensitive_word_data` VALUES ('倫公');
INSERT INTO `sensitive_word_data` VALUES ('倫功');
INSERT INTO `sensitive_word_data` VALUES ('倫攻');
INSERT INTO `sensitive_word_data` VALUES ('淪公');
INSERT INTO `sensitive_word_data` VALUES ('淪功');
INSERT INTO `sensitive_word_data` VALUES ('淪攻');
INSERT INTO `sensitive_word_data` VALUES ('輪公');
INSERT INTO `sensitive_word_data` VALUES ('輪功');
INSERT INTO `sensitive_word_data` VALUES ('輪攻');
INSERT INTO `sensitive_word_data` VALUES ('论公');
INSERT INTO `sensitive_word_data` VALUES ('论功');
INSERT INTO `sensitive_word_data` VALUES ('论攻');
INSERT INTO `sensitive_word_data` VALUES ('论坛自动发贴机');
INSERT INTO `sensitive_word_data` VALUES ('論公');
INSERT INTO `sensitive_word_data` VALUES ('論功');
INSERT INTO `sensitive_word_data` VALUES ('論攻');
INSERT INTO `sensitive_word_data` VALUES ('罗干');
INSERT INTO `sensitive_word_data` VALUES ('罗礼诗');
INSERT INTO `sensitive_word_data` VALUES ('羅幹');
INSERT INTO `sensitive_word_data` VALUES ('裸干');
INSERT INTO `sensitive_word_data` VALUES ('裸聊');
INSERT INTO `sensitive_word_data` VALUES ('裸聊合法');
INSERT INTO `sensitive_word_data` VALUES ('裸女对对碰');
INSERT INTO `sensitive_word_data` VALUES ('裸女對對碰');
INSERT INTO `sensitive_word_data` VALUES ('裸体');
INSERT INTO `sensitive_word_data` VALUES ('骆冰淫传');
INSERT INTO `sensitive_word_data` VALUES ('雒树刚');
INSERT INTO `sensitive_word_data` VALUES ('妈逼');
INSERT INTO `sensitive_word_data` VALUES ('妈个');
INSERT INTO `sensitive_word_data` VALUES ('妈妈的=>他*的');
INSERT INTO `sensitive_word_data` VALUES ('妈批');
INSERT INTO `sensitive_word_data` VALUES ('媽個');
INSERT INTO `sensitive_word_data` VALUES ('媽媽的=>他*的');
INSERT INTO `sensitive_word_data` VALUES ('麻古');
INSERT INTO `sensitive_word_data` VALUES ('麻衣');
INSERT INTO `sensitive_word_data` VALUES ('麻醉');
INSERT INTO `sensitive_word_data` VALUES ('麻醉钢枪');
INSERT INTO `sensitive_word_data` VALUES ('麻醉鋼槍');
INSERT INTO `sensitive_word_data` VALUES ('麻醉迷幻极品');
INSERT INTO `sensitive_word_data` VALUES ('麻醉迷');
INSERT INTO `sensitive_word_data` VALUES ('麻醉枪');
INSERT INTO `sensitive_word_data` VALUES ('麻醉槍');
INSERT INTO `sensitive_word_data` VALUES ('麻醉药');
INSERT INTO `sensitive_word_data` VALUES ('麻醉藥');
INSERT INTO `sensitive_word_data` VALUES ('麻醉乙醚');
INSERT INTO `sensitive_word_data` VALUES ('马大维');
INSERT INTO `sensitive_word_data` VALUES ('马加爵');
INSERT INTO `sensitive_word_data` VALUES ('马来酸迷达唑仑');
INSERT INTO `sensitive_word_data` VALUES ('马良骏');
INSERT INTO `sensitive_word_data` VALUES ('马三家');
INSERT INTO `sensitive_word_data` VALUES ('马时敏');
INSERT INTO `sensitive_word_data` VALUES ('马馼');
INSERT INTO `sensitive_word_data` VALUES ('马英九总统');
INSERT INTO `sensitive_word_data` VALUES ('码会');
INSERT INTO `sensitive_word_data` VALUES ('吗啡碱cv');
INSERT INTO `sensitive_word_data` VALUES ('吗啡片');
INSERT INTO `sensitive_word_data` VALUES ('买春堂');
INSERT INTO `sensitive_word_data` VALUES ('买答案');
INSERT INTO `sensitive_word_data` VALUES ('买卖枪支');
INSERT INTO `sensitive_word_data` VALUES ('買春堂');
INSERT INTO `sensitive_word_data` VALUES ('買賣槍支');
INSERT INTO `sensitive_word_data` VALUES ('麦角酸');
INSERT INTO `sensitive_word_data` VALUES ('卖逼');
INSERT INTO `sensitive_word_data` VALUES ('卖比');
INSERT INTO `sensitive_word_data` VALUES ('卖答案');
INSERT INTO `sensitive_word_data` VALUES ('卖国');
INSERT INTO `sensitive_word_data` VALUES ('卖淫');
INSERT INTO `sensitive_word_data` VALUES ('猫肉');
INSERT INTO `sensitive_word_data` VALUES ('貓肉');
INSERT INTO `sensitive_word_data` VALUES ('毛{1}泽{2}东');
INSERT INTO `sensitive_word_data` VALUES ('毛厕东');
INSERT INTO `sensitive_word_data` VALUES ('毛厕洞');
INSERT INTO `sensitive_word_data` VALUES ('毛都露出');
INSERT INTO `sensitive_word_data` VALUES ('毛共');
INSERT INTO `sensitive_word_data` VALUES ('毛光烈');
INSERT INTO `sensitive_word_data` VALUES ('毛派');
INSERT INTO `sensitive_word_data` VALUES ('毛如柏');
INSERT INTO `sensitive_word_data` VALUES ('毛时代大饥荒揭秘');
INSERT INTO `sensitive_word_data` VALUES ('毛一鲜');
INSERT INTO `sensitive_word_data` VALUES ('毛一鮮');
INSERT INTO `sensitive_word_data` VALUES ('毛泽东');
INSERT INTO `sensitive_word_data` VALUES ('毛泽东复活');
INSERT INTO `sensitive_word_data` VALUES ('毛泽东侄子');
INSERT INTO `sensitive_word_data` VALUES ('毛贼');
INSERT INTO `sensitive_word_data` VALUES ('毛贼东');
INSERT INTO `sensitive_word_data` VALUES ('毛主席的嫡孙');
INSERT INTO `sensitive_word_data` VALUES ('毛主席复活');
INSERT INTO `sensitive_word_data` VALUES ('毛主席復活');
INSERT INTO `sensitive_word_data` VALUES ('毛主席关于人民军队人民战争及其战略战术论述的摘录');
INSERT INTO `sensitive_word_data` VALUES ('毛主席批示');
INSERT INTO `sensitive_word_data` VALUES ('毛主席有关指示');
INSERT INTO `sensitive_word_data` VALUES ('毛主席致江青同志的信');
INSERT INTO `sensitive_word_data` VALUES ('主席资料');
INSERT INTO `sensitive_word_data` VALUES ('美国维吾尔');
INSERT INTO `sensitive_word_data` VALUES ('美国之音');
INSERT INTO `sensitive_word_data` VALUES ('美甲');
INSERT INTO `sensitive_word_data` VALUES ('美女视频');
INSERT INTO `sensitive_word_data` VALUES ('美女視頻');
INSERT INTO `sensitive_word_data` VALUES ('美女野球拳');
INSERT INTO `sensitive_word_data` VALUES ('美女做愛');
INSERT INTO `sensitive_word_data` VALUES ('美少女麻雀');
INSERT INTO `sensitive_word_data` VALUES ('美腿');
INSERT INTO `sensitive_word_data` VALUES ('美腿写真');
INSERT INTO `sensitive_word_data` VALUES ('美腿寫真');
INSERT INTO `sensitive_word_data` VALUES ('妹疼');
INSERT INTO `sensitive_word_data` VALUES ('妹痛');
INSERT INTO `sensitive_word_data` VALUES ('夢幻麻將館');
INSERT INTO `sensitive_word_data` VALUES ('猛插');
INSERT INTO `sensitive_word_data` VALUES ('猛男强奸');
INSERT INTO `sensitive_word_data` VALUES ('蒙独');
INSERT INTO `sensitive_word_data` VALUES ('蒙古独');
INSERT INTO `sensitive_word_data` VALUES ('蒙古独立');
INSERT INTO `sensitive_word_data` VALUES ('蒙古回归');
INSERT INTO `sensitive_word_data` VALUES ('蒙古教育');
INSERT INTO `sensitive_word_data` VALUES ('化基金会');
INSERT INTO `sensitive_word_data` VALUES ('蒙古牧民联合会');
INSERT INTO `sensitive_word_data` VALUES ('蒙古之友');
INSERT INTO `sensitive_word_data` VALUES ('蒙汗');
INSERT INTO `sensitive_word_data` VALUES ('蒙汗{5}');
INSERT INTO `sensitive_word_data` VALUES ('蒙汗药');
INSERT INTO `sensitive_word_data` VALUES ('蒙汗药粉');
INSERT INTO `sensitive_word_data` VALUES ('蒙汗藥');
INSERT INTO `sensitive_word_data` VALUES ('蒙进喜');
INSERT INTO `sensitive_word_data` VALUES ('梦幻麻将馆');
INSERT INTO `sensitive_word_data` VALUES ('梦网洪志');
INSERT INTO `sensitive_word_data` VALUES ('咪达唑仑');
INSERT INTO `sensitive_word_data` VALUES ('迷/魂/药/迷/昏/药/三/唑/仑');
INSERT INTO `sensitive_word_data` VALUES ('迷{5}药');
INSERT INTO `sensitive_word_data` VALUES ('迷幻精华素');
INSERT INTO `sensitive_word_data` VALUES ('迷幻药');
INSERT INTO `sensitive_word_data` VALUES ('迷幻液');
INSERT INTO `sensitive_word_data` VALUES ('迷昏蚊香');
INSERT INTO `sensitive_word_data` VALUES ('迷昏香烟');
INSERT INTO `sensitive_word_data` VALUES ('迷昏药');
INSERT INTO `sensitive_word_data` VALUES ('迷魂');
INSERT INTO `sensitive_word_data` VALUES ('魂蚊香');
INSERT INTO `sensitive_word_data` VALUES ('迷魂香');
INSERT INTO `sensitive_word_data` VALUES ('迷魂香烟');
INSERT INTO `sensitive_word_data` VALUES ('迷魂药=>>');
INSERT INTO `sensitive_word_data` VALUES ('迷魂药激情');
INSERT INTO `sensitive_word_data` VALUES ('迷魂藥');
INSERT INTO `sensitive_word_data` VALUES ('迷奸');
INSERT INTO `sensitive_word_data` VALUES ('迷奸药');
INSERT INTO `sensitive_word_data` VALUES ('迷歼药');
INSERT INTO `sensitive_word_data` VALUES ('迷殲藥');
INSERT INTO `sensitive_word_data` VALUES ('迷情药=>>');
INSERT INTO `sensitive_word_data` VALUES ('迷失北京');
INSERT INTO `sensitive_word_data` VALUES ('迷香');
INSERT INTO `sensitive_word_data` VALUES ('迷药');
INSERT INTO `sensitive_word_data` VALUES ('迷藥');
INSERT INTO `sensitive_word_data` VALUES ('秘录');
INSERT INTO `sensitive_word_data` VALUES ('秘密潜入');
INSERT INTO `sensitive_word_data` VALUES ('秘密潛入');
INSERT INTO `sensitive_word_data` VALUES ('密穴');
INSERT INTO `sensitive_word_data` VALUES ('绵恒');
INSERT INTO `sensitive_word_data` VALUES ('灭中共');
INSERT INTO `sensitive_word_data` VALUES ('民国');
INSERT INTO `sensitive_word_data` VALUES ('民进党');
INSERT INTO `sensitive_word_data` VALUES ('民警');
INSERT INTO `sensitive_word_data` VALUES ('民联');
INSERT INTO `sensitive_word_data` VALUES ('民殇');
INSERT INTO `sensitive_word_data` VALUES ('民意');
INSERT INTO `sensitive_word_data` VALUES ('民意论坛');
INSERT INTO `sensitive_word_data` VALUES ('民运');
INSERT INTO `sensitive_word_data` VALUES ('民运分子');
INSERT INTO `sensitive_word_data` VALUES ('民运信息中心');
INSERT INTO `sensitive_word_data` VALUES ('民?民?民阵');
INSERT INTO `sensitive_word_data` VALUES ('民猪');
INSERT INTO `sensitive_word_data` VALUES ('民主');
INSERT INTO `sensitive_word_data` VALUES ('民主不能等待');
INSERT INTO `sensitive_word_data` VALUES ('民主论坛');
INSERT INTO `sensitive_word_data` VALUES ('民主评论');
INSERT INTO `sensitive_word_data` VALUES ('民主墙');
INSERT INTO `sensitive_word_data` VALUES ('民主运动');
INSERT INTO `sensitive_word_data` VALUES ('民主之声');
INSERT INTO `sensitive_word_data` VALUES ('民族矛盾');
INSERT INTO `sensitive_word_data` VALUES ('民族问题');
INSERT INTO `sensitive_word_data` VALUES ('闵耀中');
INSERT INTO `sensitive_word_data` VALUES ('名山县');
INSERT INTO `sensitive_word_data` VALUES ('明Hui');
INSERT INTO `sensitive_word_data` VALUES ('明hui');
INSERT INTO `sensitive_word_data` VALUES ('明慧');
INSERT INTO `sensitive_word_data` VALUES ('明慧{5}');
INSERT INTO `sensitive_word_data` VALUES ('明慧网');
INSERT INTO `sensitive_word_data` VALUES ('魔教');
INSERT INTO `sensitive_word_data` VALUES ('魔难论');
INSERT INTO `sensitive_word_data` VALUES ('末世劫难');
INSERT INTO `sensitive_word_data` VALUES ('末世论');
INSERT INTO `sensitive_word_data` VALUES ('莫伟强');
INSERT INTO `sensitive_word_data` VALUES ('生命自私到了极点的中共政权');
INSERT INTO `sensitive_word_data` VALUES ('牟新生');
INSERT INTO `sensitive_word_data` VALUES ('母子');
INSERT INTO `sensitive_word_data` VALUES ('木犀地');
INSERT INTO `sensitive_word_data` VALUES ('木子论');
INSERT INTO `sensitive_word_data` VALUES ('内裤');
INSERT INTO `sensitive_word_data` VALUES ('内射');
INSERT INTO `sensitive_word_data` VALUES ('内争人权');
INSERT INTO `sensitive_word_data` VALUES ('奶头真红');
INSERT INTO `sensitive_word_data` VALUES ('奶子');
INSERT INTO `sensitive_word_data` VALUES ('南大自由论坛');
INSERT INTO `sensitive_word_data` VALUES ('南华早报');
INSERT INTO `sensitive_word_data` VALUES ('闹事');
INSERT INTO `sensitive_word_data` VALUES ('能力主');
INSERT INTO `sensitive_word_data` VALUES ('尼总务石');
INSERT INTO `sensitive_word_data` VALUES ('吸其目哦轻易');
INSERT INTO `sensitive_word_data` VALUES ('倪育贤');
INSERT INTO `sensitive_word_data` VALUES ('倪志福');
INSERT INTO `sensitive_word_data` VALUES ('你爸');
INSERT INTO `sensitive_word_data` VALUES ('你妈逼');
INSERT INTO `sensitive_word_data` VALUES ('你妈的');
INSERT INTO `sensitive_word_data` VALUES ('你娘的');
INSERT INTO `sensitive_word_data` VALUES ('你说我说论坛');
INSERT INTO `sensitive_word_data` VALUES ('你他妈');
INSERT INTO `sensitive_word_data` VALUES ('年春衫薄');
INSERT INTO `sensitive_word_data` VALUES ('牛比');
INSERT INTO `sensitive_word_data` VALUES ('钮茂生');
INSERT INTO `sensitive_word_data` VALUES ('农民真正贫困的根源');
INSERT INTO `sensitive_word_data` VALUES ('女教師');
INSERT INTO `sensitive_word_data` VALUES ('女女');
INSERT INTO `sensitive_word_data` VALUES ('女神教');
INSERT INTO `sensitive_word_data` VALUES ('女优');
INSERT INTO `sensitive_word_data` VALUES ('女优片');
INSERT INTO `sensitive_word_data` VALUES ('女優');
INSERT INTO `sensitive_word_data` VALUES ('虐待');
INSERT INTO `sensitive_word_data` VALUES ('诺龙');
INSERT INTO `sensitive_word_data` VALUES ('锘挎瘺娉戒笢1234');
INSERT INTO `sensitive_word_data` VALUES ('锘挎瘺娉戒笢12345');
INSERT INTO `sensitive_word_data` VALUES ('欧泽高');
INSERT INTO `sensitive_word_data` VALUES ('欧洲圆明网');
INSERT INTO `sensitive_word_data` VALUES ('拍花子');
INSERT INTO `sensitive_word_data` VALUES ('拍肩迷');
INSERT INTO `sensitive_word_data` VALUES ('拍肩神药');
INSERT INTO `sensitive_word_data` VALUES ('拍肩神藥');
INSERT INTO `sensitive_word_data` VALUES ('派系斗争');
INSERT INTO `sensitive_word_data` VALUES ('潘国平');
INSERT INTO `sensitive_word_data` VALUES ('盘古乐队');
INSERT INTO `sensitive_word_data` VALUES ('盤古樂隊');
INSERT INTO `sensitive_word_data` VALUES ('炮兵参谋手册');
INSERT INTO `sensitive_word_data` VALUES ('炮轰铁道部');
INSERT INTO `sensitive_word_data` VALUES ('跑官要官');
INSERT INTO `sensitive_word_data` VALUES ('泡沫经济');
INSERT INTO `sensitive_word_data` VALUES ('喷剂');
INSERT INTO `sensitive_word_data` VALUES ('喷精');
INSERT INTO `sensitive_word_data` VALUES ('喷尿');
INSERT INTO `sensitive_word_data` VALUES ('喷雾迷药');
INSERT INTO `sensitive_word_data` VALUES ('喷雾型');
INSERT INTO `sensitive_word_data` VALUES ('彭钢');
INSERT INTO `sensitive_word_data` VALUES ('彭丽媛');
INSERT INTO `sensitive_word_data` VALUES ('批林整风参考材料');
INSERT INTO `sensitive_word_data` VALUES ('皮箱炸弹构造');
INSERT INTO `sensitive_word_data` VALUES ('皮质类固醇');
INSERT INTO `sensitive_word_data` VALUES ('屁眼');
INSERT INTO `sensitive_word_data` VALUES ('骗局');
INSERT INTO `sensitive_word_data` VALUES ('騙局');
INSERT INTO `sensitive_word_data` VALUES ('嫖鸡');
INSERT INTO `sensitive_word_data` VALUES ('嫖雞');
INSERT INTO `sensitive_word_data` VALUES ('嫖妓');
INSERT INTO `sensitive_word_data` VALUES ('平安夜自杀');
INSERT INTO `sensitive_word_data` VALUES ('平反六四');
INSERT INTO `sensitive_word_data` VALUES ('平银芳');
INSERT INTO `sensitive_word_data` VALUES ('迫害');
INSERT INTO `sensitive_word_data` VALUES ('迫害珐(工力)国际组织');
INSERT INTO `sensitive_word_data` VALUES ('迫害无辜何时了');
INSERT INTO `sensitive_word_data` VALUES ('迫害致死');
INSERT INTO `sensitive_word_data` VALUES ('菩提功');
INSERT INTO `sensitive_word_data` VALUES ('蒲海清');
INSERT INTO `sensitive_word_data` VALUES ('蒲团');
INSERT INTO `sensitive_word_data` VALUES ('濮洪九');
INSERT INTO `sensitive_word_data` VALUES ('朴鸣呼');
INSERT INTO `sensitive_word_data` VALUES ('曝光王');
INSERT INTO `sensitive_word_data` VALUES ('七宗罪');
INSERT INTO `sensitive_word_data` VALUES ('祁建');
INSERT INTO `sensitive_word_data` VALUES ('齐墨');
INSERT INTO `sensitive_word_data` VALUES ('企业汇总会计报表');
INSERT INTO `sensitive_word_data` VALUES ('企业如何建立网站');
INSERT INTO `sensitive_word_data` VALUES ('汽车爆炸案现场');
INSERT INTO `sensitive_word_data` VALUES ('汽車爆炸案現場');
INSERT INTO `sensitive_word_data` VALUES ('器官贩卖');
INSERT INTO `sensitive_word_data` VALUES ('千源');
INSERT INTO `sensitive_word_data` VALUES ('前期的弓足别提在理睬你');
INSERT INTO `sensitive_word_data` VALUES ('荨麻疹');
INSERT INTO `sensitive_word_data` VALUES ('钱达');
INSERT INTO `sensitive_word_data` VALUES ('钱国梁');
INSERT INTO `sensitive_word_data` VALUES ('钱其琛');
INSERT INTO `sensitive_word_data` VALUES ('钱运录');
INSERT INTO `sensitive_word_data` VALUES ('钳制网络言论');
INSERT INTO `sensitive_word_data` VALUES ('潜在用');
INSERT INTO `sensitive_word_data` VALUES ('枪货到付款');
INSERT INTO `sensitive_word_data` VALUES ('枪zhi');
INSERT INTO `sensitive_word_data` VALUES ('枪决女犯');
INSERT INTO `sensitive_word_data` VALUES ('枪决现场');
INSERT INTO `sensitive_word_data` VALUES ('枪手');
INSERT INTO `sensitive_word_data` VALUES ('枪淫少妇');
INSERT INTO `sensitive_word_data` VALUES ('枪支弹药');
INSERT INTO `sensitive_word_data` VALUES ('槍決女犯');
INSERT INTO `sensitive_word_data` VALUES ('槍決現場');
INSERT INTO `sensitive_word_data` VALUES ('槍支彈藥');
INSERT INTO `sensitive_word_data` VALUES ('强暴');
INSERT INTO `sensitive_word_data` VALUES ('强奸');
INSERT INTO `sensitive_word_data` VALUES ('强歼');
INSERT INTO `sensitive_word_data` VALUES ('强烈抗议中共当局');
INSERT INTO `sensitive_word_data` VALUES ('强卫');
INSERT INTO `sensitive_word_data` VALUES ('强效失意药');
INSERT INTO `sensitive_word_data` VALUES ('强硬发言');
INSERT INTO `sensitive_word_data` VALUES ('抢答器');
INSERT INTO `sensitive_word_data` VALUES ('抢粮记');
INSERT INTO `sensitive_word_data` VALUES ('抢圣火');
INSERT INTO `sensitive_word_data` VALUES ('羟丁酸');
INSERT INTO `sensitive_word_data` VALUES ('乔波室内滑雪馆');
INSERT INTO `sensitive_word_data` VALUES ('乔石');
INSERT INTO `sensitive_word_data` VALUES ('窃听');
INSERT INTO `sensitive_word_data` VALUES ('窃听器');
INSERT INTO `sensitive_word_data` VALUES ('窃听器材');
INSERT INTO `sensitive_word_data` VALUES ('窃听设备');
INSERT INTO `sensitive_word_data` VALUES ('窃听王');
INSERT INTO `sensitive_word_data` VALUES ('竊聽器');
INSERT INTO `sensitive_word_data` VALUES ('竊聽器材');
INSERT INTO `sensitive_word_data` VALUES ('亲共分子');
INSERT INTO `sensitive_word_data` VALUES ('亲共媒体');
INSERT INTO `sensitive_word_data` VALUES ('亲共行动');
INSERT INTO `sensitive_word_data` VALUES ('亲美');
INSERT INTO `sensitive_word_data` VALUES ('侵犯国外专利');
INSERT INTO `sensitive_word_data` VALUES ('钦本立');
INSERT INTO `sensitive_word_data` VALUES ('钦点接班人');
INSERT INTO `sensitive_word_data` VALUES ('秦晋');
INSERT INTO `sensitive_word_data` VALUES ('秦青的幸');
INSERT INTO `sensitive_word_data` VALUES ('沁园春血');
INSERT INTO `sensitive_word_data` VALUES ('青岛石化项目引发市民恐慌');
INSERT INTO `sensitive_word_data` VALUES ('青天白日旗');
INSERT INTO `sensitive_word_data` VALUES ('轻松制作原子弹');
INSERT INTO `sensitive_word_data` VALUES ('轻舟快讯');
INSERT INTO `sensitive_word_data` VALUES ('清场内幕');
INSERT INTO `sensitive_word_data` VALUES ('清纯少妇');
INSERT INTO `sensitive_word_data` VALUES ('清官团');
INSERT INTO `sensitive_word_data` VALUES ('清海师父');
INSERT INTO `sensitive_word_data` VALUES ('清海无上师');
INSERT INTO `sensitive_word_data` VALUES ('清华帮');
INSERT INTO `sensitive_word_data` VALUES ('情妇');
INSERT INTO `sensitive_word_data` VALUES ('情色');
INSERT INTO `sensitive_word_data` VALUES ('情色{5}');
INSERT INTO `sensitive_word_data` VALUES ('情色大片');
INSERT INTO `sensitive_word_data` VALUES ('情色电影');
INSERT INTO `sensitive_word_data` VALUES ('情色光碟');
INSERT INTO `sensitive_word_data` VALUES ('情色呻吟');
INSERT INTO `sensitive_word_data` VALUES ('情色贴图');
INSERT INTO `sensitive_word_data` VALUES ('情色图片');
INSERT INTO `sensitive_word_data` VALUES ('情色文学');
INSERT INTO `sensitive_word_data` VALUES ('情色小说');
INSERT INTO `sensitive_word_data` VALUES ('情色影片');
INSERT INTO `sensitive_word_data` VALUES ('庆红');
INSERT INTO `sensitive_word_data` VALUES ('去他娘的');
INSERT INTO `sensitive_word_data` VALUES ('全范围教会');
INSERT INTO `sensitive_word_data` VALUES ('全国二奶');
INSERT INTO `sensitive_word_data` VALUES ('全国两会');
INSERT INTO `sensitive_word_data` VALUES ('全國二奶');
INSERT INTO `sensitive_word_data` VALUES ('权斗');
INSERT INTO `sensitive_word_data` VALUES ('权力瓜分');
INSERT INTO `sensitive_word_data` VALUES ('权力核心');
INSERT INTO `sensitive_word_data` VALUES ('确保党国家机密安全规定');
INSERT INTO `sensitive_word_data` VALUES ('裙底走光');
INSERT INTO `sensitive_word_data` VALUES ('群发器');
INSERT INTO `sensitive_word_data` VALUES ('群發器');
INSERT INTO `sensitive_word_data` VALUES ('群奸');
INSERT INTO `sensitive_word_data` VALUES ('群交');
INSERT INTO `sensitive_word_data` VALUES ('群射');
INSERT INTO `sensitive_word_data` VALUES ('群体灭绝');
INSERT INTO `sensitive_word_data` VALUES ('群体灭绝罪');
INSERT INTO `sensitive_word_data` VALUES ('群体事件');
INSERT INTO `sensitive_word_data` VALUES ('群體事件');
INSERT INTO `sensitive_word_data` VALUES ('绕过封锁');
INSERT INTO `sensitive_word_data` VALUES ('热比娅');
INSERT INTO `sensitive_word_data` VALUES ('热血江湖');
INSERT INTO `sensitive_word_data` VALUES ('热站政论网');
INSERT INTO `sensitive_word_data` VALUES ('人工少女');
INSERT INTO `sensitive_word_data` VALUES ('人类罪恶论');
INSERT INTO `sensitive_word_data` VALUES ('人民报');
INSERT INTO `sensitive_word_data` VALUES ('人民报讯');
INSERT INTO `sensitive_word_data` VALUES ('人民币恶搞');
INSERT INTO `sensitive_word_data` VALUES ('人民大众时事参考');
INSERT INTO `sensitive_word_data` VALUES ('人民内情真相');
INSERT INTO `sensitive_word_data` VALUES ('人权恶棍');
INSERT INTO `sensitive_word_data` VALUES ('人体艺术');
INSERT INTO `sensitive_word_data` VALUES ('人宇特能功');
INSERT INTO `sensitive_word_data` VALUES ('仁吉旺姆');
INSERT INTO `sensitive_word_data` VALUES ('仁青加');
INSERT INTO `sensitive_word_data` VALUES ('仁寿警方');
INSERT INTO `sensitive_word_data` VALUES ('任泽民');
INSERT INTO `sensitive_word_data` VALUES ('日本小泉');
INSERT INTO `sensitive_word_data` VALUES ('日逼');
INSERT INTO `sensitive_word_data` VALUES ('日内瓦金融');
INSERT INTO `sensitive_word_data` VALUES ('日你');
INSERT INTO `sensitive_word_data` VALUES ('日你妈=>我是猪');
INSERT INTO `sensitive_word_data` VALUES ('日您');
INSERT INTO `sensitive_word_data` VALUES ('日批');
INSERT INTO `sensitive_word_data` VALUES ('日死你');
INSERT INTO `sensitive_word_data` VALUES ('日他');
INSERT INTO `sensitive_word_data` VALUES ('肉棒');
INSERT INTO `sensitive_word_data` VALUES ('肉洞');
INSERT INTO `sensitive_word_data` VALUES ('肉棍');
INSERT INTO `sensitive_word_data` VALUES ('肉穴{MOD}');
INSERT INTO `sensitive_word_data` VALUES ('肉穴**');
INSERT INTO `sensitive_word_data` VALUES ('肉欲');
INSERT INTO `sensitive_word_data` VALUES ('如何制作原子弹');
INSERT INTO `sensitive_word_data` VALUES ('如何做炸弹');
INSERT INTO `sensitive_word_data` VALUES ('如何做炸药');
INSERT INTO `sensitive_word_data` VALUES ('乳交');
INSERT INTO `sensitive_word_data` VALUES ('辱师');
INSERT INTO `sensitive_word_data` VALUES ('入党申请书');
INSERT INTO `sensitive_word_data` VALUES ('瑞士金融大学');
INSERT INTO `sensitive_word_data` VALUES ('萨斯病');
INSERT INTO `sensitive_word_data` VALUES ('赛克网');
INSERT INTO `sensitive_word_data` VALUES ('三班仆人派');
INSERT INTO `sensitive_word_data` VALUES ('三挫仑');
INSERT INTO `sensitive_word_data` VALUES ('三二二攻台作战');
INSERT INTO `sensitive_word_data` VALUES ('三二二攻台作战计划');
INSERT INTO `sensitive_word_data` VALUES ('三坊七巷火灾');
INSERT INTO `sensitive_word_data` VALUES ('三级片');
INSERT INTO `sensitive_word_data` VALUES ('三級片=>我該死');
INSERT INTO `sensitive_word_data` VALUES ('三面翻');
INSERT INTO `sensitive_word_data` VALUES ('三浦愛佳');
INSERT INTO `sensitive_word_data` VALUES ('三去车仑');
INSERT INTO `sensitive_word_data` VALUES ('三去车仑工力');
INSERT INTO `sensitive_word_data` VALUES ('三三九乘元功');
INSERT INTO `sensitive_word_data` VALUES ('三水法轮');
INSERT INTO `sensitive_word_data` VALUES ('三退');
INSERT INTO `sensitive_word_data` VALUES ('三唑');
INSERT INTO `sensitive_word_data` VALUES ('三唑仑');
INSERT INTO `sensitive_word_data` VALUES ('三唑仑片');
INSERT INTO `sensitive_word_data` VALUES ('三唑侖');
INSERT INTO `sensitive_word_data` VALUES ('骚逼');
INSERT INTO `sensitive_word_data` VALUES ('骚妇');
INSERT INTO `sensitive_word_data` VALUES ('骚乱');
INSERT INTO `sensitive_word_data` VALUES ('骚穴');
INSERT INTO `sensitive_word_data` VALUES ('色-情');
INSERT INTO `sensitive_word_data` VALUES ('色戒未删减');
INSERT INTO `sensitive_word_data` VALUES ('色空寺');
INSERT INTO `sensitive_word_data` VALUES ('色狼');
INSERT INTO `sensitive_word_data` VALUES ('色狼网');
INSERT INTO `sensitive_word_data` VALUES ('色狼網');
INSERT INTO `sensitive_word_data` VALUES ('色情');
INSERT INTO `sensitive_word_data` VALUES ('色情{5}');
INSERT INTO `sensitive_word_data` VALUES ('色情电视');
INSERT INTO `sensitive_word_data` VALUES ('色情电影');
INSERT INTO `sensitive_word_data` VALUES ('色情電視');
INSERT INTO `sensitive_word_data` VALUES ('色情服务');
INSERT INTO `sensitive_word_data` VALUES ('色情图片');
INSERT INTO `sensitive_word_data` VALUES ('色情圖片');
INSERT INTO `sensitive_word_data` VALUES ('色情网站');
INSERT INTO `sensitive_word_data` VALUES ('色情網站');
INSERT INTO `sensitive_word_data` VALUES ('色情小电影');
INSERT INTO `sensitive_word_data` VALUES ('色情小電影');
INSERT INTO `sensitive_word_data` VALUES ('色情小说');
INSERT INTO `sensitive_word_data` VALUES ('色友');
INSERT INTO `sensitive_word_data` VALUES ('色欲');
INSERT INTO `sensitive_word_data` VALUES ('杀人事件');
INSERT INTO `sensitive_word_data` VALUES ('沙皇李长春');
INSERT INTO `sensitive_word_data` VALUES ('傻B');
INSERT INTO `sensitive_word_data` VALUES ('傻X');
INSERT INTO `sensitive_word_data` VALUES ('傻逼');
INSERT INTO `sensitive_word_data` VALUES ('煞笔');
INSERT INTO `sensitive_word_data` VALUES ('山寨手机');
INSERT INTO `sensitive_word_data` VALUES ('汕尾事件');
INSERT INTO `sensitive_word_data` VALUES ('善恶有报');
INSERT INTO `sensitive_word_data` VALUES ('上床');
INSERT INTO `sensitive_word_data` VALUES ('上访军');
INSERT INTO `sensitive_word_data` VALUES ('上海帮');
INSERT INTO `sensitive_word_data` VALUES ('上海帮的黄昏');
INSERT INTO `sensitive_word_data` VALUES ('上海拆迁悲喜剧');
INSERT INTO `sensitive_word_data` VALUES ('上海孤儿院');
INSERT INTO `sensitive_word_data` VALUES ('上海交大');
INSERT INTO `sensitive_word_data` VALUES ('尚福林');
INSERT INTO `sensitive_word_data` VALUES ('尚勇');
INSERT INTO `sensitive_word_data` VALUES ('烧国旗');
INSERT INTO `sensitive_word_data` VALUES ('少儿不宜');
INSERT INTO `sensitive_word_data` VALUES ('少妇');
INSERT INTO `sensitive_word_data` VALUES ('少妇白洁');
INSERT INTO `sensitive_word_data` VALUES ('少女高潮');
INSERT INTO `sensitive_word_data` VALUES ('邵家健');
INSERT INTO `sensitive_word_data` VALUES ('舌战法庭');
INSERT INTO `sensitive_word_data` VALUES ('社会民主主义');
INSERT INTO `sensitive_word_data` VALUES ('社民党');
INSERT INTO `sensitive_word_data` VALUES ('射精');
INSERT INTO `sensitive_word_data` VALUES ('涉台政局');
INSERT INTO `sensitive_word_data` VALUES ('身份证生成');
INSERT INTO `sensitive_word_data` VALUES ('身份证生成器');
INSERT INTO `sensitive_word_data` VALUES ('身份證生成');
INSERT INTO `sensitive_word_data` VALUES ('神的教会');
INSERT INTO `sensitive_word_data` VALUES ('神佛');
INSERT INTO `sensitive_word_data` VALUES ('神通加持法');
INSERT INTO `sensitive_word_data` VALUES ('神州忏悔录');
INSERT INTO `sensitive_word_data` VALUES ('神州电影制片厂');
INSERT INTO `sensitive_word_data` VALUES ('神洲电影');
INSERT INTO `sensitive_word_data` VALUES ('沈昌人体科技');
INSERT INTO `sensitive_word_data` VALUES ('沈默殺手');
INSERT INTO `sensitive_word_data` VALUES ('沈彤');
INSERT INTO `sensitive_word_data` VALUES ('审查参赛者');
INSERT INTO `sensitive_word_data` VALUES ('渗透中共');
INSERT INTO `sensitive_word_data` VALUES ('升达');
INSERT INTO `sensitive_word_data` VALUES ('升达毕业证');
INSERT INTO `sensitive_word_data` VALUES ('升達');
INSERT INTO `sensitive_word_data` VALUES ('升天');
INSERT INTO `sensitive_word_data` VALUES ('生成身份证');
INSERT INTO `sensitive_word_data` VALUES ('生化武器');
INSERT INTO `sensitive_word_data` VALUES ('生命树的分叉');
INSERT INTO `sensitive_word_data` VALUES ('生者和死者');
INSERT INTO `sensitive_word_data` VALUES ('省委大门集合');
INSERT INTO `sensitive_word_data` VALUES ('省政府大门集合');
INSERT INTO `sensitive_word_data` VALUES ('圣灵重建教会');
INSERT INTO `sensitive_word_data` VALUES ('盛光祖');
INSERT INTO `sensitive_word_data` VALUES ('盛华仁');
INSERT INTO `sensitive_word_data` VALUES ('盛雪');
INSERT INTO `sensitive_word_data` VALUES ('失密');
INSERT INTO `sensitive_word_data` VALUES ('失身药');
INSERT INTO `sensitive_word_data` VALUES ('失忆药');
INSERT INTO `sensitive_word_data` VALUES ('失意药');
INSERT INTO `sensitive_word_data` VALUES ('失意藥');
INSERT INTO `sensitive_word_data` VALUES ('师父法身');
INSERT INTO `sensitive_word_data` VALUES ('师涛');
INSERT INTO `sensitive_word_data` VALUES ('十七大权力争霸战');
INSERT INTO `sensitive_word_data` VALUES ('十七人事安排');
INSERT INTO `sensitive_word_data` VALUES ('十七位老部长');
INSERT INTO `sensitive_word_data` VALUES ('石戈');
INSERT INTO `sensitive_word_data` VALUES ('石云生');
INSERT INTO `sensitive_word_data` VALUES ('石宗源');
INSERT INTO `sensitive_word_data` VALUES ('淫水');
INSERT INTO `sensitive_word_data` VALUES ('淫图');
INSERT INTO `sensitive_word_data` VALUES ('淫穴');
INSERT INTO `sensitive_word_data` VALUES ('尹庆民');
INSERT INTO `sensitive_word_data` VALUES ('隐私1图片');
INSERT INTO `sensitive_word_data` VALUES ('隱私1圖片');
INSERT INTO `sensitive_word_data` VALUES ('隱形鏡');
INSERT INTO `sensitive_word_data` VALUES ('隱形噴劑');
INSERT INTO `sensitive_word_data` VALUES ('印尼抢劫华人资产');
INSERT INTO `sensitive_word_data` VALUES ('印尼伊斯兰祈祷团');
INSERT INTO `sensitive_word_data` VALUES ('英语枪手');
INSERT INTO `sensitive_word_data` VALUES ('英语四六级答案');
INSERT INTO `sensitive_word_data` VALUES ('英語槍手');
INSERT INTO `sensitive_word_data` VALUES ('优化官员');
INSERT INTO `sensitive_word_data` VALUES ('优昙婆罗花');
INSERT INTO `sensitive_word_data` VALUES ('由喜贵');
INSERT INTO `sensitive_word_data` VALUES ('游行');
INSERT INTO `sensitive_word_data` VALUES ('游行示威');
INSERT INTO `sensitive_word_data` VALUES ('右派');
INSERT INTO `sensitive_word_data` VALUES ('幼齿');
INSERT INTO `sensitive_word_data` VALUES ('幼交');
INSERT INTO `sensitive_word_data` VALUES ('幼女');
INSERT INTO `sensitive_word_data` VALUES ('于大海');
INSERT INTO `sensitive_word_data` VALUES ('于浩成');
INSERT INTO `sensitive_word_data` VALUES ('于幼军');
INSERT INTO `sensitive_word_data` VALUES ('余英时');
INSERT INTO `sensitive_word_data` VALUES ('於淼林');
INSERT INTO `sensitive_word_data` VALUES ('於幼軍');
INSERT INTO `sensitive_word_data` VALUES ('舆论');
INSERT INTO `sensitive_word_data` VALUES ('舆论反制');
INSERT INTO `sensitive_word_data` VALUES ('宇明网');
INSERT INTO `sensitive_word_data` VALUES ('宇宙真理');
INSERT INTO `sensitive_word_data` VALUES ('宇宙主佛');
INSERT INTO `sensitive_word_data` VALUES ('宇宙最高法理');
INSERT INTO `sensitive_word_data` VALUES ('玉蒲团');
INSERT INTO `sensitive_word_data` VALUES ('玉蒲團');
INSERT INTO `sensitive_word_data` VALUES ('预测领导人');
INSERT INTO `sensitive_word_data` VALUES ('域名备案');
INSERT INTO `sensitive_word_data` VALUES ('欲望');
INSERT INTO `sensitive_word_data` VALUES ('欲望格斗');
INSERT INTO `sensitive_word_data` VALUES ('欲望格鬥');
INSERT INTO `sensitive_word_data` VALUES ('欲望之血');
INSERT INTO `sensitive_word_data` VALUES ('元极功');
INSERT INTO `sensitive_word_data` VALUES ('原谅朱镕基');
INSERT INTO `sensitive_word_data` VALUES ('原子弹');
INSERT INTO `sensitive_word_data` VALUES ('原子弹的DIY制作');
INSERT INTO `sensitive_word_data` VALUES ('原子弹的简易制法');
INSERT INTO `sensitive_word_data` VALUES ('原子弹的理论');
INSERT INTO `sensitive_word_data` VALUES ('原子弹制作方法');
INSERT INTO `sensitive_word_data` VALUES ('原子弹专家');
INSERT INTO `sensitive_word_data` VALUES ('袁纯清');
INSERT INTO `sensitive_word_data` VALUES ('袁伟民');
INSERT INTO `sensitive_word_data` VALUES ('援交');
INSERT INTO `sensitive_word_data` VALUES ('远程偷拍');
INSERT INTO `sensitive_word_data` VALUES ('远志明');
INSERT INTO `sensitive_word_data` VALUES ('遠程偷拍');
INSERT INTO `sensitive_word_data` VALUES ('约会强暴药');
INSERT INTO `sensitive_word_data` VALUES ('岳武');
INSERT INTO `sensitive_word_data` VALUES ('杂种');
INSERT INTO `sensitive_word_data` VALUES ('在家里做原子弹的方法');
INSERT INTO `sensitive_word_data` VALUES ('在十月');
INSERT INTO `sensitive_word_data` VALUES ('昝爱宗');
INSERT INTO `sensitive_word_data` VALUES ('脏独');
INSERT INTO `sensitive_word_data` VALUES ('造爱');
INSERT INTO `sensitive_word_data` VALUES ('造反');
INSERT INTO `sensitive_word_data` VALUES ('则民');
INSERT INTO `sensitive_word_data` VALUES ('择民');
INSERT INTO `sensitive_word_data` VALUES ('泽东');
INSERT INTO `sensitive_word_data` VALUES ('泽民');
INSERT INTO `sensitive_word_data` VALUES ('泽民轮功');
INSERT INTO `sensitive_word_data` VALUES ('贼民');
INSERT INTO `sensitive_word_data` VALUES ('曾道人');
INSERT INTO `sensitive_word_data` VALUES ('曾培炎');
INSERT INTO `sensitive_word_data` VALUES ('曾庆红');
INSERT INTO `sensitive_word_data` VALUES ('曾慶紅');
INSERT INTO `sensitive_word_data` VALUES ('炸弹怎么做');
INSERT INTO `sensitive_word_data` VALUES ('炸药');
INSERT INTO `sensitive_word_data` VALUES ('炸药配方');
INSERT INTO `sensitive_word_data` VALUES ('炸药制作方法');
INSERT INTO `sensitive_word_data` VALUES ('战斗条令');
INSERT INTO `sensitive_word_data` VALUES ('战役学纲××××');
INSERT INTO `sensitive_word_data` VALUES ('张伯笠');
INSERT INTO `sensitive_word_data` VALUES ('张钢');
INSERT INTO `sensitive_word_data` VALUES ('张宏堡');
INSERT INTO `sensitive_word_data` VALUES ('张健');
INSERT INTO `sensitive_word_data` VALUES ('张林');
INSERT INTO `sensitive_word_data` VALUES ('张丕林');
INSERT INTO `sensitive_word_data` VALUES ('张万年');
INSERT INTO `sensitive_word_data` VALUES ('张伟国');
INSERT INTO `sensitive_word_data` VALUES ('张五常');
INSERT INTO `sensitive_word_data` VALUES ('张小平');
INSERT INTO `sensitive_word_data` VALUES ('张昭富');
INSERT INTO `sensitive_word_data` VALUES ('张志清');
INSERT INTO `sensitive_word_data` VALUES ('張丕林');
INSERT INTO `sensitive_word_data` VALUES ('張五常');
INSERT INTO `sensitive_word_data` VALUES ('張小平');
INSERT INTO `sensitive_word_data` VALUES ('找工总行');
INSERT INTO `sensitive_word_data` VALUES ('找建总行');
INSERT INTO `sensitive_word_data` VALUES ('找农总行');
INSERT INTO `sensitive_word_data` VALUES ('找政府评理');
INSERT INTO `sensitive_word_data` VALUES ('赵海青');
INSERT INTO `sensitive_word_data` VALUES ('赵南');
INSERT INTO `sensitive_word_data` VALUES ('赵品潞');
INSERT INTO `sensitive_word_data` VALUES ('赵铁锤');
INSERT INTO `sensitive_word_data` VALUES ('赵晓微');
INSERT INTO `sensitive_word_data` VALUES ('赵紫阳');
INSERT INTO `sensitive_word_data` VALUES ('赵紫阳最后的机会');
INSERT INTO `sensitive_word_data` VALUES ('哲民');
INSERT INTO `sensitive_word_data` VALUES ('针孔');
INSERT INTO `sensitive_word_data` VALUES ('针孔摄像');
INSERT INTO `sensitive_word_data` VALUES ('针孔摄像机');
INSERT INTO `sensitive_word_data` VALUES ('侦探设备');
INSERT INTO `sensitive_word_data` VALUES ('真n善n忍');
INSERT INTO `sensitive_word_data` VALUES ('真善忍');
INSERT INTO `sensitive_word_data` VALUES ('真善忍');
INSERT INTO `sensitive_word_data` VALUES ('真空度测试仪');
INSERT INTO `sensitive_word_data` VALUES ('真名三退');
INSERT INTO `sensitive_word_data` VALUES ('真善美');
INSERT INTO `sensitive_word_data` VALUES ('真善忍');
INSERT INTO `sensitive_word_data` VALUES ('真善忍?');
INSERT INTO `sensitive_word_data` VALUES ('針孔攝像');
INSERT INTO `sensitive_word_data` VALUES ('偵探設備');
INSERT INTO `sensitive_word_data` VALUES ('镇压');
INSERT INTO `sensitive_word_data` VALUES ('镇压学生');
INSERT INTO `sensitive_word_data` VALUES ('争鸣论坛');
INSERT INTO `sensitive_word_data` VALUES ('争鸣杂志');
INSERT INTO `sensitive_word_data` VALUES ('征途sf');
INSERT INTO `sensitive_word_data` VALUES ('征途私服');
INSERT INTO `sensitive_word_data` VALUES ('拯救紫坪铺');
INSERT INTO `sensitive_word_data` VALUES ('整肃官场');
INSERT INTO `sensitive_word_data` VALUES ('整形美容');
INSERT INTO `sensitive_word_data` VALUES ('正法');
INSERT INTO `sensitive_word_data` VALUES ('正法时期');
INSERT INTO `sensitive_word_data` VALUES ('正见网');
INSERT INTO `sensitive_word_data` VALUES ('正见周刊');
INSERT INTO `sensitive_word_data` VALUES ('正念正行');
INSERT INTO `sensitive_word_data` VALUES ('正派民运');
INSERT INTO `sensitive_word_data` VALUES ('正邪大决战');
INSERT INTO `sensitive_word_data` VALUES ('正义党论坛');
INSERT INTO `sensitive_word_data` VALUES ('证件办理');
INSERT INTO `sensitive_word_data` VALUES ('郑义');
INSERT INTO `sensitive_word_data` VALUES ('政变');
INSERT INTO `sensitive_word_data` VALUES ('政府软弱');
INSERT INTO `sensitive_word_data` VALUES ('政府无能');
INSERT INTO `sensitive_word_data` VALUES ('政治');
INSERT INTO `sensitive_word_data` VALUES ('政治恶棍');
INSERT INTO `sensitive_word_data` VALUES ('政治反对派');
INSERT INTO `sensitive_word_data` VALUES ('政治犯');
INSERT INTO `sensitive_word_data` VALUES ('政治风波');
INSERT INTO `sensitive_word_data` VALUES ('政治小丑');
INSERT INTO `sensitive_word_data` VALUES ('政治侦察学×××××');
INSERT INTO `sensitive_word_data` VALUES ('支持台湾');
INSERT INTO `sensitive_word_data` VALUES ('支联会');
INSERT INTO `sensitive_word_data` VALUES ('支那');
INSERT INTO `sensitive_word_data` VALUES ('脂溢性皮炎');
INSERT INTO `sensitive_word_data` VALUES ('职业托福枪手');
INSERT INTO `sensitive_word_data` VALUES ('指点江山论坛');
INSERT INTO `sensitive_word_data` VALUES ('制作原子弹');
INSERT INTO `sensitive_word_data` VALUES ('制作原子弹-新闻');
INSERT INTO `sensitive_word_data` VALUES ('制作炸弹首先要制作炸药');
INSERT INTO `sensitive_word_data` VALUES ('致胡书记的公开信');
INSERT INTO `sensitive_word_data` VALUES ('中俄边界新约');
INSERT INTO `sensitive_word_data` VALUES ('中俄密约');
INSERT INTO `sensitive_word_data` VALUES ('中功');
INSERT INTO `sensitive_word_data` VALUES ('中共');
INSERT INTO `sensitive_word_data` VALUES ('中共暴政');
INSERT INTO `sensitive_word_data` VALUES ('中共当局');
INSERT INTO `sensitive_word_data` VALUES ('中共党魁');
INSERT INTO `sensitive_word_data` VALUES ('中共第六代');
INSERT INTO `sensitive_word_data` VALUES ('中共独裁');
INSERT INTO `sensitive_word_data` VALUES ('中共独枭');
INSERT INTO `sensitive_word_data` VALUES ('中共恶霸');
INSERT INTO `sensitive_word_data` VALUES ('中共监狱');
INSERT INTO `sensitive_word_data` VALUES ('中共警察');
INSERT INTO `sensitive_word_data` VALUES ('中共内斗');
INSERT INTO `sensitive_word_data` VALUES ('中共迫害');
INSERT INTO `sensitive_word_data` VALUES ('中共十七大幕前戏');
INSERT INTO `sensitive_word_data` VALUES ('中共太子');
INSERT INTO `sensitive_word_data` VALUES ('中共统治');
INSERT INTO `sensitive_word_data` VALUES ('中共亡');
INSERT INTO `sensitive_word_data` VALUES ('中共王朝');
INSERT INTO `sensitive_word_data` VALUES ('中共伪政权');
INSERT INTO `sensitive_word_data` VALUES ('中共心中最大的恐惧');
INSERT INTO `sensitive_word_data` VALUES ('中共政权');
INSERT INTO `sensitive_word_data` VALUES ('中共政坛腐败内幕');
INSERT INTO `sensitive_word_data` VALUES ('中共政治流氓');
INSERT INTO `sensitive_word_data` VALUES ('中共政治新星');
INSERT INTO `sensitive_word_data` VALUES ('中共中央材料');
INSERT INTO `sensitive_word_data` VALUES ('中共中央大换血');
INSERT INTO `sensitive_word_data` VALUES ('中共中央黑幕');
INSERT INTO `sensitive_word_data` VALUES ('中共中央文件');
INSERT INTO `sensitive_word_data` VALUES ('中共中央资料');
INSERT INTO `sensitive_word_data` VALUES ('中共专制');
INSERT INTO `sensitive_word_data` VALUES ('中共走狗');
INSERT INTO `sensitive_word_data` VALUES ('中国报禁');
INSERT INTO `sensitive_word_data` VALUES ('中国泛蓝联盟');
INSERT INTO `sensitive_word_data` VALUES ('中国复兴论坛');
INSERT INTO `sensitive_word_data` VALUES ('中国改革年代政治斗争');
INSERT INTO `sensitive_word_data` VALUES ('中国高层权力斗争');
INSERT INTO `sensitive_word_data` VALUES ('中国高层人事变动解读');
INSERT INTO `sensitive_word_data` VALUES ('中国革命党');
INSERT INTO `sensitive_word_data` VALUES ('中国共产党亡');
INSERT INTO `sensitive_word_data` VALUES ('中国孤儿院');
INSERT INTO `sensitive_word_data` VALUES ('中国国家领导人子女任职名单');
INSERT INTO `sensitive_word_data` VALUES ('中国海外腐败兵团');
INSERT INTO `sensitive_word_data` VALUES ('中国六四真相');
INSERT INTO `sensitive_word_data` VALUES ('中国民主党联合总部');
INSERT INTO `sensitive_word_data` VALUES ('中国社会的艾滋病');
INSERT INTO `sensitive_word_data` VALUES ('中国社会进步党');
INSERT INTO `sensitive_word_data` VALUES ('中国社会论坛');
INSERT INTO `sensitive_word_data` VALUES ('中国问题论坛');
INSERT INTO `sensitive_word_data` VALUES ('中国在统一问题上的投降主义');
INSERT INTO `sensitive_word_data` VALUES ('中国真实内容');
INSERT INTO `sensitive_word_data` VALUES ('中国政坛“明日之星”');
INSERT INTO `sensitive_word_data` VALUES ('中国政坛“清华帮”盛极而衰');
INSERT INTO `sensitive_word_data` VALUES ('中国政坛新星');
INSERT INTO `sensitive_word_data` VALUES ('中国政坛新星中的四大天王');
INSERT INTO `sensitive_word_data` VALUES ('中国政治新星');
INSERT INTO `sensitive_word_data` VALUES ('中国之春');
INSERT INTO `sensitive_word_data` VALUES ('中国猪');
INSERT INTO `sensitive_word_data` VALUES ('中國當局');
INSERT INTO `sensitive_word_data` VALUES ('中國國家領導人子女任職名單');
INSERT INTO `sensitive_word_data` VALUES ('中华大地思考');
INSERT INTO `sensitive_word_data` VALUES ('中华大众');
INSERT INTO `sensitive_word_data` VALUES ('中华讲清');
INSERT INTO `sensitive_word_data` VALUES ('中华联邦政府');
INSERT INTO `sensitive_word_data` VALUES ('中华民国');
INSERT INTO `sensitive_word_data` VALUES ('中华人民实话实说');
INSERT INTO `sensitive_word_data` VALUES ('中华人民正邪');
INSERT INTO `sensitive_word_data` VALUES ('中华时事');
INSERT INTO `sensitive_word_data` VALUES ('中华养生益智功');
INSERT INTO `sensitive_word_data` VALUES ('中华真实报道');
INSERT INTO `sensitive_word_data` VALUES ('中南海的权利游戏');
INSERT INTO `sensitive_word_data` VALUES ('中南海斗争');
INSERT INTO `sensitive_word_data` VALUES ('中南海高层权利斗争');
INSERT INTO `sensitive_word_data` VALUES ('中南海惊现东宫小朝廷');
INSERT INTO `sensitive_word_data` VALUES ('中南海秘闻');
INSERT INTO `sensitive_word_data` VALUES ('中南海内斗');
INSERT INTO `sensitive_word_data` VALUES ('中南海内幕');
INSERT INTO `sensitive_word_data` VALUES ('中南海浓云密布');
INSERT INTO `sensitive_word_data` VALUES ('中央文件');
INSERT INTO `sensitive_word_data` VALUES ('中央资料');
INSERT INTO `sensitive_word_data` VALUES ('钟山风雨论坛');
INSERT INTO `sensitive_word_data` VALUES ('重庆服装厂');
INSERT INTO `sensitive_word_data` VALUES ('重庆钢构');
INSERT INTO `sensitive_word_data` VALUES ('重庆婚纱摄影');
INSERT INTO `sensitive_word_data` VALUES ('重庆滤油机');
INSERT INTO `sensitive_word_data` VALUES ('重庆木门厂');
INSERT INTO `sensitive_word_data` VALUES ('重庆网站建设');
INSERT INTO `sensitive_word_data` VALUES ('重庆物业公司');
INSERT INTO `sensitive_word_data` VALUES ('周恩来忏悔');
INSERT INTO `sensitive_word_data` VALUES ('周恩来后悔');
INSERT INTO `sensitive_word_data` VALUES ('周恩来自责');
INSERT INTO `sensitive_word_data` VALUES ('周刊纪事');
INSERT INTO `sensitive_word_data` VALUES ('周容重');
INSERT INTO `sensitive_word_data` VALUES ('周水同志在全省计划工交工作会议上的报告');
INSERT INTO `sensitive_word_data` VALUES ('周天法');
INSERT INTO `sensitive_word_data` VALUES ('朱蒙');
INSERT INTO `sensitive_word_data` VALUES ('朱容基');
INSERT INTO `sensitive_word_data` VALUES ('朱镕基');
INSERT INTO `sensitive_word_data` VALUES ('朱鎔基');
INSERT INTO `sensitive_word_data` VALUES ('朱颜血');
INSERT INTO `sensitive_word_data` VALUES ('猪操');
INSERT INTO `sensitive_word_data` VALUES ('猪哥6合网中国网址联盟');
INSERT INTO `sensitive_word_data` VALUES ('猪聋畸');
INSERT INTO `sensitive_word_data` VALUES ('主席复活');
INSERT INTO `sensitive_word_data` VALUES ('专业代考');
INSERT INTO `sensitive_word_data` VALUES ('专政');
INSERT INTO `sensitive_word_data` VALUES ('专制');
INSERT INTO `sensitive_word_data` VALUES ('專政');
INSERT INTO `sensitive_word_data` VALUES ('專制');
INSERT INTO `sensitive_word_data` VALUES ('转{10}法{10}轮');
INSERT INTO `sensitive_word_data` VALUES ('转法轮');
INSERT INTO `sensitive_word_data` VALUES ('轉法輪');
INSERT INTO `sensitive_word_data` VALUES ('壮阳药');
INSERT INTO `sensitive_word_data` VALUES ('啄木鸟公司');
INSERT INTO `sensitive_word_data` VALUES ('啄木鳥公司');
INSERT INTO `sensitive_word_data` VALUES ('子女任职名单');
INSERT INTO `sensitive_word_data` VALUES ('自殘');
INSERT INTO `sensitive_word_data` VALUES ('自焚');
INSERT INTO `sensitive_word_data` VALUES ('自摸');
INSERT INTO `sensitive_word_data` VALUES ('自拍');
INSERT INTO `sensitive_word_data` VALUES ('自杀');
INSERT INTO `sensitive_word_data` VALUES ('自杀手册');
INSERT INTO `sensitive_word_data` VALUES ('自杀指南');
INSERT INTO `sensitive_word_data` VALUES ('自殺手冊');
INSERT INTO `sensitive_word_data` VALUES ('自殺指南');
INSERT INTO `sensitive_word_data` VALUES ('自慰');
INSERT INTO `sensitive_word_data` VALUES ('自由蒙古在线');
INSERT INTO `sensitive_word_data` VALUES ('自由民主论坛');
INSERT INTO `sensitive_word_data` VALUES ('自由网');
INSERT INTO `sensitive_word_data` VALUES ('自由西藏');
INSERT INTO `sensitive_word_data` VALUES ('自由西藏学生运动');
INSERT INTO `sensitive_word_data` VALUES ('自制手枪');
INSERT INTO `sensitive_word_data` VALUES ('自制手槍');
INSERT INTO `sensitive_word_data` VALUES ('自制原子弹');
INSERT INTO `sensitive_word_data` VALUES ('自主择业军官');
INSERT INTO `sensitive_word_data` VALUES ('宗教压迫');
INSERT INTO `sensitive_word_data` VALUES ('总理接班人');
INSERT INTO `sensitive_word_data` VALUES ('足球博彩');
INSERT INTO `sensitive_word_data` VALUES ('阻止中华人民共和国统');
INSERT INTO `sensitive_word_data` VALUES ('最高绝密新闻');
INSERT INTO `sensitive_word_data` VALUES ('最快报码室');
INSERT INTO `sensitive_word_data` VALUES ('作爱');
INSERT INTO `sensitive_word_data` VALUES ('坐交');
INSERT INTO `sensitive_word_data` VALUES ('坐台');
INSERT INTO `sensitive_word_data` VALUES ('做爱');
INSERT INTO `sensitive_word_data` VALUES ('做爱挑逗');
INSERT INTO `sensitive_word_data` VALUES ('做鸡');
INSERT INTO `sensitive_word_data` VALUES ('做雞');
INSERT INTO `sensitive_word_data` VALUES ('做鸭');
INSERT INTO `sensitive_word_data` VALUES ('做原子弹');
INSERT INTO `sensitive_word_data` VALUES ('假币=>');
INSERT INTO `sensitive_word_data` VALUES ('六合***');
INSERT INTO `sensitive_word_data` VALUES ('刻章***');
INSERT INTO `sensitive_word_data` VALUES ('法轮');
INSERT INTO `sensitive_word_data` VALUES ('法一轮');
INSERT INTO `sensitive_word_data` VALUES ('大纪元');
INSERT INTO `sensitive_word_data` VALUES ('真善忍');
INSERT INTO `sensitive_word_data` VALUES ('阴唇');
INSERT INTO `sensitive_word_data` VALUES ('阴户');
INSERT INTO `sensitive_word_data` VALUES ('强奸');
INSERT INTO `sensitive_word_data` VALUES ('阴茎');
INSERT INTO `sensitive_word_data` VALUES ('阴蒂');
INSERT INTO `sensitive_word_data` VALUES ('乱伦');
INSERT INTO `sensitive_word_data` VALUES ('手淫');
INSERT INTO `sensitive_word_data` VALUES ('做鸡');
INSERT INTO `sensitive_word_data` VALUES ('罗干');
INSERT INTO `sensitive_word_data` VALUES ('死亡笔记');
INSERT INTO `sensitive_word_data` VALUES ('三唑仑');
INSERT INTO `sensitive_word_data` VALUES ('麻醉药');
INSERT INTO `sensitive_word_data` VALUES ('麻醉乙醚');
INSERT INTO `sensitive_word_data` VALUES ('短信群发器');
INSERT INTO `sensitive_word_data` VALUES ('毛一鲜');
INSERT INTO `sensitive_word_data` VALUES ('黎阳平');
INSERT INTO `sensitive_word_data` VALUES ('PK黑社会');
INSERT INTO `sensitive_word_data` VALUES ('恶搞晚会');
INSERT INTO `sensitive_word_data` VALUES ('枪决女犯');
INSERT INTO `sensitive_word_data` VALUES ('投毒杀人');
INSERT INTO `sensitive_word_data` VALUES ('强硬发言');
INSERT INTO `sensitive_word_data` VALUES ('出售假币');
INSERT INTO `sensitive_word_data` VALUES ('监听王');
INSERT INTO `sensitive_word_data` VALUES ('昏药');
INSERT INTO `sensitive_word_data` VALUES ('侦探设备');
INSERT INTO `sensitive_word_data` VALUES ('麻醉钢枪');
INSERT INTO `sensitive_word_data` VALUES ('升达毕业证');
INSERT INTO `sensitive_word_data` VALUES ('手机复制');
INSERT INTO `sensitive_word_data` VALUES ('张小平');
INSERT INTO `sensitive_word_data` VALUES ('佳静安定片');
INSERT INTO `sensitive_word_data` VALUES ('蒙汗药粉');
INSERT INTO `sensitive_word_data` VALUES ('古方迷香');
INSERT INTO `sensitive_word_data` VALUES ('强效失意药');
INSERT INTO `sensitive_word_data` VALUES ('子女任职名单');
INSERT INTO `sensitive_word_data` VALUES ('天鹅之旅');
INSERT INTO `sensitive_word_data` VALUES ('盘古乐队');
INSERT INTO `sensitive_word_data` VALUES ('高校群体事件');
INSERT INTO `sensitive_word_data` VALUES ('大学骚乱');
INSERT INTO `sensitive_word_data` VALUES ('高校骚乱');
INSERT INTO `sensitive_word_data` VALUES ('催情药');
INSERT INTO `sensitive_word_data` VALUES ('拍肩神药');
INSERT INTO `sensitive_word_data` VALUES ('春药');
INSERT INTO `sensitive_word_data` VALUES ('枪决现场');
INSERT INTO `sensitive_word_data` VALUES ('出售手枪');
INSERT INTO `sensitive_word_data` VALUES ('麻醉枪');
INSERT INTO `sensitive_word_data` VALUES ('办理文凭');
INSERT INTO `sensitive_word_data` VALUES ('疆独');
INSERT INTO `sensitive_word_data` VALUES ('藏独');
INSERT INTO `sensitive_word_data` VALUES ('高干子弟');
INSERT INTO `sensitive_word_data` VALUES ('高干子女');
INSERT INTO `sensitive_word_data` VALUES ('枪支弹药');
INSERT INTO `sensitive_word_data` VALUES ('血腥图片');
INSERT INTO `sensitive_word_data` VALUES ('反政府');
INSERT INTO `sensitive_word_data` VALUES ('禁书');
INSERT INTO `sensitive_word_data` VALUES ('无界浏览器');
INSERT INTO `sensitive_word_data` VALUES ('特码');
INSERT INTO `sensitive_word_data` VALUES ('成人片');
INSERT INTO `sensitive_word_data` VALUES ('成人电影');
INSERT INTO `sensitive_word_data` VALUES ('三级片');
INSERT INTO `sensitive_word_data` VALUES ('黄海暗杀');
INSERT INTO `sensitive_word_data` VALUES ('政治风波');
INSERT INTO `sensitive_word_data` VALUES ('陈良宇');
INSERT INTO `sensitive_word_data` VALUES ('反民主');
INSERT INTO `sensitive_word_data` VALUES ('政府软弱');
INSERT INTO `sensitive_word_data` VALUES ('政府无能');
INSERT INTO `sensitive_word_data` VALUES ('共狗');
INSERT INTO `sensitive_word_data` VALUES ('回民暴动');
INSERT INTO `sensitive_word_data` VALUES ('手机复制卡');
INSERT INTO `sensitive_word_data` VALUES ('手机魔卡');
INSERT INTO `sensitive_word_data` VALUES ('暴力拆迁');
INSERT INTO `sensitive_word_data` VALUES ('轮暴致死');
INSERT INTO `sensitive_word_data` VALUES ('平安夜自杀');
INSERT INTO `sensitive_word_data` VALUES ('轮奸虐杀');
INSERT INTO `sensitive_word_data` VALUES ('暴力镇压');
INSERT INTO `sensitive_word_data` VALUES ('陈水扁');
INSERT INTO `sensitive_word_data` VALUES ('转法轮');
INSERT INTO `sensitive_word_data` VALUES ('达赖');
INSERT INTO `sensitive_word_data` VALUES ('天安门事件');
INSERT INTO `sensitive_word_data` VALUES ('自由亚州');
INSERT INTO `sensitive_word_data` VALUES ('历史上的真实故事');
INSERT INTO `sensitive_word_data` VALUES ('性免费电影');
INSERT INTO `sensitive_word_data` VALUES ('成人贴图');
INSERT INTO `sensitive_word_data` VALUES ('激情电影');
INSERT INTO `sensitive_word_data` VALUES ('色情小说');
INSERT INTO `sensitive_word_data` VALUES ('黄网导航');
INSERT INTO `sensitive_word_data` VALUES ('暴动');
INSERT INTO `sensitive_word_data` VALUES ('九评共产党');
INSERT INTO `sensitive_word_data` VALUES ('性虐待');
INSERT INTO `sensitive_word_data` VALUES ('赵紫阳');
INSERT INTO `sensitive_word_data` VALUES ('点对点裸聊');
INSERT INTO `sensitive_word_data` VALUES ('裸聊合法');
INSERT INTO `sensitive_word_data` VALUES ('松花江污染');
INSERT INTO `sensitive_word_data` VALUES ('汕尾事件');
INSERT INTO `sensitive_word_data` VALUES ('胡新宇');
INSERT INTO `sensitive_word_data` VALUES ('公务员工资');
INSERT INTO `sensitive_word_data` VALUES ('反中');
INSERT INTO `sensitive_word_data` VALUES ('支持台湾');
INSERT INTO `sensitive_word_data` VALUES ('仁寿警方');
INSERT INTO `sensitive_word_data` VALUES ('杀人事件');
INSERT INTO `sensitive_word_data` VALUES ('金伯帆');
INSERT INTO `sensitive_word_data` VALUES ('马加爵');
INSERT INTO `sensitive_word_data` VALUES ('学生暴动');
INSERT INTO `sensitive_word_data` VALUES ('镇压学生');
INSERT INTO `sensitive_word_data` VALUES ('色空寺');
INSERT INTO `sensitive_word_data` VALUES ('死刑过程');
INSERT INTO `sensitive_word_data` VALUES ('时代互联');
INSERT INTO `sensitive_word_data` VALUES ('时代论坛');
INSERT INTO `sensitive_word_data` VALUES ('时期打了几次我再次哦唯');
INSERT INTO `sensitive_word_data` VALUES ('实际神');
INSERT INTO `sensitive_word_data` VALUES ('世界基督教统一神灵协会');
INSERT INTO `sensitive_word_data` VALUES ('世界经济导报');
INSERT INTO `sensitive_word_data` VALUES ('世界十大独裁者');
INSERT INTO `sensitive_word_data` VALUES ('世界以利亚福音宣教会');
INSERT INTO `sensitive_word_data` VALUES ('世界之门');
INSERT INTO `sensitive_word_data` VALUES ('示威');
INSERT INTO `sensitive_word_data` VALUES ('事实独立');
INSERT INTO `sensitive_word_data` VALUES ('是束告项瓷');
INSERT INTO `sensitive_word_data` VALUES ('害电突网解');
INSERT INTO `sensitive_word_data` VALUES ('是中国社会的爱滋病');
INSERT INTO `sensitive_word_data` VALUES ('手qiang');
INSERT INTO `sensitive_word_data` VALUES ('手把手教你作原子弹');
INSERT INTO `sensitive_word_data` VALUES ('手把手教你做原子弹');
INSERT INTO `sensitive_word_data` VALUES ('手机复制');
INSERT INTO `sensitive_word_data` VALUES ('手机复制卡');
INSERT INTO `sensitive_word_data` VALUES ('手机跟踪');
INSERT INTO `sensitive_word_data` VALUES ('手机监听');
INSERT INTO `sensitive_word_data` VALUES ('手机监听器');
INSERT INTO `sensitive_word_data` VALUES ('手机铃声');
INSERT INTO `sensitive_word_data` VALUES ('手机铃声下载');
INSERT INTO `sensitive_word_data` VALUES ('手机魔卡');
INSERT INTO `sensitive_word_data` VALUES ('手机窃听');
INSERT INTO `sensitive_word_data` VALUES ('手机窃听器');
INSERT INTO `sensitive_word_data` VALUES ('手机窃听设备');
INSERT INTO `sensitive_word_data` VALUES ('手机游戏');
INSERT INTO `sensitive_word_data` VALUES ('手机追踪器');
INSERT INTO `sensitive_word_data` VALUES ('手機復制');
INSERT INTO `sensitive_word_data` VALUES ('手機跟蹤');
INSERT INTO `sensitive_word_data` VALUES ('手機監聽器');
INSERT INTO `sensitive_word_data` VALUES ('手拍肩');
INSERT INTO `sensitive_word_data` VALUES ('手枪');
INSERT INTO `sensitive_word_data` VALUES ('手枪电话如何做');
INSERT INTO `sensitive_word_data` VALUES ('手淫');
INSERT INTO `sensitive_word_data` VALUES ('兽交');
INSERT INTO `sensitive_word_data` VALUES ('售麻醉');
INSERT INTO `sensitive_word_data` VALUES ('熟女之惑');
INSERT INTO `sensitive_word_data` VALUES ('树亲民形象不如推动政改');
INSERT INTO `sensitive_word_data` VALUES ('双规');
INSERT INTO `sensitive_word_data` VALUES ('双十节');
INSERT INTO `sensitive_word_data` VALUES ('双腿间的禁地');
INSERT INTO `sensitive_word_data` VALUES ('爽死');
INSERT INTO `sensitive_word_data` VALUES ('谁是胡的接班人');
INSERT INTO `sensitive_word_data` VALUES ('谁是新中国');
INSERT INTO `sensitive_word_data` VALUES ('谁为腐败晚餐买单');
INSERT INTO `sensitive_word_data` VALUES ('氵去');
INSERT INTO `sensitive_word_data` VALUES ('氵去车仑工力');
INSERT INTO `sensitive_word_data` VALUES ('水扁');
INSERT INTO `sensitive_word_data` VALUES ('税力');
INSERT INTO `sensitive_word_data` VALUES ('税务总局致歉');
INSERT INTO `sensitive_word_data` VALUES ('睡着的武神');
INSERT INTO `sensitive_word_data` VALUES ('丝袜');
INSERT INTO `sensitive_word_data` VALUES ('丝袜写真');
INSERT INTO `sensitive_word_data` VALUES ('司法警官');
INSERT INTO `sensitive_word_data` VALUES ('司马晋');
INSERT INTO `sensitive_word_data` VALUES ('司马璐');
INSERT INTO `sensitive_word_data` VALUES ('司马璐回忆录');
INSERT INTO `sensitive_word_data` VALUES ('司马义铁力瓦尔地');
INSERT INTO `sensitive_word_data` VALUES ('司徒华');
INSERT INTO `sensitive_word_data` VALUES ('私彩');
INSERT INTO `sensitive_word_data` VALUES ('私处');
INSERT INTO `sensitive_word_data` VALUES ('私服');
INSERT INTO `sensitive_word_data` VALUES ('斯鑫良');
INSERT INTO `sensitive_word_data` VALUES ('絲襪寫真');
INSERT INTO `sensitive_word_data` VALUES ('死亡笔记');
INSERT INTO `sensitive_word_data` VALUES ('死亡筆記');
INSERT INTO `sensitive_word_data` VALUES ('死亡日志');
INSERT INTO `sensitive_word_data` VALUES ('死亡日誌');
INSERT INTO `sensitive_word_data` VALUES ('死刑过程');
INSERT INTO `sensitive_word_data` VALUES ('四川大地震异象揭密');
INSERT INTO `sensitive_word_data` VALUES ('四川独');
INSERT INTO `sensitive_word_data` VALUES ('四川独立');
INSERT INTO `sensitive_word_data` VALUES ('四川朱昱');
INSERT INTO `sensitive_word_data` VALUES ('四二五事件');
INSERT INTO `sensitive_word_data` VALUES ('四海龙女');
INSERT INTO `sensitive_word_data` VALUES ('四级答案');
INSERT INTO `sensitive_word_data` VALUES ('四六级答案');
INSERT INTO `sensitive_word_data` VALUES ('四人帮');
INSERT INTO `sensitive_word_data` VALUES ('四人帮材料');
INSERT INTO `sensitive_word_data` VALUES ('四小码');
INSERT INTO `sensitive_word_data` VALUES ('四種當');
INSERT INTO `sensitive_word_data` VALUES ('松花江污染');
INSERT INTO `sensitive_word_data` VALUES ('宋平');
INSERT INTO `sensitive_word_data` VALUES ('宋平顺');
INSERT INTO `sensitive_word_data` VALUES ('宋平順');
INSERT INTO `sensitive_word_data` VALUES ('宋书元');
INSERT INTO `sensitive_word_data` VALUES ('宋祖英');
INSERT INTO `sensitive_word_data` VALUES ('苏丹达');
INSERT INTO `sensitive_word_data` VALUES ('苏家屯集中营');
INSERT INTO `sensitive_word_data` VALUES ('苏军情况汇编');
INSERT INTO `sensitive_word_data` VALUES ('苏绍智');
INSERT INTO `sensitive_word_data` VALUES ('苏晓康');
INSERT INTO `sensitive_word_data` VALUES ('素女');
INSERT INTO `sensitive_word_data` VALUES ('宿命论');
INSERT INTO `sensitive_word_data` VALUES ('塑胶原料的流动性');
INSERT INTO `sensitive_word_data` VALUES ('孙悟空和雅典娜的故事');
INSERT INTO `sensitive_word_data` VALUES ('他妈的=>他*的');
INSERT INTO `sensitive_word_data` VALUES ('他媽的=>他*的');
INSERT INTO `sensitive_word_data` VALUES ('他娘的');
INSERT INTO `sensitive_word_data` VALUES ('它妈的');
INSERT INTO `sensitive_word_data` VALUES ('塔克拉玛干人权联合会');
INSERT INTO `sensitive_word_data` VALUES ('台獨');
INSERT INTO `sensitive_word_data` VALUES ('台独');
INSERT INTO `sensitive_word_data` VALUES ('台海盾牌');
INSERT INTO `sensitive_word_data` VALUES ('台海军刀');
INSERT INTO `sensitive_word_data` VALUES ('台盟');
INSERT INTO `sensitive_word_data` VALUES ('台湾独');
INSERT INTO `sensitive_word_data` VALUES ('台湾独立');
INSERT INTO `sensitive_word_data` VALUES ('台湾共合国');
INSERT INTO `sensitive_word_data` VALUES ('台湾狗');
INSERT INTO `sensitive_word_data` VALUES ('台湾国');
INSERT INTO `sensitive_word_data` VALUES ('台湾建国运动组织');
INSERT INTO `sensitive_word_data` VALUES ('台湾青年独立联盟');
INSERT INTO `sensitive_word_data` VALUES ('台湾应该独立');
INSERT INTO `sensitive_word_data` VALUES ('台湾有权独立');
INSERT INTO `sensitive_word_data` VALUES ('台湾政论区');
INSERT INTO `sensitive_word_data` VALUES ('台湾自由联盟');
INSERT INTO `sensitive_word_data` VALUES ('台湾总统');
INSERT INTO `sensitive_word_data` VALUES ('臺灣獨立');
INSERT INTO `sensitive_word_data` VALUES ('太王四神记');
INSERT INTO `sensitive_word_data` VALUES ('太阳圣殿教');
INSERT INTO `sensitive_word_data` VALUES ('太子党');
INSERT INTO `sensitive_word_data` VALUES ('太子黨');
INSERT INTO `sensitive_word_data` VALUES ('泰州文教局停售通知');
INSERT INTO `sensitive_word_data` VALUES ('覃志刚');
INSERT INTO `sensitive_word_data` VALUES ('谭力');
INSERT INTO `sensitive_word_data` VALUES ('探测定位器');
INSERT INTO `sensitive_word_data` VALUES ('探测狗');
INSERT INTO `sensitive_word_data` VALUES ('探測狗');
INSERT INTO `sensitive_word_data` VALUES ('汤光中');
INSERT INTO `sensitive_word_data` VALUES ('唐柏桥');
INSERT INTO `sensitive_word_data` VALUES ('唐家璇');
INSERT INTO `sensitive_word_data` VALUES ('唐捷');
INSERT INTO `sensitive_word_data` VALUES ('唐人电视台');
INSERT INTO `sensitive_word_data` VALUES ('涛哥');
INSERT INTO `sensitive_word_data` VALUES ('逃亡艳旅');
INSERT INTO `sensitive_word_data` VALUES ('陶驷驹');
INSERT INTO `sensitive_word_data` VALUES ('讨伐中宣部');
INSERT INTO `sensitive_word_data` VALUES ('特别党费');
INSERT INTO `sensitive_word_data` VALUES ('特价国际机票');
INSERT INTO `sensitive_word_data` VALUES ('特码');
INSERT INTO `sensitive_word_data` VALUES ('特碼');
INSERT INTO `sensitive_word_data` VALUES ('特务机构');
INSERT INTO `sensitive_word_data` VALUES ('特务民运');
INSERT INTO `sensitive_word_data` VALUES ('腾文生');
INSERT INTO `sensitive_word_data` VALUES ('滕久明');
INSERT INTO `sensitive_word_data` VALUES ('滕文生');
INSERT INTO `sensitive_word_data` VALUES ('替考托福');
INSERT INTO `sensitive_word_data` VALUES ('天安门');
INSERT INTO `sensitive_word_data` VALUES ('天安门大屠杀');
INSERT INTO `sensitive_word_data` VALUES ('天安门纪念基金会');
INSERT INTO `sensitive_word_data` VALUES ('天安门录影带');
INSERT INTO `sensitive_word_data` VALUES ('天安门事件');
INSERT INTO `sensitive_word_data` VALUES ('天安门屠杀');
INSERT INTO `sensitive_word_data` VALUES ('天安门一代');
INSERT INTO `sensitive_word_data` VALUES ('天安門');
INSERT INTO `sensitive_word_data` VALUES ('天鹅之旅');
INSERT INTO `sensitive_word_data` VALUES ('天鵝之旅');
INSERT INTO `sensitive_word_data` VALUES ('天府广场集会');
INSERT INTO `sensitive_word_data` VALUES ('天父的儿女');
INSERT INTO `sensitive_word_data` VALUES ('天国乐团');
INSERT INTO `sensitive_word_data` VALUES ('天互数据');
INSERT INTO `sensitive_word_data` VALUES ('天津事件');
INSERT INTO `sensitive_word_data` VALUES ('天伦王朝');
INSERT INTO `sensitive_word_data` VALUES ('天灭中');
INSERT INTO `sensitive_word_data` VALUES ('天灭中共');
INSERT INTO `sensitive_word_data` VALUES ('天怒');
INSERT INTO `sensitive_word_data` VALUES ('天权');
INSERT INTO `sensitive_word_data` VALUES ('天要灭');
INSERT INTO `sensitive_word_data` VALUES ('天要灭中');
INSERT INTO `sensitive_word_data` VALUES ('天要亡');
INSERT INTO `sensitive_word_data` VALUES ('天音功');
INSERT INTO `sensitive_word_data` VALUES ('天葬');
INSERT INTO `sensitive_word_data` VALUES ('田凤山');
INSERT INTO `sensitive_word_data` VALUES ('田纪云');
INSERT INTO `sensitive_word_data` VALUES ('舔奶');
INSERT INTO `sensitive_word_data` VALUES ('挺胡');
INSERT INTO `sensitive_word_data` VALUES ('通示达');
INSERT INTO `sensitive_word_data` VALUES ('通信维权');
INSERT INTO `sensitive_word_data` VALUES ('同房');
INSERT INTO `sensitive_word_data` VALUES ('同居社区');
INSERT INTO `sensitive_word_data` VALUES ('同居社區');
INSERT INTO `sensitive_word_data` VALUES ('同样的人权');
INSERT INTO `sensitive_word_data` VALUES ('童屹');
INSERT INTO `sensitive_word_data` VALUES ('统独');
INSERT INTO `sensitive_word_data` VALUES ('统独论坛');
INSERT INTO `sensitive_word_data` VALUES ('统一教');
INSERT INTO `sensitive_word_data` VALUES ('统战');
INSERT INTO `sensitive_word_data` VALUES ('统治术');
INSERT INTO `sensitive_word_data` VALUES ('捅你');
INSERT INTO `sensitive_word_data` VALUES ('捅我');
INSERT INTO `sensitive_word_data` VALUES ('偷窥');
INSERT INTO `sensitive_word_data` VALUES ('偷窥有罪');
INSERT INTO `sensitive_word_data` VALUES ('偷窺有罪');
INSERT INTO `sensitive_word_data` VALUES ('偷拍');
INSERT INTO `sensitive_word_data` VALUES ('偷情');
INSERT INTO `sensitive_word_data` VALUES ('投毒杀人');
INSERT INTO `sensitive_word_data` VALUES ('投毒殺人');
INSERT INTO `sensitive_word_data` VALUES ('透视镜');
INSERT INTO `sensitive_word_data` VALUES ('透视器');
INSERT INTO `sensitive_word_data` VALUES ('视眼镜');
INSERT INTO `sensitive_word_data` VALUES ('透视照片');
INSERT INTO `sensitive_word_data` VALUES ('透視器');
INSERT INTO `sensitive_word_data` VALUES ('透視眼鏡');
INSERT INTO `sensitive_word_data` VALUES ('透視照片');
INSERT INTO `sensitive_word_data` VALUES ('突破技术');
INSERT INTO `sensitive_word_data` VALUES ('突破网封索的软件');
INSERT INTO `sensitive_word_data` VALUES ('突破网络');
INSERT INTO `sensitive_word_data` VALUES ('图说文化大革命');
INSERT INTO `sensitive_word_data` VALUES ('涂运普');
INSERT INTO `sensitive_word_data` VALUES ('屠龙别记');
INSERT INTO `sensitive_word_data` VALUES ('屠杀');
INSERT INTO `sensitive_word_data` VALUES ('土制C4');
INSERT INTO `sensitive_word_data` VALUES ('团派');
INSERT INTO `sensitive_word_data` VALUES ('推翻社会主义制度');
INSERT INTO `sensitive_word_data` VALUES ('退h集会');
INSERT INTO `sensitive_word_data` VALUES ('退出共产');
INSERT INTO `sensitive_word_data` VALUES ('退出共产党');
INSERT INTO `sensitive_word_data` VALUES ('退出中共');
INSERT INTO `sensitive_word_data` VALUES ('退党');
INSERT INTO `sensitive_word_data` VALUES ('退党声明');
INSERT INTO `sensitive_word_data` VALUES ('退改离');
INSERT INTO `sensitive_word_data` VALUES ('退团');
INSERT INTO `sensitive_word_data` VALUES ('退团声明');
INSERT INTO `sensitive_word_data` VALUES ('脫衣舞');
INSERT INTO `sensitive_word_data` VALUES ('脱党');
INSERT INTO `sensitive_word_data` VALUES ('脱光');
INSERT INTO `sensitive_word_data` VALUES ('脱团');
INSERT INTO `sensitive_word_data` VALUES ('脱衣');
INSERT INTO `sensitive_word_data` VALUES ('脱衣舞');
INSERT INTO `sensitive_word_data` VALUES ('瓦解专制');
INSERT INTO `sensitive_word_data` VALUES ('外交论坛');
INSERT INTO `sensitive_word_data` VALUES ('外交与方略');
INSERT INTO `sensitive_word_data` VALUES ('外蒙');
INSERT INTO `sensitive_word_data` VALUES ('外围赌球');
INSERT INTO `sensitive_word_data` VALUES ('外围码');
INSERT INTO `sensitive_word_data` VALUES ('晚年周恩来');
INSERT INTO `sensitive_word_data` VALUES ('万达卫浴');
INSERT INTO `sensitive_word_data` VALUES ('万润南');
INSERT INTO `sensitive_word_data` VALUES ('读者论坛');
INSERT INTO `sensitive_word_data` VALUES ('万晓东');
INSERT INTO `sensitive_word_data` VALUES ('万言书');
INSERT INTO `sensitive_word_data` VALUES ('汪岷');
INSERT INTO `sensitive_word_data` VALUES ('亡党');
INSERT INTO `sensitive_word_data` VALUES ('亡共者胡');
INSERT INTO `sensitive_word_data` VALUES ('亡国');
INSERT INTO `sensitive_word_data` VALUES ('王宝森');
INSERT INTO `sensitive_word_data` VALUES ('王炳章');
INSERT INTO `sensitive_word_data` VALUES ('王策');
INSERT INTO `sensitive_word_data` VALUES ('王超华');
INSERT INTO `sensitive_word_data` VALUES ('王丹');
INSERT INTO `sensitive_word_data` VALUES ('王辅臣');
INSERT INTO `sensitive_word_data` VALUES ('王刚');
INSERT INTO `sensitive_word_data` VALUES ('王涵万');
INSERT INTO `sensitive_word_data` VALUES ('王沪宁');
INSERT INTO `sensitive_word_data` VALUES ('王军涛');
INSERT INTO `sensitive_word_data` VALUES ('王力雄');
INSERT INTO `sensitive_word_data` VALUES ('王瑞林');
INSERT INTO `sensitive_word_data` VALUES ('王润生');
INSERT INTO `sensitive_word_data` VALUES ('王若望');
INSERT INTO `sensitive_word_data` VALUES ('王维林');
INSERT INTO `sensitive_word_data` VALUES ('王希哲');
INSERT INTO `sensitive_word_data` VALUES ('王秀丽');
INSERT INTO `sensitive_word_data` VALUES ('王冶坪');
INSERT INTO `sensitive_word_data` VALUES ('王子淫传');
INSERT INTO `sensitive_word_data` VALUES ('网络代理');
INSERT INTO `sensitive_word_data` VALUES ('网络宣传的真相');
INSERT INTO `sensitive_word_data` VALUES ('网络自由联盟');
INSERT INTO `sensitive_word_data` VALUES ('网上博彩');
INSERT INTO `sensitive_word_data` VALUES ('网上代考');
INSERT INTO `sensitive_word_data` VALUES ('网上淫秽色情游戏');
INSERT INTO `sensitive_word_data` VALUES ('网特');
INSERT INTO `sensitive_word_data` VALUES ('网赚');
INSERT INTO `sensitive_word_data` VALUES ('微型无线隐型耳机');
INSERT INTO `sensitive_word_data` VALUES ('为党不为国');
INSERT INTO `sensitive_word_data` VALUES ('维多利亚包');
INSERT INTO `sensitive_word_data` VALUES ('维权份子');
INSERT INTO `sensitive_word_data` VALUES ('维权网');
INSERT INTO `sensitive_word_data` VALUES ('维吾尔人权');
INSERT INTO `sensitive_word_data` VALUES ('维吾尔信息社');
INSERT INTO `sensitive_word_data` VALUES ('維多利亞包');
INSERT INTO `sensitive_word_data` VALUES ('伪民运');
INSERT INTO `sensitive_word_data` VALUES ('伪水');
INSERT INTO `sensitive_word_data` VALUES ('伪装美女');
INSERT INTO `sensitive_word_data` VALUES ('尾行');
INSERT INTO `sensitive_word_data` VALUES ('偽裝美女');
INSERT INTO `sensitive_word_data` VALUES ('隗福临');
INSERT INTO `sensitive_word_data` VALUES ('卫生计划财务参考资料');
INSERT INTO `sensitive_word_data` VALUES ('卫星安装调试');
INSERT INTO `sensitive_word_data` VALUES ('卫星电视安装');
INSERT INTO `sensitive_word_data` VALUES ('未来的自由中国在民间');
INSERT INTO `sensitive_word_data` VALUES ('尉健行');
INSERT INTO `sensitive_word_data` VALUES ('慰安妇');
INSERT INTO `sensitive_word_data` VALUES ('魏东死亡');
INSERT INTO `sensitive_word_data` VALUES ('魏京生');
INSERT INTO `sensitive_word_data` VALUES ('魏新生');
INSERT INTO `sensitive_word_data` VALUES ('温宝宝');
INSERT INTO `sensitive_word_data` VALUES ('温加饱');
INSERT INTO `sensitive_word_data` VALUES ('温家宝');
INSERT INTO `sensitive_word_data` VALUES ('温家保');
INSERT INTO `sensitive_word_data` VALUES ('温家堡');
INSERT INTO `sensitive_word_data` VALUES ('温假饱');
INSERT INTO `sensitive_word_data` VALUES ('温下台');
INSERT INTO `sensitive_word_data` VALUES ('温休曾退');
INSERT INTO `sensitive_word_data` VALUES ('温爷爷');
INSERT INTO `sensitive_word_data` VALUES ('温元凯');
INSERT INTO `sensitive_word_data` VALUES ('温总理');
INSERT INTO `sensitive_word_data` VALUES ('溫家寶');
INSERT INTO `sensitive_word_data` VALUES ('瘟家');
INSERT INTO `sensitive_word_data` VALUES ('瘟家鸨');
INSERT INTO `sensitive_word_data` VALUES ('瘟假鸨');
INSERT INTO `sensitive_word_data` VALUES ('文革');
INSERT INTO `sensitive_word_data` VALUES ('文革××');
INSERT INTO `sensitive_word_data` VALUES ('文革释放');
INSERT INTO `sensitive_word_data` VALUES ('文化大革命');
INSERT INTO `sensitive_word_data` VALUES ('文件秘密');
INSERT INTO `sensitive_word_data` VALUES ('文字狱');
INSERT INTO `sensitive_word_data` VALUES ('文字獄');
INSERT INTO `sensitive_word_data` VALUES ('翁虹');
INSERT INTO `sensitive_word_data` VALUES ('瓮安');
INSERT INTO `sensitive_word_data` VALUES ('瓮安暴乱');
INSERT INTO `sensitive_word_data` VALUES ('瓮安骚乱');
INSERT INTO `sensitive_word_data` VALUES ('窝囊的中国');
INSERT INTO `sensitive_word_data` VALUES ('窝囊中国');
INSERT INTO `sensitive_word_data` VALUES ('我XX你');
INSERT INTO `sensitive_word_data` VALUES ('我操');
INSERT INTO `sensitive_word_data` VALUES ('我操你');
INSERT INTO `sensitive_word_data` VALUES ('我草');
INSERT INTO `sensitive_word_data` VALUES ('我的后讨伐中宣部时代');
INSERT INTO `sensitive_word_data` VALUES ('我的鳥羽兄弟');
INSERT INTO `sensitive_word_data` VALUES ('我的性启蒙');
INSERT INTO `sensitive_word_data` VALUES ('我靠=>我*');
INSERT INTO `sensitive_word_data` VALUES ('我们自杀吧');
INSERT INTO `sensitive_word_data` VALUES ('我日');
INSERT INTO `sensitive_word_data` VALUES ('我是回民');
INSERT INTO `sensitive_word_data` VALUES ('我虽死去');
INSERT INTO `sensitive_word_data` VALUES ('我所犯严重的方向线路错误的检查');
INSERT INTO `sensitive_word_data` VALUES ('我在黑暗中');
INSERT INTO `sensitive_word_data` VALUES ('乌兰木伦');
INSERT INTO `sensitive_word_data` VALUES ('乌云其木格');
INSERT INTO `sensitive_word_data` VALUES ('邬书林');
INSERT INTO `sensitive_word_data` VALUES ('巫毒娃娃');
INSERT INTO `sensitive_word_data` VALUES ('无帮国');
INSERT INTO `sensitive_word_data` VALUES ('无官正');
INSERT INTO `sensitive_word_data` VALUES ('无界');
INSERT INTO `sensitive_word_data` VALUES ('无界{5}');
INSERT INTO `sensitive_word_data` VALUES ('无界浏览');
INSERT INTO `sensitive_word_data` VALUES ('无界浏览器');
INSERT INTO `sensitive_word_data` VALUES ('无码电影');
INSERT INTO `sensitive_word_data` VALUES ('无码片');
INSERT INTO `sensitive_word_data` VALUES ('无码影');
INSERT INTO `sensitive_word_data` VALUES ('无毛');
INSERT INTO `sensitive_word_data` VALUES ('无网界');
INSERT INTO `sensitive_word_data` VALUES ('无网界浏览');
INSERT INTO `sensitive_word_data` VALUES ('无线跟踪设备');
INSERT INTO `sensitive_word_data` VALUES ('无线隐形耳机');
INSERT INTO `sensitive_word_data` VALUES ('吳邦國');
INSERT INTO `sensitive_word_data` VALUES ('吳瓊花問');
INSERT INTO `sensitive_word_data` VALUES ('吴百益');
INSERT INTO `sensitive_word_data` VALUES ('吴邦国');
INSERT INTO `sensitive_word_data` VALUES ('吴方城');
INSERT INTO `sensitive_word_data` VALUES ('吴官正');
INSERT INTO `sensitive_word_data` VALUES ('吴弘达');
INSERT INTO `sensitive_word_data` VALUES ('吴宏达');
INSERT INTO `sensitive_word_data` VALUES ('吴基传');
INSERT INTO `sensitive_word_data` VALUES ('吴琼花问');
INSERT INTO `sensitive_word_data` VALUES ('吴仁华');
INSERT INTO `sensitive_word_data` VALUES ('吴学灿');
INSERT INTO `sensitive_word_data` VALUES ('吴学璨');
INSERT INTO `sensitive_word_data` VALUES ('吴野渡');
INSERT INTO `sensitive_word_data` VALUES ('吾尔开西');
INSERT INTO `sensitive_word_data` VALUES ('吾尔开希');
INSERT INTO `sensitive_word_data` VALUES ('吾尔凯西');
INSERT INTO `sensitive_word_data` VALUES ('梧桐文化');
INSERT INTO `sensitive_word_data` VALUES ('無界');
INSERT INTO `sensitive_word_data` VALUES ('無網界');
INSERT INTO `sensitive_word_data` VALUES ('無修正');
INSERT INTO `sensitive_word_data` VALUES ('五不');
INSERT INTO `sensitive_word_data` VALUES ('五出三进');
INSERT INTO `sensitive_word_data` VALUES ('五大常委');
INSERT INTO `sensitive_word_data` VALUES ('五个部长一个省长');
INSERT INTO `sensitive_word_data` VALUES ('五毛党');
INSERT INTO `sensitive_word_data` VALUES ('五奶小青');
INSERT INTO `sensitive_word_data` VALUES ('五套功法');
INSERT INTO `sensitive_word_data` VALUES ('五星宏辉');
INSERT INTO `sensitive_word_data` VALUES ('伍凡');
INSERT INTO `sensitive_word_data` VALUES ('伍绍祖');
INSERT INTO `sensitive_word_data` VALUES ('武汉办証');
INSERT INTO `sensitive_word_data` VALUES ('武警');
INSERT INTO `sensitive_word_data` VALUES ('武腾兰');
INSERT INTO `sensitive_word_data` VALUES ('武藤兰');
INSERT INTO `sensitive_word_data` VALUES ('武藤蘭');
INSERT INTO `sensitive_word_data` VALUES ('侮辱老师');
INSERT INTO `sensitive_word_data` VALUES ('夕樹舞子');
INSERT INTO `sensitive_word_data` VALUES ('西藏');
INSERT INTO `sensitive_word_data` VALUES ('西藏獨立');
INSERT INTO `sensitive_word_data` VALUES ('西藏独');
INSERT INTO `sensitive_word_data` VALUES ('西藏独立');
INSERT INTO `sensitive_word_data` VALUES ('西藏国家民主党');
INSERT INTO `sensitive_word_data` VALUES ('西藏基金会');
INSERT INTO `sensitive_word_data` VALUES ('西藏论坛');
INSERT INTO `sensitive_word_data` VALUES ('西藏青年大会');
INSERT INTO `sensitive_word_data` VALUES ('西藏人民大起义运动');
INSERT INTO `sensitive_word_data` VALUES ('西藏人权与民主');
INSERT INTO `sensitive_word_data` VALUES ('西藏骚乱');
INSERT INTO `sensitive_word_data` VALUES ('西藏天葬');
INSERT INTO `sensitive_word_data` VALUES ('西藏网');
INSERT INTO `sensitive_word_data` VALUES ('西藏信息中心');
INSERT INTO `sensitive_word_data` VALUES ('西藏正义');
INSERT INTO `sensitive_word_data` VALUES ('西藏之声');
INSERT INTO `sensitive_word_data` VALUES ('西藏之页');
INSERT INTO `sensitive_word_data` VALUES ('西藏作家组织');
INSERT INTO `sensitive_word_data` VALUES ('西单民主墙');
INSERT INTO `sensitive_word_data` VALUES ('西山会议');
INSERT INTO `sensitive_word_data` VALUES ('吸储');
INSERT INTO `sensitive_word_data` VALUES ('吸儲');
INSERT INTO `sensitive_word_data` VALUES ('吸血莱恩');
INSERT INTO `sensitive_word_data` VALUES ('吸血萊恩');
INSERT INTO `sensitive_word_data` VALUES ('希望之声国际广播电台');
INSERT INTO `sensitive_word_data` VALUES ('奚国华');
INSERT INTO `sensitive_word_data` VALUES ('洗脑');
INSERT INTO `sensitive_word_data` VALUES ('洗瑙');
INSERT INTO `sensitive_word_data` VALUES ('下法轮');
INSERT INTO `sensitive_word_data` VALUES ('下届总理人选');
INSERT INTO `sensitive_word_data` VALUES ('下体');
INSERT INTO `sensitive_word_data` VALUES ('先天健康法');
INSERT INTO `sensitive_word_data` VALUES ('现代人的五大悲哀');
INSERT INTO `sensitive_word_data` VALUES ('现代艳帝');
INSERT INTO `sensitive_word_data` VALUES ('香港GHB水');
INSERT INTO `sensitive_word_data` VALUES ('香港GHB水/色/粉');
INSERT INTO `sensitive_word_data` VALUES ('香港彩宝必中六肖');
INSERT INTO `sensitive_word_data` VALUES ('香港大游行');
INSERT INTO `sensitive_word_data` VALUES ('香港黄大仙');
INSERT INTO `sensitive_word_data` VALUES ('香港惠泽社群');
INSERT INTO `sensitive_word_data` VALUES ('香港六和采');
INSERT INTO `sensitive_word_data` VALUES ('香港马会');
INSERT INTO `sensitive_word_data` VALUES ('香港明报');
INSERT INTO `sensitive_word_data` VALUES ('香港支联会');
INSERT INTO `sensitive_word_data` VALUES ('香港总部');
INSERT INTO `sensitive_word_data` VALUES ('香港总彩');
INSERT INTO `sensitive_word_data` VALUES ('香功');
INSERT INTO `sensitive_word_data` VALUES ('香烟型麻醉药');
INSERT INTO `sensitive_word_data` VALUES ('向巴平措');
INSERT INTO `sensitive_word_data` VALUES ('项怀诚');
INSERT INTO `sensitive_word_data` VALUES ('项小吉');
INSERT INTO `sensitive_word_data` VALUES ('项宗西');
INSERT INTO `sensitive_word_data` VALUES ('消业论');
INSERT INTO `sensitive_word_data` VALUES ('消业之说');
INSERT INTO `sensitive_word_data` VALUES ('硝化甘油');
INSERT INTO `sensitive_word_data` VALUES ('硝化棉');
INSERT INTO `sensitive_word_data` VALUES ('硝酸甘油');
INSERT INTO `sensitive_word_data` VALUES ('小参考');
INSERT INTO `sensitive_word_data` VALUES ('小电影');
INSERT INTO `sensitive_word_data` VALUES ('小活佛');
INSERT INTO `sensitive_word_data` VALUES ('小来子');
INSERT INTO `sensitive_word_data` VALUES ('小泉恶搞');
INSERT INTO `sensitive_word_data` VALUES ('小穴');
INSERT INTO `sensitive_word_data` VALUES ('小穴六四');
INSERT INTO `sensitive_word_data` VALUES ('小泽玛莉亚');
INSERT INTO `sensitive_word_data` VALUES ('小泽圆');
INSERT INTO `sensitive_word_data` VALUES ('小澤園');
INSERT INTO `sensitive_word_data` VALUES ('肖强');
INSERT INTO `sensitive_word_data` VALUES ('校花沉沦记');
INSERT INTO `sensitive_word_data` VALUES ('校级复员军官');
INSERT INTO `sensitive_word_data` VALUES ('校园静坐');
INSERT INTO `sensitive_word_data` VALUES ('邪党');
INSERT INTO `sensitive_word_data` VALUES ('邪恶');
INSERT INTO `sensitive_word_data` VALUES ('邪恶?');
INSERT INTO `sensitive_word_data` VALUES ('邪恶党徒');
INSERT INTO `sensitive_word_data` VALUES ('邪恶共产党');
INSERT INTO `sensitive_word_data` VALUES ('邪恶江泽民');
INSERT INTO `sensitive_word_data` VALUES ('邪教');
INSERT INTO `sensitive_word_data` VALUES ('谢长廷');
INSERT INTO `sensitive_word_data` VALUES ('谢选骏');
INSERT INTO `sensitive_word_data` VALUES ('谢中之');
INSERT INTO `sensitive_word_data` VALUES ('心藏大恶');
INSERT INTO `sensitive_word_data` VALUES ('辛灏年');
INSERT INTO `sensitive_word_data` VALUES ('新八荣八耻');
INSERT INTO `sensitive_word_data` VALUES ('新党');
INSERT INTO `sensitive_word_data` VALUES ('新观察论坛');
INSERT INTO `sensitive_word_data` VALUES ('新国歌');
INSERT INTO `sensitive_word_data` VALUES ('新华举报');
INSERT INTO `sensitive_word_data` VALUES ('新华内情');
INSERT INTO `sensitive_word_data` VALUES ('新华通论坛');
INSERT INTO `sensitive_word_data` VALUES ('新疆暴乱');
INSERT INTO `sensitive_word_data` VALUES ('新疆獨立');
INSERT INTO `sensitive_word_data` VALUES ('新疆独');
INSERT INTO `sensitive_word_data` VALUES ('新疆独立');
INSERT INTO `sensitive_word_data` VALUES ('新疆反恐纪实');
INSERT INTO `sensitive_word_data` VALUES ('新生网');
INSERT INTO `sensitive_word_data` VALUES ('新式军服');
INSERT INTO `sensitive_word_data` VALUES ('新唐人');
INSERT INTO `sensitive_word_data` VALUES ('新唐人电视台');
INSERT INTO `sensitive_word_data` VALUES ('新唐人晚会');
INSERT INTO `sensitive_word_data` VALUES ('新搪人电视台');
INSERT INTO `sensitive_word_data` VALUES ('新闻封锁');
INSERT INTO `sensitive_word_data` VALUES ('新闻自由导报');
INSERT INTO `sensitive_word_data` VALUES ('新闻总署粗暴');
INSERT INTO `sensitive_word_data` VALUES ('新语丝');
INSERT INTO `sensitive_word_data` VALUES ('新约教会');
INSERT INTO `sensitive_word_data` VALUES ('新中华战记');
INSERT INTO `sensitive_word_data` VALUES ('新诸侯');
INSERT INTO `sensitive_word_data` VALUES ('信用危机');
INSERT INTO `sensitive_word_data` VALUES ('兴华论谈');
INSERT INTO `sensitive_word_data` VALUES ('星火报');
INSERT INTO `sensitive_word_data` VALUES ('星崎未來');
INSERT INTO `sensitive_word_data` VALUES ('星亚网络影视公司');
INSERT INTO `sensitive_word_data` VALUES ('刑警');
INSERT INTO `sensitive_word_data` VALUES ('行房');
INSERT INTO `sensitive_word_data` VALUES ('邢铮');
INSERT INTO `sensitive_word_data` VALUES ('性爱');
INSERT INTO `sensitive_word_data` VALUES ('性爱电影');
INSERT INTO `sensitive_word_data` VALUES ('性爱教育');
INSERT INTO `sensitive_word_data` VALUES ('性爱文字');
INSERT INTO `sensitive_word_data` VALUES ('性愛');
INSERT INTO `sensitive_word_data` VALUES ('性愛電影');
INSERT INTO `sensitive_word_data` VALUES ('性福人生');
INSERT INTO `sensitive_word_data` VALUES ('性感');
INSERT INTO `sensitive_word_data` VALUES ('性感克');
INSERT INTO `sensitive_word_data` VALUES ('性感撲克');
INSERT INTO `sensitive_word_data` VALUES ('性感沙滩');
INSERT INTO `sensitive_word_data` VALUES ('性感沙灘');
INSERT INTO `sensitive_word_data` VALUES ('性高潮');
INSERT INTO `sensitive_word_data` VALUES ('性交');
INSERT INTO `sensitive_word_data` VALUES ('性交大赛');
INSERT INTO `sensitive_word_data` VALUES ('性教官');
INSERT INTO `sensitive_word_data` VALUES ('性免费电影');
INSERT INTO `sensitive_word_data` VALUES ('性虐待');
INSERT INTO `sensitive_word_data` VALUES ('性网站');
INSERT INTO `sensitive_word_data` VALUES ('性網站');
INSERT INTO `sensitive_word_data` VALUES ('性息');
INSERT INTO `sensitive_word_data` VALUES ('性游戏');
INSERT INTO `sensitive_word_data` VALUES ('胸部');
INSERT INTO `sensitive_word_data` VALUES ('胸罩');
INSERT INTO `sensitive_word_data` VALUES ('熊炎');
INSERT INTO `sensitive_word_data` VALUES ('熊焱');
INSERT INTO `sensitive_word_data` VALUES ('修炼之歌');
INSERT INTO `sensitive_word_data` VALUES ('徐邦秦');
INSERT INTO `sensitive_word_data` VALUES ('徐才厚');
INSERT INTO `sensitive_word_data` VALUES ('徐匡迪');
INSERT INTO `sensitive_word_data` VALUES ('徐水良');
INSERT INTO `sensitive_word_data` VALUES ('许家屯');
INSERT INTO `sensitive_word_data` VALUES ('玄`机');
INSERT INTO `sensitive_word_data` VALUES ('薛伟');
INSERT INTO `sensitive_word_data` VALUES ('学潮');
INSERT INTO `sensitive_word_data` VALUES ('学潮事件');
INSERT INTO `sensitive_word_data` VALUES ('学联');
INSERT INTO `sensitive_word_data` VALUES ('学生爱国运动正名');
INSERT INTO `sensitive_word_data` VALUES ('学生暴动');
INSERT INTO `sensitive_word_data` VALUES ('学生静坐');
INSERT INTO `sensitive_word_data` VALUES ('学生妹');
INSERT INTO `sensitive_word_data` VALUES ('学生信仰');
INSERT INTO `sensitive_word_data` VALUES ('学生运动');
INSERT INTO `sensitive_word_data` VALUES ('学院+暴动');
INSERT INTO `sensitive_word_data` VALUES ('暴动');
INSERT INTO `sensitive_word_data` VALUES ('学运');
INSERT INTO `sensitive_word_data` VALUES ('学自联');
INSERT INTO `sensitive_word_data` VALUES ('雪山狮子');
INSERT INTO `sensitive_word_data` VALUES ('血溅人民天堂');
INSERT INTO `sensitive_word_data` VALUES ('血卡');
INSERT INTO `sensitive_word_data` VALUES ('血色京机');
INSERT INTO `sensitive_word_data` VALUES ('血色京畿');
INSERT INTO `sensitive_word_data` VALUES ('血色黎明');
INSERT INTO `sensitive_word_data` VALUES ('血腥图片');
INSERT INTO `sensitive_word_data` VALUES ('血腥圖片');
INSERT INTO `sensitive_word_data` VALUES ('寻找林昭的灵魂');
INSERT INTO `sensitive_word_data` VALUES ('循环轮回论');
INSERT INTO `sensitive_word_data` VALUES ('鸦片液');
INSERT INTO `sensitive_word_data` VALUES ('鸦片渣');
INSERT INTO `sensitive_word_data` VALUES ('亚热');
INSERT INTO `sensitive_word_data` VALUES ('亚太正悟网');
INSERT INTO `sensitive_word_data` VALUES ('亚洲床上色情');
INSERT INTO `sensitive_word_data` VALUES ('亚洲美女总');
INSERT INTO `sensitive_word_data` VALUES ('亚洲自由电台');
INSERT INTO `sensitive_word_data` VALUES ('亚洲自由之声');
INSERT INTO `sensitive_word_data` VALUES ('严家其');
INSERT INTO `sensitive_word_data` VALUES ('严家祺');
INSERT INTO `sensitive_word_data` VALUES ('言禁');
INSERT INTO `sensitive_word_data` VALUES ('盐雾试验箱');
INSERT INTO `sensitive_word_data` VALUES ('阎明复');
INSERT INTO `sensitive_word_data` VALUES ('颜射');
INSERT INTO `sensitive_word_data` VALUES ('艳舞');
INSERT INTO `sensitive_word_data` VALUES ('燕玲论坛');
INSERT INTO `sensitive_word_data` VALUES ('燕南评论');
INSERT INTO `sensitive_word_data` VALUES ('央视内部晚会');
INSERT INTO `sensitive_word_data` VALUES ('阳具');
INSERT INTO `sensitive_word_data` VALUES ('阳痿');
INSERT INTO `sensitive_word_data` VALUES ('杨怀安');
INSERT INTO `sensitive_word_data` VALUES ('杨建利');
INSERT INTO `sensitive_word_data` VALUES ('杨思敏');
INSERT INTO `sensitive_word_data` VALUES ('杨巍');
INSERT INTO `sensitive_word_data` VALUES ('杨月清');
INSERT INTO `sensitive_word_data` VALUES ('杨周');
INSERT INTO `sensitive_word_data` VALUES ('楊思敏');
INSERT INTO `sensitive_word_data` VALUES ('养殖户的求救书');
INSERT INTO `sensitive_word_data` VALUES ('姚月谦');
INSERT INTO `sensitive_word_data` VALUES ('搖頭丸');
INSERT INTO `sensitive_word_data` VALUES ('摇头丸');
INSERT INTO `sensitive_word_data` VALUES ('摇头玩');
INSERT INTO `sensitive_word_data` VALUES ('耶稣基督血水圣灵全备福音布道团');
INSERT INTO `sensitive_word_data` VALUES ('业力回报');
INSERT INTO `sensitive_word_data` VALUES ('业力轮');
INSERT INTO `sensitive_word_data` VALUES ('叶子楣');
INSERT INTO `sensitive_word_data` VALUES ('夜半加税');
INSERT INTO `sensitive_word_data` VALUES ('夜话紫禁城');
INSERT INTO `sensitive_word_data` VALUES ('夜激情');
INSERT INTO `sensitive_word_data` VALUES ('夜勤病栋');
INSERT INTO `sensitive_word_data` VALUES ('夜总会');
INSERT INTO `sensitive_word_data` VALUES ('夜總會');
INSERT INTO `sensitive_word_data` VALUES ('液压马达');
INSERT INTO `sensitive_word_data` VALUES ('一般炸药制作');
INSERT INTO `sensitive_word_data` VALUES ('一本道');
INSERT INTO `sensitive_word_data` VALUES ('一党');
INSERT INTO `sensitive_word_data` VALUES ('一党独裁');
INSERT INTO `sensitive_word_data` VALUES ('一党专政');
INSERT INTO `sensitive_word_data` VALUES ('一党专制');
INSERT INTO `sensitive_word_data` VALUES ('一黨');
INSERT INTO `sensitive_word_data` VALUES ('一个人的奥林匹克');
INSERT INTO `sensitive_word_data` VALUES ('一级黄电视');
INSERT INTO `sensitive_word_data` VALUES ('一军两策');
INSERT INTO `sensitive_word_data` VALUES ('一码中特');
INSERT INTO `sensitive_word_data` VALUES ('一四我周容重题工无亮');
INSERT INTO `sensitive_word_data` VALUES ('一通功');
INSERT INTO `sensitive_word_data` VALUES ('一夜情');
INSERT INTO `sensitive_word_data` VALUES ('一夜情迷奸');
INSERT INTO `sensitive_word_data` VALUES ('一中一台');
INSERT INTO `sensitive_word_data` VALUES ('一字解特码');
INSERT INTO `sensitive_word_data` VALUES ('伊波拉瘟疫');
INSERT INTO `sensitive_word_data` VALUES ('伊東');
INSERT INTO `sensitive_word_data` VALUES ('伊斯兰运动');
INSERT INTO `sensitive_word_data` VALUES ('伊扎布特');
INSERT INTO `sensitive_word_data` VALUES ('宜昌当阳县级市长');
INSERT INTO `sensitive_word_data` VALUES ('遗忘药');
INSERT INTO `sensitive_word_data` VALUES ('乙醚');
INSERT INTO `sensitive_word_data` VALUES ('以身护法');
INSERT INTO `sensitive_word_data` VALUES ('以血护法');
INSERT INTO `sensitive_word_data` VALUES ('义解');
INSERT INTO `sensitive_word_data` VALUES ('亦凡');
INSERT INTO `sensitive_word_data` VALUES ('异氟烷');
INSERT INTO `sensitive_word_data` VALUES ('异见人士');
INSERT INTO `sensitive_word_data` VALUES ('异议人士');
INSERT INTO `sensitive_word_data` VALUES ('抑制剂');
INSERT INTO `sensitive_word_data` VALUES ('易丹轩');
INSERT INTO `sensitive_word_data` VALUES ('易趣在线购物');
INSERT INTO `sensitive_word_data` VALUES ('易志熹');
INSERT INTO `sensitive_word_data` VALUES ('阴唇');
INSERT INTO `sensitive_word_data` VALUES ('阴道');
INSERT INTO `sensitive_word_data` VALUES ('阴道被捅');
INSERT INTO `sensitive_word_data` VALUES ('阴蒂');
INSERT INTO `sensitive_word_data` VALUES ('阴户');
INSERT INTO `sensitive_word_data` VALUES ('阴茎');
INSERT INTO `sensitive_word_data` VALUES ('阴胫');
INSERT INTO `sensitive_word_data` VALUES ('阴毛');
INSERT INTO `sensitive_word_data` VALUES ('阴毛小穴');
INSERT INTO `sensitive_word_data` VALUES ('阴门');
INSERT INTO `sensitive_word_data` VALUES ('阴囊');
INSERT INTO `sensitive_word_data` VALUES ('阴水');
INSERT INTO `sensitive_word_data` VALUES ('陰蒂');
INSERT INTO `sensitive_word_data` VALUES ('淫虫');
INSERT INTO `sensitive_word_data` VALUES ('淫蟲');
INSERT INTO `sensitive_word_data` VALUES ('淫荡');
INSERT INTO `sensitive_word_data` VALUES ('淫蕩');
INSERT INTO `sensitive_word_data` VALUES ('淫奸');
INSERT INTO `sensitive_word_data` VALUES ('淫间道');
INSERT INTO `sensitive_word_data` VALUES ('淫浪');
INSERT INTO `sensitive_word_data` VALUES ('淫乱');
INSERT INTO `sensitive_word_data` VALUES ('淫乱电影');
INSERT INTO `sensitive_word_data` VALUES ('淫亂');
INSERT INTO `sensitive_word_data` VALUES ('淫亂電影');
INSERT INTO `sensitive_word_data` VALUES ('淫妹');
INSERT INTO `sensitive_word_data` VALUES ('淫靡');
INSERT INTO `sensitive_word_data` VALUES ('淫魔');
INSERT INTO `sensitive_word_data` VALUES ('淫魔舞会');
INSERT INTO `sensitive_word_data` VALUES ('淫母');
INSERT INTO `sensitive_word_data` VALUES ('淫女');
INSERT INTO `sensitive_word_data` VALUES ('淫情女老师');
INSERT INTO `sensitive_word_data` VALUES ('淫兽学园');
INSERT INTO `sensitive_word_data` VALUES ('淫书');
INSERT INTO `sensitive_word_data` VALUES ('淫書');
INSERT INTO `sensitive_word_data` VALUES ('淫术炼金士');
INSERT INTO `sensitive_word_data` VALUES ('拉登');
INSERT INTO `sensitive_word_data` VALUES ('美女视频');
INSERT INTO `sensitive_word_data` VALUES ('成人交友');
INSERT INTO `sensitive_word_data` VALUES ('日本小泉');
INSERT INTO `sensitive_word_data` VALUES ('小泉恶搞');
INSERT INTO `sensitive_word_data` VALUES ('火药制作');
INSERT INTO `sensitive_word_data` VALUES ('第十六次代表');
INSERT INTO `sensitive_word_data` VALUES ('幼女');
INSERT INTO `sensitive_word_data` VALUES ('蒋彦永');
INSERT INTO `sensitive_word_data` VALUES ('多党执政');
INSERT INTO `sensitive_word_data` VALUES ('玉蒲团');
INSERT INTO `sensitive_word_data` VALUES ('车牌反光');
INSERT INTO `sensitive_word_data` VALUES ('喷剂');
INSERT INTO `sensitive_word_data` VALUES ('周容重');
INSERT INTO `sensitive_word_data` VALUES ('毛主席复活');
INSERT INTO `sensitive_word_data` VALUES ('针孔摄像机');
INSERT INTO `sensitive_word_data` VALUES ('绕过封锁');
INSERT INTO `sensitive_word_data` VALUES ('践踏中国女性');
INSERT INTO `sensitive_word_data` VALUES ('短信猫');
INSERT INTO `sensitive_word_data` VALUES ('共产党的末日');
INSERT INTO `sensitive_word_data` VALUES ('罢工');
INSERT INTO `sensitive_word_data` VALUES ('人体艺术');
INSERT INTO `sensitive_word_data` VALUES ('无界浏览');
INSERT INTO `sensitive_word_data` VALUES ('情色光碟');
INSERT INTO `sensitive_word_data` VALUES ('情色呻吟');
INSERT INTO `sensitive_word_data` VALUES ('手追踪器');
INSERT INTO `sensitive_word_data` VALUES ('波拉瘟疫');
INSERT INTO `sensitive_word_data` VALUES ('传真群发');
INSERT INTO `sensitive_word_data` VALUES ('革命无罪');
INSERT INTO `sensitive_word_data` VALUES ('二奶大奖');
INSERT INTO `sensitive_word_data` VALUES ('军火');
INSERT INTO `sensitive_word_data` VALUES ('代开发票');
INSERT INTO `sensitive_word_data` VALUES ('干扰器');
INSERT INTO `sensitive_word_data` VALUES ('美女做愛');
INSERT INTO `sensitive_word_data` VALUES ('快操我');
INSERT INTO `sensitive_word_data` VALUES ('裙底走光');
INSERT INTO `sensitive_word_data` VALUES ('乖乖药');
INSERT INTO `sensitive_word_data` VALUES ('一级黄电视');
INSERT INTO `sensitive_word_data` VALUES ('无码片');
INSERT INTO `sensitive_word_data` VALUES ('女优片');
INSERT INTO `sensitive_word_data` VALUES ('亚洲美女总');
INSERT INTO `sensitive_word_data` VALUES ('太王四神记');
INSERT INTO `sensitive_word_data` VALUES ('仿真枪');
INSERT INTO `sensitive_word_data` VALUES ('针孔');
INSERT INTO `sensitive_word_data` VALUES ('代办证件');
INSERT INTO `sensitive_word_data` VALUES ('江泽民瑞士');
INSERT INTO `sensitive_word_data` VALUES ('电车之狼');
INSERT INTO `sensitive_word_data` VALUES ('暴力冲突');
INSERT INTO `sensitive_word_data` VALUES ('手机监听');
INSERT INTO `sensitive_word_data` VALUES ('主席复活');
INSERT INTO `sensitive_word_data` VALUES ('步枪');
INSERT INTO `sensitive_word_data` VALUES ('麻醉枪');
INSERT INTO `sensitive_word_data` VALUES ('猎枪');
INSERT INTO `sensitive_word_data` VALUES ('成人小说');
INSERT INTO `sensitive_word_data` VALUES ('裸体');
INSERT INTO `sensitive_word_data` VALUES ('激情图片');
INSERT INTO `sensitive_word_data` VALUES ('迷魂药激情');
INSERT INTO `sensitive_word_data` VALUES ('裙底走光');
INSERT INTO `sensitive_word_data` VALUES ('女优');
INSERT INTO `sensitive_word_data` VALUES ('亚洲床上色情');
INSERT INTO `sensitive_word_data` VALUES ('阴毛小穴');
INSERT INTO `sensitive_word_data` VALUES ('无码影');
INSERT INTO `sensitive_word_data` VALUES ('淫妹');
INSERT INTO `sensitive_word_data` VALUES ('流水穴');
INSERT INTO `sensitive_word_data` VALUES ('激情文学');
INSERT INTO `sensitive_word_data` VALUES ('达赖喇嘛');
INSERT INTO `sensitive_word_data` VALUES ('达赖');
INSERT INTO `sensitive_word_data` VALUES ('达赖领奖');
INSERT INTO `sensitive_word_data` VALUES ('朱蒙');
INSERT INTO `sensitive_word_data` VALUES ('三坊七巷火灾');
INSERT INTO `sensitive_word_data` VALUES ('四级答案');
INSERT INTO `sensitive_word_data` VALUES ('六级答案');
INSERT INTO `sensitive_word_data` VALUES ('买答案');
INSERT INTO `sensitive_word_data` VALUES ('枪手');
INSERT INTO `sensitive_word_data` VALUES ('四六级答案');
INSERT INTO `sensitive_word_data` VALUES ('等级答案');
INSERT INTO `sensitive_word_data` VALUES ('养殖户的求救书');
INSERT INTO `sensitive_word_data` VALUES ('迷魂');
INSERT INTO `sensitive_word_data` VALUES ('迷情药');
INSERT INTO `sensitive_word_data` VALUES ('操');
INSERT INTO `sensitive_word_data` VALUES ('假币');
INSERT INTO `sensitive_word_data` VALUES ('成人网站');
INSERT INTO `sensitive_word_data` VALUES ('暗杀');
INSERT INTO `sensitive_word_data` VALUES ('精子');
INSERT INTO `sensitive_word_data` VALUES ('辱骂');
INSERT INTO `sensitive_word_data` VALUES ('监狱');
INSERT INTO `sensitive_word_data` VALUES ('群体斗殴');
INSERT INTO `sensitive_word_data` VALUES ('群殴');
INSERT INTO `sensitive_word_data` VALUES ('去死');
INSERT INTO `sensitive_word_data` VALUES ('奶奶的');
INSERT INTO `sensitive_word_data` VALUES ('客服');
INSERT INTO `sensitive_word_data` VALUES ('系统');
INSERT INTO `sensitive_word_data` VALUES ('官方');
INSERT INTO `sensitive_word_data` VALUES ('爹');
INSERT INTO `sensitive_word_data` VALUES ('娘');
INSERT INTO `sensitive_word_data` VALUES ('爸');
INSERT INTO `sensitive_word_data` VALUES ('妈');
INSERT INTO `sensitive_word_data` VALUES ('父');
INSERT INTO `sensitive_word_data` VALUES ('母');
INSERT INTO `sensitive_word_data` VALUES ('法轮大法');
INSERT INTO `sensitive_word_data` VALUES ('法轮大法');
INSERT INTO `sensitive_word_data` VALUES ('人弹');
INSERT INTO `sensitive_word_data` VALUES ('人弹');
INSERT INTO `sensitive_word_data` VALUES ('司法部');
INSERT INTO `sensitive_word_data` VALUES ('\\');
INSERT INTO `sensitive_word_data` VALUES ('\\\'');
INSERT INTO `sensitive_word_data` VALUES ('\\\\');
INSERT INTO `sensitive_word_data` VALUES ('♩');

-- ----------------------------
-- Table structure for sex_data
-- ----------------------------
DROP TABLE IF EXISTS `sex_data`;
CREATE TABLE `sex_data`  (
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '性别',
  PRIMARY KEY (`sex`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '性别配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sex_data
-- ----------------------------
INSERT INTO `sex_data` VALUES (0, '无限制');
INSERT INTO `sex_data` VALUES (1, '男性');
INSERT INTO `sex_data` VALUES (2, '女性');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID(select)',
  `shop_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商店ID',
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '数量',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标识(flag)',
  PRIMARY KEY (`role_id`, `shop_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色商店表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, 1, 1, '');

-- ----------------------------
-- Table structure for shop_data
-- ----------------------------
DROP TABLE IF EXISTS `shop_data`;
CREATE TABLE `shop_data`  (
  `shop_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商店ID',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '物品配置ID',
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商店类型',
  `pay_assets` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '货币类型',
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '价格',
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '数量',
  `bind` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否绑定',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级限制',
  `limit` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '购买上限',
  `vip_level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'vip等级限购',
  `vip_limit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'vip等级购买上限',
  `description` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`shop_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商店配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shop_data
-- ----------------------------
INSERT INTO `shop_data` VALUES (1, 1, 1, 'gold', 10, 1, 0, 0, 0, 0, '', '');

-- ----------------------------
-- Table structure for shop_log
-- ----------------------------
DROP TABLE IF EXISTS `shop_log`;
CREATE TABLE `shop_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `shop_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商店ID',
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '购买数量',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `daily_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '零点时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商店日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `skill_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '技能ID',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `flag` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标识(flag)',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色技能表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for skill_data
-- ----------------------------
DROP TABLE IF EXISTS `skill_data`;
CREATE TABLE `skill_data`  (
  `skill_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '技能ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组ID',
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型(主动/被动)',
  `name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '学习条件',
  `effect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '作用效果',
  `cd` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '冷却时间',
  `radius` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '作用半径',
  `distance` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '作用距离',
  `number` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '作用对象数',
  `buffs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '作用Buff',
  `before_effects` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '效果前',
  `hit_effects` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '击中效果',
  `after_effects` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '效果后',
  `description` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`skill_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '技能配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill_data
-- ----------------------------
INSERT INTO `skill_data` VALUES (1, 1, 0, '普攻技能', '', '[1]', 1, 100, 100, 1, '', '', '', '', '对目标造成180%的伤害');
INSERT INTO `skill_data` VALUES (2, 2, 0, '群攻技能', '', '[2]', 1, 100, 100, 3, '', '', '', '', '对3个目标造成150%的伤害');
INSERT INTO `skill_data` VALUES (3, 3, 0, '增益', '', '[8]', 10, 100, 100, 1, '', '', '', '', '每秒扣血，总血量万分之50');

-- ----------------------------
-- Table structure for text_data
-- ----------------------------
DROP TABLE IF EXISTS `text_data`;
CREATE TABLE `text_data`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数键',
  `value` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数值',
  `description` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '游戏文本配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of text_data
-- ----------------------------
INSERT INTO `text_data` VALUES ('1', '不用买，随便爆', '成龙台词');
INSERT INTO `text_data` VALUES ('2', '是兄弟就来砍我', '古天乐台词');
INSERT INTO `text_data` VALUES ('3', '卸载掉手机那个假传奇', '甄子丹台词');
INSERT INTO `text_data` VALUES ('add_item_content', '你的益达', '背包满内容');
INSERT INTO `text_data` VALUES ('add_item_title', '背包满', '背包满标题');
INSERT INTO `text_data` VALUES ('test', '😂', '😒');

-- ----------------------------
-- Table structure for vip
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip`  (
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色id',
  `level` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'vip等级',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'vip经验',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '过期时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色vip表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vip
-- ----------------------------
INSERT INTO `vip` VALUES (1, 1, 0, 0);

-- ----------------------------
-- Table structure for vip_data
-- ----------------------------
DROP TABLE IF EXISTS `vip_data`;
CREATE TABLE `vip_data`  (
  `vip` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'VIP等级',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '经验',
  PRIMARY KEY (`vip`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'vip配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vip_data
-- ----------------------------
INSERT INTO `vip_data` VALUES (1, 6);
INSERT INTO `vip_data` VALUES (2, 30);
INSERT INTO `vip_data` VALUES (3, 100);
INSERT INTO `vip_data` VALUES (4, 150);
INSERT INTO `vip_data` VALUES (5, 300);
INSERT INTO `vip_data` VALUES (6, 600);
INSERT INTO `vip_data` VALUES (7, 1000);
INSERT INTO `vip_data` VALUES (8, 2000);
INSERT INTO `vip_data` VALUES (9, 3000);
INSERT INTO `vip_data` VALUES (10, 5000);
INSERT INTO `vip_data` VALUES (11, 10000);
INSERT INTO `vip_data` VALUES (12, 30000);
INSERT INTO `vip_data` VALUES (13, 60000);
INSERT INTO `vip_data` VALUES (14, 100000);
INSERT INTO `vip_data` VALUES (15, 200000);

-- ----------------------------
-- Table structure for word_map_data
-- ----------------------------
DROP TABLE IF EXISTS `word_map_data`;
CREATE TABLE `word_map_data`  (
  `word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '单词',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型',
  `map` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '映射',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码',
  `own` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '归属',
  `refer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参考',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`word`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '单词对照配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of word_map_data
-- ----------------------------
INSERT INTO `word_map_data` VALUES ('Asset', '属性', '', '', 'Self/Mate/Rival', 'asset', '资产');
INSERT INTO `word_map_data` VALUES ('Attribute', '属性', '', '', 'Self/Mate/Rival', 'attribute_data', '属性');
INSERT INTO `word_map_data` VALUES ('Buff', '属性', '', '', 'Self/Mate/Rival', 'buff', '增/减益状态');
INSERT INTO `word_map_data` VALUES ('Hurt', '属性', '', '', 'Self/Mate/Rival', '', '战斗伤害');
INSERT INTO `word_map_data` VALUES ('level', '等级', '', '', 'Self/Mate/Rival', 'role', '等级');
INSERT INTO `word_map_data` VALUES ('Mate', '对象', '', '', '', '', '队友');
INSERT INTO `word_map_data` VALUES ('Rival', '对象', '', '', '', '', '对方');
INSERT INTO `word_map_data` VALUES ('Self', '对象', '', '', '', '', '自己');
INSERT INTO `word_map_data` VALUES ('Skill', '属性', '', '', 'Self/Mate/Rival', 'skill', '技能');

SET FOREIGN_KEY_CHECKS = 1;
