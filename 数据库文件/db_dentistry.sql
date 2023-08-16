/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.153.130 虚拟机（MySQL）
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 192.168.153.130:3306
 Source Schema         : db_dentistry

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 11/01/2023 13:44:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for case_info
-- ----------------------------
DROP TABLE IF EXISTS `case_info`;
CREATE TABLE `case_info`  (
  `CASEID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '病例ID',
  `CUSTOMERID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户ID',
  `DIAGNOSETIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '诊断时间',
  `DOCTORID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生ID',
  `SELFREPORTED` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '主诉症状',
  `PASTHISTORY` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '既往史',
  `DIAGNOSE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '诊断',
  `DIFFDIAGNOSIS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '鉴别诊断',
  `TREATMENTPLAN` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '治疗计划',
  `ADVICE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医嘱',
  `RECHECKTIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '复诊时间',
  `TRRESULT` int(3) NULL DEFAULT NULL COMMENT '治疗周期',
  `STATUS` int(2) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`CASEID`, `CUSTOMERID`, `DIAGNOSETIME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of case_info
-- ----------------------------
INSERT INTO `case_info` VALUES ('20230129C001', '202301270001', '20230129', '20230201D001', '刷牙出血半年。患者近半年，刷牙及咀嚼食物时牙龈出血，含漱可止血，现要求诊治。修改', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '慢性牙龈炎。', '1，早期牙周炎，有牙周袋，牙槽骨吸收；\n2，血液病，应与全身性疾病鉴别如白血病，血小板减少性紫癜等；\n3，坏死性龈炎，虽以牙龈出血为主要症状，但其牙龈边缘坏死如虫蚀状，坏死区出现灰褐色假膜，伴有疼痛和特殊的腐败臭味；\n4，爱滋病相关的龈炎。', '洁治术\n处置方法：\n口腔卫生宣教，指导刷牙方式及牙线使用。已向患者交代清楚患牙情况及费用，患者知情同意后，全口龈上洁治，喷砂，抛光，上药。', '卫生维护，定期复诊，不适随诊。修改医嘱', '2023-03-12', NULL, 3);
INSERT INTO `case_info` VALUES ('20230129C001', '202301270001', '20230412', '20230201D001', '复诊测试2', NULL, NULL, '复诊测试2', '复诊测试2', '复诊测试2', '2023-03-12', 0, 2);
INSERT INTO `case_info` VALUES ('20230129C001', '202301270001', '20230516', '20230201D001', '复诊测试1', NULL, NULL, '复诊测试1', '复诊测试1', '复诊测试1', '2023-03-12', 0, 2);
INSERT INTO `case_info` VALUES ('20230222C001', '202305140001', '20230222', '20230201D004', '测试', '测试', '测试', '测试', '测试', '测试', '2023-03-12', 1, 3);
INSERT INTO `case_info` VALUES ('20230310C001', '202301270001', '20230310', '20230201D001', '下前牙松动半年。\n患者近两年来时常牙龈刷牙时出血，有口臭。近半年下前牙自觉松动，牙龈偶有脓液溢出，要求诊治。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '慢性牙周炎', '1.口腔卫生状况较差，牙面大量色色素附着。龈上牙石III°，并可探及龈下牙石，尤以下颌前牙舌侧及双侧后牙颊侧为重。\n2.牙龈充血色红，质地松软，边缘厚钝，龈乳头圆钝，肥大面光亮，牙龈萎缩，PD约3-5mm，下颌前牙区牙周袋内可见脓性分泌物。\n3.下颌前牙区牙齿松动，余牙尚可。详见牙周检查表。\n4.线检查全口牙槽骨水平吸收达根长1/3左右。\n最终诊断：牙龈炎  牙龈炎有牙龈炎症，无牙周袋形成，无牙槽骨吸收，无牙齿松动等典型牙周炎临床表现。', '牙周序列治疗\n口腔卫生宣教，指导刷牙方式及牙线使用。\n已向患者交代清楚患牙情况及费用，患者知情同意后，全口龈上洁治，龈下超声刮治，手工根面平整，牙周袋内810nm激光照射。全口喷砂，抛光，上药。', '卫生维护，菌斑控制，一周复诊，不适随诊。可修改！', '2023-03-12', 1, 1);
INSERT INTO `case_info` VALUES ('20230310C002', '202301270001', '20230310', '20230201D003', '上前牙外伤撞击1小时。\n患者一小时前因打蓝球不慎撞击上前牙，牙龈少量出血，感觉患牙有伸长感，松动，咬合疼痛，来院就诊。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '牙震荡', '上颌前牙区牙冠完整。11松动I°，龈缘少量出血，叩（+），冷热诊反应迟钝。X：未见根折情况，牙周膜间隙轻度增宽', '患牙调整，松牙固定，近期勿用患牙，定期复查做牙髓活力测试，如牙髓病变及时根管治疗。\n处置：\n已向患者交代清楚患牙情况及费用，患者知情同意后，11碧兰麻局部浸润麻醉，复位患牙，橡皮障隔离。2-2腭侧及邻接区磷酸酸蚀，冲洗，干燥，涂布粘结剂，瑞邦树脂纤维带固定，涂布树脂，光照。去除橡皮障，调合。', '近期勿用患牙，八周后复诊，不适随诊。', '2023-03-12', 1, 1);
INSERT INTO `case_info` VALUES ('20230310C003', '202301270001', '20230310', '20230201D004', '患者2小时前不慎摔伤，伤及右上前牙，致右前牙折断，当时即感疼痛难忍，遂来我院求治。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '冠折露髓', '12牙冠切1/3斜折，可见露髓点，探痛明显，无明显松动，叩诊（+），牙龈未见撕裂及其他异常。X线示：12未见根折影像及其他异常', '一次性RCT+桩冠修复\n处理：\n已向患者交代清楚患牙情况及费用，患者知情同意后，12碧兰麻局部浸润麻醉，橡皮障隔离，去除腐质开髓，揭净髓顶，机用镍钛锉Protaper系统SX锉开扩根管上2/3,10#K锉+根管长度测量仪探测根管长度**mm。手用K锉+机用镍钛锉预备根管，拍试尖片，主尖消毒待用。2.5%次氯酸钠+蒸馏水超声荡洗根管，810nm激光根管内照射消毒，洗必泰冲洗，隔湿，吹干。根管内滴入95%酒精，吸潮纸尖干燥根管，AHplus糊剂+6%大锥度牙胶尖、热熔牙胶垂直加压充填，暂封膏+玻璃离子双封。拍术后片恰填。调颌。', '前牙勿咬硬物，观察一周后桩冠修复。', '2023-03-12', 1, 1);
INSERT INTO `case_info` VALUES ('20230310C004', '202301280001', '20230310', '20230201D003', '患者一周前感觉左下磨牙区不适，近三天感觉胀痛明显，咀嚼、吞咽时疼痛加重，有张口不适。未行治疗，来院就诊。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，有牙疼痛史，余系统回顾未见明显异常。', '冠周炎；阻生齿', '检查：\n左侧面部稍肿，颌下淋巴结有压痛，张口轻度受限，48部分萌出，冠周牙龈红肿，探诊易出血，盲袋下方可探到阻生的48 ，袋内有脓液溢出。\nX检查：\n48 垂直阻生影像，融合根，左下7 远中邻面未见龋坏。', '局部治疗 生理盐水及3%双氧水冲洗，上丁香油、碘甘油。如形成脓肿及时切开引流。\n全身治疗   抗生素应用及全身支持疗法。\n待炎症消退后切除盲袋或拔除阻生齿\n处置：\n48盲袋内生理盐水及双氧水交替冲洗，致冲洗液清亮。局部上碘甘油。', '抗炎处理，两日后复诊，不适随诊。', '2023-03-12', 3, 1);
INSERT INTO `case_info` VALUES ('20230310C004', '202301280001', '20230311', '20230201D001', '冠周炎冲洗后复诊，疼痛减轻', NULL, NULL, '48牙龈色泽转淡，压痛减轻，盲袋内少量脓性分泌物。', '48盲袋内生理盐水及双氧水交替冲洗，致冲洗液清亮。局部上碘甘油。', '抗炎处理，择期拔除患牙，不适随诊。', '2023-03-12', 0, 2);
INSERT INTO `case_info` VALUES ('20230310C004', '202301280001', '20230312', '20230201D003', '冠周炎复诊，无疼痛不适，要求拔牙', NULL, NULL, '48部分萌出，冠周牙龈尚可，余未见明显异常。', '48局部消毒后，碧兰麻行下牙槽神经阻滞麻醉。起效后切开牙龈，翻瓣暴露牙冠，挺松患牙，拔除，搔刮拔牙窝，置明胶海绵，缝一针，压迫止血。', '拔牙后注意事项，一周复诊，不适随诊。', '2023-03-12', 0, 2);
INSERT INTO `case_info` VALUES ('20230322C001', '202301280001', '20230322', '20230201D001', '左下后牙窝沟色黑数年', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，有牙疼痛史，余系统回顾未见明显异常。', '浅龋', '面窝沟浸墨状改变，卡顿探针，探底质硬。温测同对照牙。余未见异常。', '树脂充填\n处置：\n已向患者交代清楚患牙情况及费用，患者知情同意后，高速手机去龋，洞底质硬，备洞，氯己定消毒窝洞，滴入95%酒精，吹干，磷酸酸蚀，冲洗，涂布全酸蚀粘结剂，光照，树脂分层充填，光照固化。调合，抛光。', '充填后注意事项，定期复诊，不适随诊。', '2023-03-12', 1, 1);
INSERT INTO `case_info` VALUES ('20230322C001', '202301280001', '20230519', '20230201D001', '复诊测试22', NULL, NULL, '复诊测试22', '复诊测试22', '复诊测试22', '2023-03-12', 0, 2);
INSERT INTO `case_info` VALUES ('20230402C001', '202301270002', '20230402', '20230201D001', '新增病例测试1', '新增病例测试1', '新增病例测试', '新增病例测试1', '新增病例测试1', '新增病例测试1', '2023-03-12', 0, 1);
INSERT INTO `case_info` VALUES ('20230402C001', '202301270002', '20230518', '20230201D001', '复诊测试2', NULL, NULL, '复诊测试2', '复诊测试2', '复诊测试2', '2023-03-12', 0, 2);
INSERT INTO `case_info` VALUES ('20230427C001', '202301270002', '20230427', '20230201D001', '患者数年前即发现左下后牙窝沟色黑，无法自行刷除，无痛。数月前进食时部分牙体剥脱，可见龋洞，今来院要求充填', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，有牙疼痛史，余系统回顾未见明显异常。', '中龋', '37号牙面可见龋洞，深达牙本质浅层，探底质软，温测同对照牙，冷热诊正常。余未见异常。', '树脂充填\n处置：\n已向患者交代清楚患牙情况及费用，患者知情同意后，高速手机去龋，洞底质硬，备洞，氯己定消毒窝洞，滴入95%酒精，吹干，磷酸酸蚀，冲洗，涂布全酸蚀粘结剂，光照，树脂分层充填，光照固化。调合，抛光。', '充填后注意事项，定期复诊，不适随诊。', '2023-03-12', 1, 1);
INSERT INTO `case_info` VALUES ('20230427C002', '202303130005', '20230427', '20230201D001', '患者发现右下后牙龋洞数月，近一周来进食物常有嵌塞痛，要求诊治。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '深龋', '46合面明，龋洞，有大量腐质，边缘不规则，颜色黑褐色，质地松软，探诊有轻度酸痛，达牙本质深层，叩诊（—），冷热诊反映同对照牙，但如刺激进入龋洞时有明显酸痛感刺激去除后疼痛立即消失。X线示冠部透射影，未达髓腔，根尖未见明显异常。\n1.可复性牙髓炎  主要依据牙髓活力测试反映,可复性牙髓炎遇到温度刺激会出现短暂的一过性疼痛，刺激去除疼痛持续片刻即消失。而深龋只要刺激不进入龋洞就不会出现激发痛。\n2.慢性闭锁性牙髓炎  自发性隐痛，急性发作，晚期有叩诊不适，机械去腐反应迟钝，牙髓活力测试迟钝。而深龋无叩诊不适，无自发痛，牙髓活力正常。去净腐质时极其敏感。', '树脂充填\n处置：\n已向患者交代清楚患牙情况及费用，患者知情同意后，高速手机+慢速球钻去龋，洞底质硬，备洞，氯己定消毒窝洞，滴入95%酒精，吹干，磷酸酸蚀，冲洗，涂布全酸蚀粘结剂，光照，树脂分层充填，光照固化。调合，抛光。', '充填后注意事项，定期复诊，不适随诊。', '2023-03-12', 1, 1);
INSERT INTO `case_info` VALUES ('20230427C003', '202301270003', '20230427', '20230317D001', '患者约三天前左下后牙自发性阵发性疼痛，夜间痛明显，有时放射至颞部，现因剧痛难忍就诊。', '患者自述无高血压、心脏病、糖尿病病史，无肝炎及结核等传染病史及其密切接触史。无重大外伤及手术史。无药物食物过敏史，无输血史，预防接种随当地，余系统回顾未见明显异常。', '急性牙髓炎', '46合面明显龋洞，近髓，洞底有大量软化牙本质，探痛明显，叩（—），冷热诊疼痛剧烈，且持续较长时间。\n1、龈乳头炎  疼痛为持续性胀痛，对温度测试仅为敏感，不发生激发疼痛，对疼痛能定位，患处龈乳头红肿，触痛。\n2、三叉神经痛：它有板击点，很少有夜间发作。\n3、急性上颌窦炎：疼痛为持续性胀痛，患侧的上颌前磨牙和磨牙可同时受累均有疼痛，但无牙体疾患；上颌窦有压痛，同时有头痛，鼻塞，脓涕等上呼吸道症状。', '根管治疗；充填后做冠修复。\n处置：\n已向患者交代清楚患牙情况及费用，患者知情同意后，46碧兰麻局部浸润麻醉，橡皮障隔离，去除腐质开髓，揭净髓顶，机用镍钛锉Protaper系统SX锉开扩根管上2/3,10#K锉+根管长度测量仪探测根管长度**mm。手用K锉+机用镍钛锉预备根管，拍试尖片，主尖消毒待用。2.5%次氯酸钠+蒸馏水超声荡洗根管，810nm激光根管内照射消毒，洗必泰冲洗，隔湿，吹干。根管内滴入95%酒精，吸潮纸尖干燥根管，AHplus糊剂+6%大锥度牙胶尖、热熔牙胶垂直加压充填，暂封膏+玻璃离子双封。拍术后片恰填。', '根充后注意事项，一周复诊，不适随诊。', '2023-03-12', 1, 1);
INSERT INTO `case_info` VALUES ('20230508C002', '202301280001', '20230508', '20230201D004', '2新增测试0508！', '2新增测试0508！', '2新增测试0508！', '2新增测试0508！', '2新增测试0508！', '2新增测试0508！', '2023-03-12', 1, 3);
INSERT INTO `case_info` VALUES ('20230508C003', '202301270003', '20230508', '20230317D003', '234', '23', '123', '234', '234', '234', '2023-03-12', 1, 1);
INSERT INTO `case_info` VALUES ('20230512C001', '202305120004', '20230512', '20230201D001', '新增病例1', '新增病例1', '新增病例1', '新增病例1', '新增病例1', '新增病例1', '2023-03-12', 1, 3);

-- ----------------------------
-- Table structure for customer_info
-- ----------------------------
DROP TABLE IF EXISTS `customer_info`;
CREATE TABLE `customer_info`  (
  `CUSTOMERID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户ID',
  `CUSTOMERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户名称',
  `SEX` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `AGE` int(3) NULL DEFAULT NULL COMMENT '年龄',
  `CID` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `JOB` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `PHONE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `ECNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '紧急联系人姓名',
  `ECPHONE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '紧急联系人电话',
  `ALLERGY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '过敏史',
  `ATTRIBUTE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否长期服用某种药物',
  `ATTRIBUTE2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '女性患者是否怀孕',
  `ATTRIBUTE3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保证以上内容属实',
  `ATTRIBUTE4` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统性疾病史',
  `SYSTEMICDIS` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '系统性疾病史',
  PRIMARY KEY (`CUSTOMERID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer_info
-- ----------------------------
INSERT INTO `customer_info` VALUES ('202301270001', '罗玥天', '男', 23, '513436200001278002', '网络工程师', '13498475849', '山西省阳泉市', '王五', '12313123', '可修改！修改', '阿莫西林', '否', '是', NULL, '无');
INSERT INTO `customer_info` VALUES ('202301270002', '沈深红', '男', 30, '513436200001276402', '前端工程师', '18392754853', '山西省太原市', '李四', '124324324', '脑血栓', '是', NULL, '是', NULL, NULL);
INSERT INTO `customer_info` VALUES ('202301270003', '高海丽', '女', 35, '513436200001277229', '律师', '18349504856', '山东省淄博市', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_info` VALUES ('202301280001', '牛骏凯', '男', 34, '513436200001282300', '美容美发', '19402948594', '辽宁省鞍山市', '王德发', '235345345', '没毛病', '是', NULL, '是', NULL, NULL);
INSERT INTO `customer_info` VALUES ('202301300001', '张三', '男', 22, '513436200001303001', '技术总监', '18493054876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_info` VALUES ('202303130001', '郎岩', '男', 46, '235407195106112745', '企业高管', '12395485956', '山西省晋城市', '李华', '12485749576', '无', '否', NULL, '是', NULL, '心脏起搏器,高血压,肝炎');
INSERT INTO `customer_info` VALUES ('202303130002', '孟琬', '女', 25, '210203197503102721', '护士', '13294857536', '辽宁省大连市西岗区', '杨策', '12394853745', '花粉过敏', '否', '否', '是', NULL, '肝炎,恶性肿瘤');
INSERT INTO `customer_info` VALUES ('202303130003', '杭健雯', '男', 19, '130102196303250459', '学生', '15347859456', '河北省石家庄市长安区', '袁华', '15789456852', '过敏性鼻炎', '阿莫西林', '否', '是', NULL, '无');
INSERT INTO `customer_info` VALUES ('202303130004', '方华', '女', 37, '431202198811101720', '地下工作者', '15247854589', '湖南省怀化市鹤城区', '二狗子', '12547896548', '花粉过敏', '否', '否', '是', NULL, '无');
INSERT INTO `customer_info` VALUES ('202303130005', '常善勤', '女', 20, '130821199103278829', '学生', '15845786954', '河北省承德市承德县', '芳华', '12547896542', '无', '否', '否', '是', NULL, '骨质疏松');
INSERT INTO `customer_info` VALUES ('202303130006', '戚轮伯', '男', 21, '520323197806058856', '学生', '12578945864', '贵州省遵义市绥阳县', '王富贵', '12547896542', '无', '肾宝片', '否', '是', NULL, '肝炎');
INSERT INTO `customer_info` VALUES ('202303140001', '方华', '女', 20, '350105199506138487', '学生', '15478964528', '福建省福州市马尾区', '李诞', '1548579486', '无', '否', '否', '是', NULL, '无');
INSERT INTO `customer_info` VALUES ('202304020001', '新增客户测试', '男', 23, '123123123', '司机', '123123123', '山西省阳泉市', '李华', '12357485675', '', '否', '否', '是', NULL, '心脏病,心脏起搏器,肾脏疾病');
INSERT INTO `customer_info` VALUES ('202304220001', '新增客户测试2', '女', 23, '123123123', '工程师', '123123123', '山西太原', '李四', '123123123', '', '否', '否', '是', NULL, '高血压');
INSERT INTO `customer_info` VALUES ('202305120002', '今日新增2', '女', 34, '23435435', '今日新增1', '2342113', '今日新增1', '今日新增1', '456657', '无', '否', '否', '是', NULL, '心脏病');
INSERT INTO `customer_info` VALUES ('202305120003', '今日新增3', '男', 45, '5345346', '今日新增3', '345345', '今日新增3', '今日新增3', '3456456345', '无', '否', '否', '是', NULL, '糖尿病,骨质疏松');
INSERT INTO `customer_info` VALUES ('202305120004', '今日新增4', '男', 42, '45645645', '水电费十多个', '4234234', '今日新增4', '今日新增4', '35345436', '无', '否', '否', '是', NULL, '糖尿病,获得性免疫缺陷');
INSERT INTO `customer_info` VALUES ('202305120005', '今日新增5', '男', 41, '234235', '今日新增4', '234235', '今日新增4', '今日新增4', '3465443', '无', '否', '否', '是', NULL, '出血性疾病,癫痫病');
INSERT INTO `customer_info` VALUES ('202305140001', '刘永杰', '女', 4, '234235436', '学生', '23435346', '陕西省西安市', '王五', '124234325', '无', '否', '否', '否', NULL, '无');

-- ----------------------------
-- Table structure for doctor_info
-- ----------------------------
DROP TABLE IF EXISTS `doctor_info`;
CREATE TABLE `doctor_info`  (
  `DOCID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生ID',
  `DOCNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `CID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `DOCSEX` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生性别',
  `DOCAGE` int(3) NULL DEFAULT NULL COMMENT '年龄',
  `NATION` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名族',
  `WORKYEAR` int(3) NULL DEFAULT NULL COMMENT '工作年限',
  `POLITICSTATUS` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `WORKKIND` int(1) NULL DEFAULT NULL COMMENT '工作类型',
  `DOCTITLE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `EDUCATION` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `DOCINTRODUCE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '个人简介',
  PRIMARY KEY (`DOCID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctor_info
-- ----------------------------
INSERT INTO `doctor_info` VALUES ('20230201D001', '张富贵', '19841203', '男', 40, '汉', 13, '共产党员', 2, '主治医师', '硕士', '王富贵个人简介已修改！');
INSERT INTO `doctor_info` VALUES ('20230201D003', '张三', '19960102', '女', 23, '傣族', 30, '共产党员', 1, '主治医师', '大专', '刚毕业，在实习！');
INSERT INTO `doctor_info` VALUES ('20230201D004', '李四', '1980', '男', 25, '汉', 15, '群众', 2, '麻醉师', '本科', '毕业于上海同济大学');
INSERT INTO `doctor_info` VALUES ('20230317D001', '柯胜义', '14102219531001716X', '男', 64, '汉', 35, '共产党员', 2, '麻醉师', '硕士', '口腔种植专家，硕士。 ﻿担任总院种植中心主任、特诊科主任，是我院较早开展种植技术的医生。\n\n中华口腔医学会种植专业委员会会员(CSA)\n\n中华口腔医学会民营专业委员会会员\n\n山西省口腔医学会理事\n\n山西省口腔医学会种植专业委员会委员\n\n荣获2015年首届中国民营种植病例大赛季军称号\n\n曾获2012年世界牙科论坛—诺贝尔口腔种植病例大赛提名奖(十强选手)\n\n2011年恒伦口腔（原山西红十字口腔医院）种植病例大赛冠军\n\nNobel Implant 种植系统特聘讲师\n\n师从全国种植专业委员会主任委员，国际著名种植专家李德华教授\n\n多次赴美国、日本参加学术交流和培训\n\n2013年赴韩国庆北国立大学作访问学者\n\n多次获得优秀医生、先进工作者、种植突出单项奖，特殊贡献奖等荣誉\n\n在国家及省级核心期刊发表论文十余篇\n\n《平台转换连接种植体即刻功能性负重的影像学评估》成功申请山西省科技公关计划项目\n\n擅长于各种类型疑难种植手术及牙体缺损、牙列缺失的修复及拔牙术、牙槽外科手术等，发表国家级、省级口腔医学论文10余篇。');
INSERT INTO `doctor_info` VALUES ('20230317D002', '乔树', '14052119530712778X', '女', 64, '汉族', 30, '群众', 4, '副主任药师', '硕士', '1111111');
INSERT INTO `doctor_info` VALUES ('20230317D003', '虞婉轩', '140428197903211353', '男', 38, '汉族', 15, '群众', 2, '主治医师', '硕士', '1111111111111');
INSERT INTO `doctor_info` VALUES ('20230317D004', '贾苇天', '140311199211269403', '男', 25, '汉', 3, '群众', 1, '副主任药师', '本科', '修改测试！');
INSERT INTO `doctor_info` VALUES ('20230420D001', '添加测试', '12312313123', '男', 23, '汉', 3, '党员', 3, '副主任药师', '硕士', '添加测试');
INSERT INTO `doctor_info` VALUES ('20230514D001', '添加测试1', '2134324', '女', 25, '汉族', 3, '党员', 1, '麻醉师', '本科', '添加测试1');

-- ----------------------------
-- Table structure for login_count
-- ----------------------------
DROP TABLE IF EXISTS `login_count`;
CREATE TABLE `login_count`  (
  `LOGINID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LOGINDATA` datetime NULL DEFAULT NULL,
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USERID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USERSORT` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`LOGINID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_count
-- ----------------------------
INSERT INTO `login_count` VALUES ('20230110S001', '2023-01-10 11:15:44', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20230110S002', '2023-01-10 11:15:47', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230110S003', '2023-01-10 11:16:27', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20230110S004', '2023-01-10 11:16:42', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20230110S005', '2023-01-10 11:17:38', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20230110S006', '2023-01-10 11:20:09', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S007', '2023-01-10 11:22:45', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S008', '2023-01-10 11:23:03', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S009', '2023-01-10 11:23:21', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S010', '2023-01-10 11:24:03', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S011', '2023-01-10 11:24:35', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S012', '2023-01-10 11:24:40', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S013', '2023-01-10 11:24:54', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S014', '2023-01-10 11:29:40', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S015', '2023-01-10 11:30:03', 'crystal', '20230231D004', 2);
INSERT INTO `login_count` VALUES ('20230110S016', '2023-01-10 11:30:35', 'crystal', '20230231D004', 2);
INSERT INTO `login_count` VALUES ('20230110S017', '2023-01-10 11:37:03', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S018', '2023-01-10 11:37:14', 'crystal', '20230231D004', 2);
INSERT INTO `login_count` VALUES ('20230110S019', '2023-01-10 11:38:11', 'crystal', '20230231D004', 2);
INSERT INTO `login_count` VALUES ('20230110S020', '2023-01-10 11:38:41', 'crystal', '20230231D004', 2);
INSERT INTO `login_count` VALUES ('20230110S021', '2023-01-10 11:40:06', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230110S022', '2023-01-10 11:47:00', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S023', '2023-01-10 11:47:01', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230110S024', '2023-01-10 11:47:02', 'attr', '202305140001', 1);
INSERT INTO `login_count` VALUES ('20230111S001', '2023-01-11 09:24:18', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S002', '2023-01-11 09:24:53', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20230111S003', '2023-01-11 09:25:47', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S004', '2023-01-11 09:26:36', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S005', '2023-01-11 09:27:14', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S006', '2023-01-11 09:27:25', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S007', '2023-01-11 09:30:17', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S008', '2023-01-11 09:47:36', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S009', '2023-01-11 09:47:39', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S010', '2023-01-11 09:47:49', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S011', '2023-01-11 09:49:19', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S012', '2023-01-11 09:49:22', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S013', '2023-01-11 09:49:33', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S014', '2023-01-11 09:53:07', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S015', '2023-01-11 09:54:05', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S016', '2023-01-11 09:55:07', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S017', '2023-01-11 09:55:27', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S018', '2023-01-11 09:55:42', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S019', '2023-01-11 09:56:51', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S020', '2023-01-11 09:58:33', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S021', '2023-01-11 09:58:39', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S022', '2023-01-11 09:58:50', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S023', '2023-01-11 09:59:52', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S024', '2023-01-11 10:00:34', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S025', '2023-01-11 10:00:42', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S026', '2023-01-11 10:01:12', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S027', '2023-01-11 10:03:16', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S028', '2023-01-11 10:03:20', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S029', '2023-01-11 10:03:29', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S030', '2023-01-11 10:06:23', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S031', '2023-01-11 10:14:23', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S032', '2023-01-11 10:14:36', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S033', '2023-01-11 10:14:44', 'crystal', '20230201D004', 2);
INSERT INTO `login_count` VALUES ('20230111S034', '2023-01-11 10:21:12', '游客登录', '000', 0);
INSERT INTO `login_count` VALUES ('20230111S035', '2023-01-11 10:22:08', NULL, NULL, NULL);
INSERT INTO `login_count` VALUES ('20230111S036', '2023-01-11 10:22:14', 'crystal', '20230201D004', 2);

-- ----------------------------
-- Table structure for login_info
-- ----------------------------
DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info`  (
  `USERID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `PASSWORD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `USERSORT` int(1) NULL DEFAULT NULL COMMENT '用户角色',
  PRIMARY KEY (`USERID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of login_info
-- ----------------------------
INSERT INTO `login_info` VALUES ('202301110011', '123456', '123456', 4);
INSERT INTO `login_info` VALUES ('202301270001', '123456', '罗玥天', 1);
INSERT INTO `login_info` VALUES ('202301270002', '123456', '沈深红', 1);
INSERT INTO `login_info` VALUES ('20230201D004', '123456', 'crystal', 2);
INSERT INTO `login_info` VALUES ('20230231D001', '123456', '张富贵', 2);
INSERT INTO `login_info` VALUES ('202303130004', '123456', '方华', 1);
INSERT INTO `login_info` VALUES ('20230405D001', '123123', '李琳', 2);
INSERT INTO `login_info` VALUES ('20230405D002', '123123', '李萍', 2);
INSERT INTO `login_info` VALUES ('202305140001', '123456', 'attr', 1);
INSERT INTO `login_info` VALUES ('admin', '123456', 'admin', 3);

-- ----------------------------
-- Table structure for medicine_info
-- ----------------------------
DROP TABLE IF EXISTS `medicine_info`;
CREATE TABLE `medicine_info`  (
  `MEDICINEID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药品ID',
  `MEDNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品名',
  `MEDTYPE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品类型',
  `INGREDIENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '成分',
  `MEDCHARACTER` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '性状',
  `MAJORFUNCTION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '功能主治',
  `USEMETHOD` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用法用量',
  `UNEFFECT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '不良反应',
  `TABOO` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '禁忌',
  `NOTICE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '注意事项',
  `STORE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '贮藏',
  PRIMARY KEY (`MEDICINEID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medicine_info
-- ----------------------------
INSERT INTO `medicine_info` VALUES ('20230222M001', '复方角菜酸酯乳膏', 'C2', '本品为复方制剂，每100克含角菜酸酯2.5克、二氧化钛2克、氧化锌2克、利多卡因2克。\n\n辅料为：聚氧乙烯二醇棕榈硬脂酸酯、饱和多糖甘油酯、二甲硅油、微晶纤维素、丙二醇、羟苯甲酯、羟苯丙酯、山梨酸钾和纯化水。', '性状修改', '对痔疮及其它肛门疾患引起的疼痛、瘙痒、充血及少量出血进行对症治疗。', '每日1次或每日数次，经直肠给药，或遵医嘱。为了便于直肠内给药，每支乳膏配有塑料套管。使用时，将套管与乳膏的铝管拧紧，将套管的顶端放入直肠，慢慢地挤压铝管。\n', '尚未发现严重不良反应的报告。少见用药部位不适感，可自动消失或减轻。如使用本品出现任何不良反应和/或不良事件，请咨询医师。\n\n上市后数据：\n\n按照自发报告的频率分类如下：\n\n发生频率为非常罕见（＜1/10000）的不良反应：给药部位反应包括烧灼感、红斑、脱皮、刺激、疼痛、瘙痒、皮疹和荨麻疹；免疫系统疾病包括超敏反应。', '对本品中任何成份过敏的患者禁用。', '使用本品前先到医院明确诊断，如果使用本品2周后症状未见缓解，请到医院检查。\n\n孕妇及哺乳期妇女应在医师指导下使用。 利多卡因在母乳中的分泌非常有限。尚不清楚角菜酸酯、氧化钛或氧化锌是 否在母乳中分泌。\n\n如有疑虑或有不良反应发生，应与有关医生或药师联系。\n\n使用本品时，仍要保持清洁卫生和良好的饮食习惯。\n\n使用本品并不能完全替代某些肛门疾病的相应治疗。使用本品疗程宜短。 如果使用本品后症状未能尽快缓解，请停止用药并进行直肠检查。\n\n对本品过敏者禁用，过敏体质者慎用。\n\n本品性状发生改变时禁止使用。\n\n请将本品放在儿童不能接触的地方。\n\n如正在使用其他药品，使用本品前请咨询医师或药师。\n\n儿童必须在成人监护下使用。\n\n本品仅限外用。\n\n本品对驾驶或使用机器的能力没有影响。\n\n根据上市后数据分析及文献回顾，尚未发现由角菜酸酯、二氧化钛及氧化 锌使用过量导致的症状。过量使用局部麻醉剂利多卡因（所有给药形式给药）所产生的系统性毒性反应可能包括中枢神经系统和心脏作用。上市后数据显示，过量使用本品未发现相关症状。', '常温保存');
INSERT INTO `medicine_info` VALUES ('20230319M001', '氯己定', 'C2', '本品主要成分为醋酸氯己定。', '（1）醋酸氯己定软膏：黄色或黄棕色透明的鸭嘴形栓剂；无特殊臭味，具弹性。（2）醋酸氯己定栓：浅黄色或黄色软膏。（3）醋酸氯己定痔疮栓：白色或类白色长椭圆形栓剂。（4）醋酸氯己定溶液：无色澄明液体；味微苦。', '醋酸氯己定软膏：\n\n用于宫颈糜烂、化脓性阴道炎、霉菌性阴道炎，也用于滴虫性阴道炎等。\n\n醋酸氯己定栓：\n\n用于疖肿，小面积烧伤、烫伤、外伤感染和脓疱疮。\n\n醋酸氯己定痔疮栓：\n\n用于外痔、内痔。\n\n醋酸氯己定溶液：\n\n用于皮肤及黏膜的消毒；创面感染、阴道感染和子宫颈縻烂的冲洗。', '醋酸氯己定软膏：\n\n1、阴道用药。先将外阴部洗净，然后戴上指套把药栓送入阴道深部。\n\n2、宫颈糜烂：月经后一日1枚，连用5-7枚为一疗程。\n\n3、阴道炎：一日1枚，连用3-5枚为一疗程。\n\n醋酸氯己定栓：\n\n局部外用。先用适当方法将患部清洗干净，再取适量本品涂于患处，一日1次或隔日1次。\n\n醋酸氯己定痔疮栓：\n\n肛门给药。将患处洗净后，取栓剂，除去外包装，带上指套后将栓剂轻轻塞入肛门，一日2次，每次1枚。\n\n醋酸氯己定溶液：\n\n皮肤外用。0.05%溶液对局部皮肤及粘膜消毒，创面及阴道冲洗。每日一至二次，每次50ml至100ml。', '偶见局部刺激、红斑及接触性皮炎，罕见过敏反应。偶见皮肤过敏或接触性皮炎。', '对氯己定过敏者禁用。', '1、避免接触眼睛和其他黏膜（如口、鼻等）。\n\n2、用药部位如有烧灼感、瘙痒、红肿等情况应停药，并将局部药物洗净，必要时向医师咨询。\n\n3、对本品过敏者禁用，过敏体质者慎用。\n\n4、本品性状发生改变时禁止使用。\n\n5、请将本品放在儿童不能接触的地方。\n\n6、儿童必须在成人监护下使用。\n\n7、如正在使用其他药品，使用本品前请咨询医师或药师。\n\n8、药物过量：用药过频(如2次/日或3次/日)可出现阴道粘膜潮红表浅糜烂面或不适感。\n\n9、醋酸氯己定痔疮栓仅供直肠给药，切忌口服。给药时应洗净双手或戴指套或手套。宜置于25℃以下阴凉处保存，若温度高栓剂变软，可放入冰箱待其冷却凝固后使用。', '密闭，在阴凉处（不超过20℃）保存。');
INSERT INTO `medicine_info` VALUES ('20230321M001', '氨硝酸银', 'S', '本品主要成份为硝酸银。', '硝酸银软膏：淡黄色可流动的亲水性基质软膏，遇光颜色逐渐变为褐色。', '本品主要用于防治烧伤创面的浅Ⅱ°感染。', '硝酸银软膏：\n\n外用，均匀涂布于创面，厚0.2-0.4cm，一日1-2次，一次不超过500g。', '尚未见明显不良反应。', '对本品过敏者禁用。', '1、本品不能涂于眼内。\n\n2、换药前必须将创面上原有的药膏清除干净。\n\n3、如出现局部红斑、充血、烧灼感、荨麻疹等过敏症状，应立即停止应用。\n\n4、本品见光易析出金属银，故应避光保存。\n\n5、孕妇及哺乳期妇女用药：尚不明确。\n\n6、儿童用药：尚不明确。\n\n7、老年用药：尚不明确。\n\n8、药物过量：尚不明确。', '遮光，密闭保存。');
INSERT INTO `medicine_info` VALUES ('20230321M002', '专用A', 'C1', '编辑测试！', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M003', '专用B', 'S', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M004', '专用C', 'S', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M005', '专用D', 'S', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M006', '处方内服A', 'C1', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M007', '处方内服B', 'C1', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M008', '处方内服C', 'C1', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M009', '外用A', 'C2', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M010', '外用B', 'C2', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M011', '外用C', 'C2', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M012', '保健品1', 'B1', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M013', '保健品2', 'B1', '', '', '', '', '', '', '', '');
INSERT INTO `medicine_info` VALUES ('20230321M014', '保健品3', 'B1', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for medicine_manage
-- ----------------------------
DROP TABLE IF EXISTS `medicine_manage`;
CREATE TABLE `medicine_manage`  (
  `MEDICINEID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品ID',
  `PRODUCENUM` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品批号',
  `SPECIFICATION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '规格',
  `WRAP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '包装',
  `MEDADDRESS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产地址',
  `PRODUCEDATE` datetime NULL DEFAULT NULL COMMENT '生产日期',
  `EXPIRATIONDATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保质期',
  `TODATE` datetime NULL DEFAULT NULL COMMENT '到期时间',
  `MEDNUMBER` int(20) NULL DEFAULT 0 COMMENT '当前库存量',
  `MEDFACTORY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产厂家',
  `MEDTIME` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '当前时间',
  `PRICE` double(20, 0) NULL DEFAULT 0 COMMENT '单价',
  `COST` double(20, 0) NULL DEFAULT 0 COMMENT '成本',
  PRIMARY KEY (`PRODUCENUM`, `MEDTIME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medicine_manage
-- ----------------------------
INSERT INTO `medicine_manage` VALUES ('20230202M001', '20230204P001', '50mg*6支/盒', '12*20', '北京市东城区雍和大厦', '2019-12-22 00:00:00', '4', NULL, 200, '江中集团', '20230508', 12, 6);
INSERT INTO `medicine_manage` VALUES ('20230202M001', '20230204P002', '50mg*6支/盒', '12*20', '山西省太原市', '2022-01-23 00:00:00', '180', NULL, 320, '中泰集团', '20230515', 20, 10);
INSERT INTO `medicine_manage` VALUES ('20230319M001', '20230319P001', '（1）醋酸氯己定软膏：20mg。（2）醋酸氯己定栓：醋酸氯己定0.5%、冰片0.5%。（3）醋酸氯己定痔疮栓：20mg。（4）醋酸氯己定溶液：0.05%；0.02%。', '20mg*5支/盒', '山西太原', '2022-01-01 00:00:00', '30', NULL, 177, 'A厂', '20230319', 8, 5);
INSERT INTO `medicine_manage` VALUES ('20230321M002', '20230321P001', '批次修改测试', '12*20', '山西太原', '2022-03-15 00:00:00', '24', NULL, 198, 'A厂', '20230420', 10, 8);
INSERT INTO `medicine_manage` VALUES ('20230321M003', '20230321P002', '', '', '', '2019-03-21 00:00:00', '36', NULL, 186, 'A厂', '20230321', 12, 10);
INSERT INTO `medicine_manage` VALUES ('20230321M004', '20230321P003', '', '', '', '2019-03-21 00:00:00', '24', NULL, 198, 'A厂', '20230321', 35, 30);
INSERT INTO `medicine_manage` VALUES ('20230321M005', '20230321P004', '', '', '', '2019-03-21 00:00:00', '24', NULL, 193, 'A厂', '20230321', 15, 12);
INSERT INTO `medicine_manage` VALUES ('20230321M006', '20230321P005', '', '', '', '2019-06-21 00:00:00', '24', NULL, 199, 'A厂', '20230321', 25, 23);
INSERT INTO `medicine_manage` VALUES ('20230321M007', '20230321P006', '', '', '', '2019-07-18 00:00:00', '24', NULL, 197, 'A厂', '20230321', 15, 12);
INSERT INTO `medicine_manage` VALUES ('20230321M008', '20230321P007', '', '', '', '2022-01-21 00:00:00', '24', NULL, 200, 'A厂', '20230321', 40, 36);
INSERT INTO `medicine_manage` VALUES ('20230321M009', '20230321P008', '', '', '', '2022-02-21 00:00:00', '24', NULL, 200, 'A厂', '20230321', 15, 12);
INSERT INTO `medicine_manage` VALUES ('20230321M001', '20230321P009', '', '', '', '2022-02-21 00:00:00', '24', NULL, 182, 'A厂', '20230321', 42, 40);
INSERT INTO `medicine_manage` VALUES ('20230321M010', '20230321P010', '', '', '', '2022-02-21 00:00:00', '24', NULL, 300, 'A厂', '20230321', 25, 23);
INSERT INTO `medicine_manage` VALUES ('20230321M011', '20230321P011', '', '', '', '2022-02-21 00:00:00', '24', NULL, 300, 'A厂', '20230321', 30, 23);
INSERT INTO `medicine_manage` VALUES ('20230321M012', '20230321P012', '', '', '', '2022-02-19 00:00:00', '36', NULL, 493, 'A厂', '20230321', 25, 23);
INSERT INTO `medicine_manage` VALUES ('20230321M013', '20230321P013', '', '', '', '2022-03-09 00:00:00', '24', NULL, 395, 'A厂', '20230321', 50, 23);
INSERT INTO `medicine_manage` VALUES ('20230321M014', '20230321P014', '', '', '', '2022-03-11 00:00:00', '24', NULL, 400, 'A厂', '20230321', 38, 34);
INSERT INTO `medicine_manage` VALUES ('20230321M014', '20230321P015', '', '', '', '2022-03-03 00:00:00', '36', NULL, 500, 'B厂', '20230321', 25, 23);
INSERT INTO `medicine_manage` VALUES ('20230321M014', '20230321P016', '', '', '', '2022-02-18 00:00:00', '24', NULL, 98, 'C厂', '20230321', 50, 45);
INSERT INTO `medicine_manage` VALUES ('20230321M002', '20230420P001', '批次添加测试', '12*20', '批次添加测试', '2022-04-14 00:00:00', '30', NULL, 96, '批次添加测试', '20230420', 25, 20);

-- ----------------------------
-- Table structure for medm_user_record
-- ----------------------------
DROP TABLE IF EXISTS `medm_user_record`;
CREATE TABLE `medm_user_record`  (
  `SERIALNO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '记录编号',
  `CASEID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '病例ID',
  `MEDMID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品批号',
  `USENUM` int(20) NULL DEFAULT 0 COMMENT '使用数量',
  `MEDPRICE` double(20, 0) NULL DEFAULT 0 COMMENT '药品价格',
  `USETIME` datetime NULL DEFAULT NULL COMMENT '事件发生时间',
  PRIMARY KEY (`CASEID`, `SERIALNO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medm_user_record
-- ----------------------------
INSERT INTO `medm_user_record` VALUES ('20230222S001', '20230222C002', '20230321P009', 1, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230222S002', '20230222C002', '20230321P002', 1, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230322S001', '20230322C001', '20230321P009', 2, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230322S002', '20230322C001', '20230321P003', 1, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230322S003', '20230322C001', '20230321P005', 1, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230322S004', '20230322C001', '20230321P012', 1, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230322S005', '20230322C002', '20230321P009', 2, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230322S006', '20230322C002', '20230321P006', 3, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230402S001', '20230402C002', '20230321P009', 3, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230402S002', '20230402C002', '20230321P001', 2, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230402S003', '20230402C002', '20230321P012', 3, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230422S001', '20230422C001', '20230321P009', 2, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230422S002', '20230422C001', '20230321P003', 1, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230422S003', '20230422C001', '20230321P012', 3, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230422S004', '20230422C001', '20230321P009', 1, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230422S005', '20230422C001', '20230321P004', 3, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230422S006', '20230422C001', '20230321P013', 5, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230427S001', '20230427C002', '20230321P002', 3, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230427S002', '20230427C002', '20230321P004', 2, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230427S003', '20230427C002', '20230321P016', 2, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230427S004', '20230427C003', '20230321P002', 5, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230427S005', '20230427C003', '20230319P001', 3, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230427S006', '20230427C004', '20230321P009', 5, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230427S007', '20230427C004', '20230420P001', 4, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230428S001', '20230428C001', '20230321P002', 2, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230428S002', '20230428C001', '20230321P004', 2, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230515S001', '20230515C001', '20230321P009', 2, 0, '2023-03-22 00:00:00');
INSERT INTO `medm_user_record` VALUES ('20230515S002', '20230515C001', '20230321P002', 3, 0, '2023-03-22 00:00:00');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `NEWSID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告ID',
  `HEADLINE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `NEWSLABEL` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `AUTHOR` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `GENERAL` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告概要',
  `CONTENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `NEWSTIME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传时间',
  `STATUS` int(2) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`NEWSID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('DCMS001', '系统介绍', '系统数据', '管理员', NULL, '诊所治疗牙科疾病，我们是专业的！您的信任是对我们最好的肯定。', '20230314', 0);
INSERT INTO `news` VALUES ('DCMS002', '诊所简介', '系统数据', '管理员', NULL, '牙齿整形，牙齿美白，牙齿清洁，牙齿疾病治疗，换牙，牙齿疾病预防，牙齿保健品推荐', '20230314', 0);
INSERT INTO `news` VALUES ('N20230214001', '牙齿疾病的预防措施', '医学', '王峰', NULL, '内容正在更新中！', '20230314', 1);
INSERT INTO `news` VALUES ('N20230214002', '蛀牙治疗新方案', '医学', '刘涛', NULL, '对于蛀牙治疗，我们的是专业的', '20230314', 1);
INSERT INTO `news` VALUES ('N20230323001', '上市房地产企业资产规模增速放缓', '新闻', '张三', '距离最严调控启动已有两个半月时间，在调控影响下，本应是购房黄金期的端午小长假却继续降温', '距离最严调控启动已有两个半月时间，在调控影响下，本应是购房黄金期的端午小长假却继续降温，广州小长假前两天成交量不足5月日均成交量的一半；昆山成交前两天为零，最后一天也仅为89套；淮安成交跌破百套，显得颇为冷清。这是全国楼市的缩影。 一、房地产关注要点 目前房地产市场最大的问题在热点城市，尤其是一线城市库存低房价高，三四线城市和县城镇则存在较大的去库存压力。 中原地产首席分析师认为，整体看，北京等一二线城市在3月调控后，数据逐渐开始反映出调控影响，网签成交量持续走低，“红五月”成交全面滑坡，市场开始进入调整周期。一线城市同比下调幅度达到了37%，二线城市下调幅度接近30%。 不少购房人暂缓购房脚步，观望情绪较为浓厚。统计显示，端午节三天房贷市场咨询量同比去年下降近三成。 相对于成交量下滑明显，由于购房热情仍在，价格仍处于僵持状态，甚至部分地区存在上涨之势。但是，受制于限购、限贷政策持续发力，叠加严控供应，多数城市成交持续低迷。在调控延长、房企回收资金的压力下，房价下半年或许会有松动。 近期香港内地房地产股在中国恒大大涨带动下，纷纷上涨，进而带动A股地产股最近走强。行情能否持续？是否值得参与？ A股地产股受近两年房价大涨推动，业绩靓丽，加上险资举牌，雄安等区域政策刺激，及港股地产股带动等，走势强劲。', '20230314', 1);
INSERT INTO `news` VALUES ('N20230329001', '三大因素引发港内房股大涨 地产蓝筹仍是未来追逐热点', '新闻', '老八', '距离最严调控启动已有两个半月时间，在调控影响下，本应是购房黄金期的端午小长假却继续降温', '29日港股交易中，中国恒大股价大涨近23%，再创反弹新高，碧桂园、融创中国单日股价涨幅也在9%至10%不等。摩根士丹利近期发表研报预计，2016至2019年间中国恒大负债比率会大降，盈利可能年复合增长56%，或获得市场重估。中国恒大将会在8月公布中期业绩及计划在内地A股借壳上市，这些均有机会成为股价催化剂，同时管理层表示2017年6月可能再引入第二轮策略投资者。机构认为，在政策的接连调控下，房地产行业集中度有望进一步提升。大型房企在融资拿地方面更有优势，受到资本市场青睐，容易获得更高的债券评级。从大型房企的今年前四月销售数据看，招商蛇口（001979）销售面积和销售金额分别增长63.1%、82.2%，万科A增长57.8%、73.3%，保利地产（600048）签约面积和签约金额分别增长24.4%、28.3%。 过去一周，中国恒大的股价在年初以来翻番的基础上，再度大涨54%，也带动其他主要内房股进一步上升。其中碧桂园、融创中国、龙湖地产等分别上涨16%、13%、16%。东方证券（600958）认为，伴随房地产市场过去4个月的热销，今年全年销售面积增速大概率为正，三四线城市的热销也带动以三四线城市布局为主的公司盈利及现金流出现明显改善，使这一类公司比其他地产公司进入一二线城市更具有优势。同时由于去年房地产销售面积增速高点出现在4月，基数效应将导致5~6月房地产同比增速出现明显反弹，市场对地产行业热销的预期会更为乐观。当前港股内房股的大涨很大程度上与以上三大因素有关。\n', '20230314', 1);
INSERT INTO `news` VALUES ('N20230329002', '美国人不敢买：60%的人认为会有另一场房地产危机', '新闻', '麻瓜', '距离最严调控启动已有两个半月时间，在调控影响下，本应是购房黄金期的端午小长假却继续降温', '自2007年至2009年经济萧条以来，美国经济已经取得了很大的进步：工资上涨、失业率控制在4.4%，为2007年5月以来的最低水平；美国市场正处于有史以来为时第二长的牛市之中。  然而，美国人对房地产市场的信心却没有获得显著提高。尽管存在一些积极的经济指标，但是，房价上涨，及总统选举相关的不确定性，导致ValueInsured楼市信心指数与去年夏天持平。据悉，选举结束后，尽管美国人，尤其是千禧一代对楼市表现出短暂的乐观信心，但楼市信心指数再次出现下降：今年3月，房利美房屋购买情绪指数整体下降3.8%。其中，认为当下是买房好时机的美国人的百分比下降了10%。', '20230314', 1);
INSERT INTO `news` VALUES ('N20230405001', 'cs', '医学', 'cs', NULL, 'cs', '20230314', 0);
INSERT INTO `news` VALUES ('N20230421002', '楼市5月不红成交遇冷购房者观望房价下半年或松动对地产股影响如何？', '医学', '老八', NULL, '距离最严调控启动已有两个半月时间，在调控影响下，本应是购房黄金期的端午小长假却继续降温，广州小长假前两天成交量不足5月日均成交量的一半；昆山成交前两天为零，最后一天也仅为89套；淮安成交跌破百套，显得颇为冷清。这是全国楼市的缩影。 一、房地产关注要点 目前房地产市场最大的问题在热点城市，尤其是一线城市库存低房价高，三四线城市和县城镇则存在较大的去库存压力。 中原地产首席分析师认为，整体看，北京等一二线城市在3月调控后，数据逐渐开始反映出调控影响，网签成交量持续走低，“红五月”成交全面滑坡，市场开始进入调整周期。一线城市同比下调幅度达到了37%，二线城市下调幅度接近30%。 不少购房人暂缓购房脚步，观望情绪较为浓厚。统计显示，端午节三天房贷市场咨询量同比去年下降近三成。 相对于成交量下滑明显，由于购房热情仍在，价格仍处于僵持状态，甚至部分地区存在上涨之势。但是，受制于限购、限贷政策持续发力，叠加严控供应，多数城市成交持续低迷。在调控延长、房企回收资金的压力下，房价下半年或许会有松动。 近期香港内地房地产股在中国恒大大涨带动下，纷纷上涨，进而带动A股地产股最近走强。行情能否持续？是否值得参与？ A股地产股受近两年房价大涨推动，业绩靓丽，加上险资举牌，雄安等区域政策刺激，及港股地产股带动等，走势强劲。', '20230314', 1);

-- ----------------------------
-- Table structure for work_line
-- ----------------------------
DROP TABLE IF EXISTS `work_line`;
CREATE TABLE `work_line`  (
  `WORKID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约ID',
  `DOCID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生ID',
  `CUSTOMERID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户ID',
  `APPOINTMENT` datetime NULL DEFAULT NULL COMMENT '预约时间',
  `PURPOSE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约目的',
  `DURATIONTIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '持续时间',
  `WORKFLAG` int(2) NULL DEFAULT NULL COMMENT '预约状态',
  `REMAKE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`WORKID`, `DOCID`, `CUSTOMERID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of work_line
-- ----------------------------
INSERT INTO `work_line` VALUES ('20230110W001', '20230201D004', '202305140001', '2023-01-11 09:00:00', '首诊', '1', 2, '客户未按时赴约就诊');
INSERT INTO `work_line` VALUES ('20230222W001', '20230201D004', '202305140001', '2023-03-19 14:00:00', '看智齿', '2', 1, '客户已完成就诊');
INSERT INTO `work_line` VALUES ('20230313W001', '20230201D004', '202301270001', '2023-03-19 14:00:00', '测试', '1', 3, '未到预约时间！');
INSERT INTO `work_line` VALUES ('20230328W001', '20230201D001', '202301270003', '2023-03-19 14:00:00', '测试预约', '2', 3, '未到预约时间！');
INSERT INTO `work_line` VALUES ('20230329W001', '20230201D001', '202301270003', '2023-03-19 14:00:00', '测试预约2', '2', 3, '未到预约时间！');
INSERT INTO `work_line` VALUES ('20230402W001', '20230201D001', '202301270002', '2023-03-19 14:00:00', '复诊', '2', 3, '未到预约时间！');
INSERT INTO `work_line` VALUES ('20230404W001', '20230201D001', '202301270001', '2023-03-19 14:00:00', '预约测试', '2', 3, '未到预约时间！');
INSERT INTO `work_line` VALUES ('20230405W001', '20230201D004', '202305140001', '2023-04-06 09:00:00', '复检', '1', 4, '客户或医生因特殊原因取消预约');
INSERT INTO `work_line` VALUES ('20230405W002', '20230201D001', '202305140001', '2023-04-07 05:00:00', '测试', '1', 3, '未到预约时间！');
INSERT INTO `work_line` VALUES ('20230405W003', '20230405D001', '202305140001', '2023-04-14 00:00:00', '测试', '1', 1, '客户已完成就诊');
INSERT INTO `work_line` VALUES ('20230508W001', '20230201D001', '202301270001', '2023-03-19 14:00:00', '看病', '2', 1, '客户已完成就诊');

SET FOREIGN_KEY_CHECKS = 1;
