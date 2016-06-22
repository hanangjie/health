/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : data

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-06-22 15:45:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(20) NOT NULL,
  `departmentname` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for `detail`
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `medicalid` int(20) DEFAULT NULL COMMENT '疾病id',
  `symptom` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '常见症状',
  `departmentid` int(20) DEFAULT NULL COMMENT '就诊科室id',
  `infectivity` int(2) DEFAULT NULL COMMENT '传染性 0,1',
  `diagnose` longtext CHARACTER SET utf8 COMMENT '诊断',
  `reseaon` longtext CHARACTER SET utf8 COMMENT '病因',
  `show` longtext CHARACTER SET utf8 COMMENT '临床表现',
  `cure` longtext CHARACTER SET utf8 COMMENT '治疗手段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail
-- ----------------------------

-- ----------------------------
-- Table structure for `medicalname`
-- ----------------------------
DROP TABLE IF EXISTS `medicalname`;
CREATE TABLE `medicalname` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '疾病名称',
  `intro` char(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '英文名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of medicalname
-- ----------------------------
INSERT INTO `medicalname` VALUES ('2', '牙龈肿痛', '/view/930609.htm');
INSERT INTO `medicalname` VALUES ('3', '空调病', '/view/281065.htm');
INSERT INTO `medicalname` VALUES ('4', '帕金森综合症', '/view/65153.htm');
INSERT INTO `medicalname` VALUES ('5', '心血管疾病', '/view/91854.htm');
INSERT INTO `medicalname` VALUES ('6', '日光性皮炎', '/view/76446.htm');
INSERT INTO `medicalname` VALUES ('7', '崩漏', '/view/390831.htm');
INSERT INTO `medicalname` VALUES ('8', '子宫下垂', '/view/936371.htm');
INSERT INTO `medicalname` VALUES ('9', '皮下脂肪瘤', '/view/1368127.htm');
INSERT INTO `medicalname` VALUES ('10', '泌尿系统感染', '/view/125033.htm');
INSERT INTO `medicalname` VALUES ('11', '脑血管硬化', '/view/218581.htm');
INSERT INTO `medicalname` VALUES ('12', '脱皮', '/view/1242437.htm');
INSERT INTO `medicalname` VALUES ('13', '嘴唇干燥', '/view/570827.htm');
INSERT INTO `medicalname` VALUES ('14', '虹膜炎', '/view/1380476.htm');
INSERT INTO `medicalname` VALUES ('15', '骨性关节炎', '/view/165940.htm');
INSERT INTO `medicalname` VALUES ('16', '血崩', '/view/504456.htm');
INSERT INTO `medicalname` VALUES ('17', '皮肤癣', '/view/223680.htm');
INSERT INTO `medicalname` VALUES ('18', '晕厥', '/view/101025.htm');
INSERT INTO `medicalname` VALUES ('19', '遗传病', '/view/114755.htm');
INSERT INTO `medicalname` VALUES ('20', '软组织损伤', '/view/190060.htm');
INSERT INTO `medicalname` VALUES ('21', '骨髓瘤', '/view/124636.htm');
INSERT INTO `medicalname` VALUES ('22', '秋燥', '/view/672100.htm');
INSERT INTO `medicalname` VALUES ('23', '关节痛', '/view/767161.htm');
INSERT INTO `medicalname` VALUES ('24', '脊髓炎', '/view/978776.htm');
INSERT INTO `medicalname` VALUES ('25', '急性心肌梗塞', '/view/37032.htm');
INSERT INTO `medicalname` VALUES ('26', '低分化腺癌', '/view/1392224.htm');
INSERT INTO `medicalname` VALUES ('27', '乳糜尿', '/view/234449.htm');
INSERT INTO `medicalname` VALUES ('28', '肺部肿瘤', '/view/1626714.htm');
INSERT INTO `medicalname` VALUES ('29', '梨状肌综合症', '/view/1206293.htm');
INSERT INTO `medicalname` VALUES ('30', '单纯糠疹', '/view/997233.htm');
INSERT INTO `medicalname` VALUES ('31', '急性牙髓炎', '/view/1390857.htm');
INSERT INTO `medicalname` VALUES ('32', '子宫后倾', '/view/1297541.htm');
INSERT INTO `medicalname` VALUES ('33', '早衰症', '/view/552016.htm');
INSERT INTO `medicalname` VALUES ('34', '老年人高血压', '/view/431896.htm');
INSERT INTO `medicalname` VALUES ('35', '脑血管疾病', '/view/68016.htm');
INSERT INTO `medicalname` VALUES ('36', '腰椎管狭窄症', '/view/419329.htm');
INSERT INTO `medicalname` VALUES ('37', '妊娠胆汁淤积症', '/view/1477982.htm');
INSERT INTO `medicalname` VALUES ('38', '浸润型肺结核', '/view/1219395.htm');
INSERT INTO `medicalname` VALUES ('39', '神经管畸形', '/view/1683702.htm');
INSERT INTO `medicalname` VALUES ('40', '毛孔角化症', '/view/1236119.htm');
INSERT INTO `medicalname` VALUES ('41', '先天性疾病', '/view/1453831.htm');
INSERT INTO `medicalname` VALUES ('42', '恶性高血压', '/view/355182.htm');
INSERT INTO `medicalname` VALUES ('43', '先天性甲状腺功能减低症', '/view/1683723.htm');
INSERT INTO `medicalname` VALUES ('44', '新城疫', '/view/329095.htm');
INSERT INTO `medicalname` VALUES ('45', '考试综合症', '/view/551996.htm');
INSERT INTO `medicalname` VALUES ('46', '泌尿道感染', '/view/1174123.htm');
INSERT INTO `medicalname` VALUES ('47', '食源性疾病', '/view/471768.htm');
INSERT INTO `medicalname` VALUES ('48', '小脑出血', '/view/1222073.htm');
INSERT INTO `medicalname` VALUES ('49', '胎儿宫内发育迟缓', '/view/1479908.htm');
INSERT INTO `medicalname` VALUES ('50', '酸碱平衡紊乱', '/view/534572.htm');
INSERT INTO `medicalname` VALUES ('51', '无症状心肌缺血', '/view/568669.htm');
INSERT INTO `medicalname` VALUES ('52', '布鲁菌病', '/view/295631.htm');
INSERT INTO `medicalname` VALUES ('53', '老年性骨质疏松症', '/view/1318851.htm');
INSERT INTO `medicalname` VALUES ('54', '酒精戒断综合症', '/view/1206273.htm');
INSERT INTO `medicalname` VALUES ('55', '美洲锥虫病', '/view/901775.htm');
INSERT INTO `medicalname` VALUES ('56', '慢性牙髓炎', '/view/1390991.htm');
INSERT INTO `medicalname` VALUES ('57', '急性细菌性痢疾', '/view/1199964.htm');
INSERT INTO `medicalname` VALUES ('58', '网络综合症', '/view/95220.htm');
INSERT INTO `medicalname` VALUES ('59', '杏仁中毒', '/view/657825.htm');
INSERT INTO `medicalname` VALUES ('60', '甲状腺功能减低症', '/view/1175912.htm');
INSERT INTO `medicalname` VALUES ('61', '生殖器结核', '/view/209522.htm');
INSERT INTO `medicalname` VALUES ('62', '沙门氏菌病', '/view/277026.htm');
INSERT INTO `medicalname` VALUES ('63', '损伤', '/view/805395.htm');
INSERT INTO `medicalname` VALUES ('64', '神经源性肿瘤', '/view/1323092.htm');
INSERT INTO `medicalname` VALUES ('65', '维生素D中毒', '/view/1175720.htm');
INSERT INTO `medicalname` VALUES ('66', '脑转移瘤', '/view/403928.htm');
INSERT INTO `medicalname` VALUES ('67', '感音神经性耳聋', '/view/71541.htm');
INSERT INTO `medicalname` VALUES ('68', '急性出血坏死性胰腺炎', '/view/1326161.htm');
INSERT INTO `medicalname` VALUES ('69', '曼氏裂头蚴病', '/view/610505.htm');
INSERT INTO `medicalname` VALUES ('70', '虚性体质', '/view/532671.htm');
INSERT INTO `medicalname` VALUES ('71', '选择性缄默症', '/view/72271.htm');
INSERT INTO `medicalname` VALUES ('72', '河豚中毒', '/view/1333438.htm');
INSERT INTO `medicalname` VALUES ('73', '急性根尖周炎', '/view/1390861.htm');
INSERT INTO `medicalname` VALUES ('74', '老年心力衰竭', '/view/1317855.htm');
INSERT INTO `medicalname` VALUES ('75', '啰音', '/view/1647219.htm');
INSERT INTO `medicalname` VALUES ('76', '急性短暂性精神病', '/view/1315833.htm');
INSERT INTO `medicalname` VALUES ('77', '病态窦房结综合症', '/view/1206204.htm');
INSERT INTO `medicalname` VALUES ('78', '恋母症', '/view/613659.htm');
INSERT INTO `medicalname` VALUES ('79', '慢性阻塞性系统疾病', '/view/1315762.htm');
INSERT INTO `medicalname` VALUES ('80', '子宫肌瘤合并妊娠', '/view/1477987.htm');
INSERT INTO `medicalname` VALUES ('81', '外耳道疖', '/view/1328935.htm');
INSERT INTO `medicalname` VALUES ('82', '肛隐窝炎', '/view/1327254.htm');
INSERT INTO `medicalname` VALUES ('83', '产前出血', '/view/2035178.htm');
INSERT INTO `medicalname` VALUES ('84', '老年前列腺增生症', '/view/1317865.htm');
INSERT INTO `medicalname` VALUES ('85', '闭合性颅脑损伤', '/view/805590.htm');
INSERT INTO `medicalname` VALUES ('86', '恶性骨肿瘤', '/view/1231323.htm');
INSERT INTO `medicalname` VALUES ('87', '贝尔氏麻痹症', '/view/4672186.htm');
INSERT INTO `medicalname` VALUES ('88', '紧张型头痛', '/view/1205165.htm');
INSERT INTO `medicalname` VALUES ('89', '曲霉菌病', '/view/1174129.htm');
INSERT INTO `medicalname` VALUES ('90', '急性胃粘膜病变', '/view/174710.htm');
INSERT INTO `medicalname` VALUES ('91', '非特异性外阴炎', '/view/1353704.htm');
INSERT INTO `medicalname` VALUES ('92', '肾脓肿', '/view/124583.htm');
INSERT INTO `medicalname` VALUES ('93', '大肠埃希杆菌性胃肠炎', '/view/1466846.htm');
INSERT INTO `medicalname` VALUES ('94', '棘阿米巴角膜炎', '/view/973394.htm');
INSERT INTO `medicalname` VALUES ('95', '女性沙眼衣原体感染', '/view/1479724.htm');
INSERT INTO `medicalname` VALUES ('96', '牙囊肿', '/view/815898.htm');
INSERT INTO `medicalname` VALUES ('97', '移植物抗宿主病', '/view/1468090.htm');
INSERT INTO `medicalname` VALUES ('98', '外周血管疾病', '/view/1873074.htm');
INSERT INTO `medicalname` VALUES ('99', '新生儿臂丛神经损伤', '/view/1478075.htm');
INSERT INTO `medicalname` VALUES ('100', '贝尔面瘫', '/view/1420463.htm');
INSERT INTO `medicalname` VALUES ('101', '低颅压性头痛', '/view/1219403.htm');
INSERT INTO `medicalname` VALUES ('102', '老年性眩晕', '/view/1318230.htm');
INSERT INTO `medicalname` VALUES ('103', '强直性肌营养不良', '/view/1179174.htm');
INSERT INTO `medicalname` VALUES ('104', '犬瘟热病', '/view/1006965.htm');
INSERT INTO `medicalname` VALUES ('105', '尺神经麻痹', '/view/1228251.htm');
INSERT INTO `medicalname` VALUES ('106', '幼年类风湿性关节炎', '/view/1174110.htm');
INSERT INTO `medicalname` VALUES ('107', '乙肝肾炎', '/view/576420.htm');
INSERT INTO `medicalname` VALUES ('108', '先天性髋脱位', '/view/1460093.htm');
INSERT INTO `medicalname` VALUES ('109', '腹部疝', '/view/1417539.htm');
INSERT INTO `medicalname` VALUES ('110', '假性胰腺囊肿', '/view/1327367.htm');
INSERT INTO `medicalname` VALUES ('111', '颌下腺导管结石', '/view/4117850.htm');
INSERT INTO `medicalname` VALUES ('112', '毛囊虫病', '/view/1240530.htm');
INSERT INTO `medicalname` VALUES ('113', '单思病', '/view/895091.htm');
INSERT INTO `medicalname` VALUES ('114', '膝半月板损伤', '/view/311698.htm');
INSERT INTO `medicalname` VALUES ('115', '喉白斑病', '/view/1328907.htm');
INSERT INTO `medicalname` VALUES ('116', '鼠疮', '/view/844035.htm');
INSERT INTO `medicalname` VALUES ('117', 'Wegener肉芽肿', '/view/1392512.htm');
INSERT INTO `medicalname` VALUES ('118', '溃疡病穿孔', '/view/1468073.htm');
INSERT INTO `medicalname` VALUES ('119', '囊尾蚴病', '/view/782727.htm');
INSERT INTO `medicalname` VALUES ('120', '假肥大型肌营养不良', '/view/1174130.htm');
INSERT INTO `medicalname` VALUES ('121', '离退休综合症', '/view/443517.htm');
INSERT INTO `medicalname` VALUES ('122', '异位肾', '/view/1463819.htm');
INSERT INTO `medicalname` VALUES ('123', '耳鼻咽喉艾滋病', '/view/1329873.htm');
INSERT INTO `medicalname` VALUES ('124', '食管闭锁', '/view/1469865.htm');
INSERT INTO `medicalname` VALUES ('125', '发作性嗜睡病', '/view/470344.htm');
INSERT INTO `medicalname` VALUES ('126', '外阴鳞状细胞癌', '/view/1474162.htm');
INSERT INTO `medicalname` VALUES ('127', '肌筋膜疼痛症', '/view/1408216.htm');
INSERT INTO `medicalname` VALUES ('128', '先天性代谢缺陷', '/view/1457643.htm');
INSERT INTO `medicalname` VALUES ('129', '三叉神经瘤', '/view/915124.htm');
INSERT INTO `medicalname` VALUES ('130', '人轮状病毒感染', '/view/1335898.htm');
INSERT INTO `medicalname` VALUES ('131', '老年高血压病', '/view/1391631.htm');
INSERT INTO `medicalname` VALUES ('132', '支持疗法', '/view/1137786.htm');
INSERT INTO `medicalname` VALUES ('133', '结膜色素痣', '/view/1331610.htm');
INSERT INTO `medicalname` VALUES ('134', '溢乳闭经综合征', '/view/1450676.htm');
INSERT INTO `medicalname` VALUES ('135', '老年慢性胃炎', '/view/1318925.htm');
INSERT INTO `medicalname` VALUES ('136', '寻常型天疱疮', '/view/1309154.htm');
INSERT INTO `medicalname` VALUES ('137', '肩部撞击症', '/view/3305806.htm');
INSERT INTO `medicalname` VALUES ('138', '妊娠合并弓形虫病', '/view/1478067.htm');
INSERT INTO `medicalname` VALUES ('139', '持续性发热', '/subview/9278714/9312606.htm');
INSERT INTO `medicalname` VALUES ('140', '自身免疫性血小板减少性紫癜', '/view/1367296.htm');
INSERT INTO `medicalname` VALUES ('141', '胃液反流', '/view/1864752.htm');
INSERT INTO `medicalname` VALUES ('142', '麦克尔憩室', '/view/1468041.htm');
INSERT INTO `medicalname` VALUES ('143', '营养性维生素D缺乏性手足抽搐症', '/view/1174105.htm');
INSERT INTO `medicalname` VALUES ('144', '麻痹性贝毒', '/view/725776.htm');
INSERT INTO `medicalname` VALUES ('145', '男性生殖系统结核', '/view/1463851.htm');
INSERT INTO `medicalname` VALUES ('146', '右室双出口', '/view/1342781.htm');
INSERT INTO `medicalname` VALUES ('147', '急性铅中毒', '/view/1333349.htm');
INSERT INTO `medicalname` VALUES ('148', '书写痉挛症', '/view/4117811.htm');
INSERT INTO `medicalname` VALUES ('149', '非伤寒沙门氏菌感染', '/view/1232091.htm');
INSERT INTO `medicalname` VALUES ('150', '关节半脱位', '/view/1387177.htm');
INSERT INTO `medicalname` VALUES ('151', '前尿道损伤', '/view/1463749.htm');
INSERT INTO `medicalname` VALUES ('152', '家庭主妇综合征', '/view/1051437.htm');
INSERT INTO `medicalname` VALUES ('153', '小儿脑肿瘤', '/view/1177589.htm');
INSERT INTO `medicalname` VALUES ('154', '革兰阴性杆菌败血症', '/view/1335881.htm');
INSERT INTO `medicalname` VALUES ('155', '颅内动静脉畸形', '/view/1317952.htm');
INSERT INTO `medicalname` VALUES ('156', '获得性巨结肠', '/view/1562677.htm');
INSERT INTO `medicalname` VALUES ('157', '疲劳骨折', '/view/911703.htm');
INSERT INTO `medicalname` VALUES ('158', '膀胱瘘', '/view/1450682.htm');
INSERT INTO `medicalname` VALUES ('159', '肾周围炎', '/view/1464342.htm');
INSERT INTO `medicalname` VALUES ('160', '病理性赌博', '/view/913464.htm');
INSERT INTO `medicalname` VALUES ('161', '渗出性心包炎', '/view/793743.htm');
INSERT INTO `medicalname` VALUES ('162', '真菌败血症', '/view/1335848.htm');
INSERT INTO `medicalname` VALUES ('163', '念珠菌性口炎', '/view/1390695.htm');
INSERT INTO `medicalname` VALUES ('164', '新生儿骨折', '/view/1478073.htm');
INSERT INTO `medicalname` VALUES ('165', '乳头状囊腺癌', '/view/1458453.htm');
INSERT INTO `medicalname` VALUES ('166', '颈内动脉闭塞综合征', '/view/1228268.htm');
INSERT INTO `medicalname` VALUES ('167', '火疳', '/view/145612.htm');
INSERT INTO `medicalname` VALUES ('168', '先天性小耳及外耳道闭锁', '/view/1328920.htm');
INSERT INTO `medicalname` VALUES ('169', '法洛三联症', '/view/1308011.htm');
INSERT INTO `medicalname` VALUES ('170', '班氏丝虫病', '/view/1309173.htm');
INSERT INTO `medicalname` VALUES ('171', '痔', '/view/1563207.htm');
INSERT INTO `medicalname` VALUES ('172', '老年无症状性心肌缺血', '/view/1318883.htm');
INSERT INTO `medicalname` VALUES ('173', '新生儿皮肤感染', '/view/1478111.htm');
INSERT INTO `medicalname` VALUES ('174', '新生儿高血糖', '/view/1177543.htm');
INSERT INTO `medicalname` VALUES ('175', '小儿低血糖症', '/view/1177537.htm');
INSERT INTO `medicalname` VALUES ('176', '产后肥胖症', '/subview/9268164/9300073.htm');
INSERT INTO `medicalname` VALUES ('177', '耳毒性耳聋', '/view/1328880.htm');
INSERT INTO `medicalname` VALUES ('178', '慢性病毒感染', '/view/926555.htm');
INSERT INTO `medicalname` VALUES ('179', '耻骨直肠肌综合征', '/view/1563273.htm');
INSERT INTO `medicalname` VALUES ('180', '外照射急性放射病', '/view/1473352.htm');
INSERT INTO `medicalname` VALUES ('181', '萘中毒', '/view/1333422.htm');
INSERT INTO `medicalname` VALUES ('182', '包涵体肌炎', '/view/1228207.htm');
INSERT INTO `medicalname` VALUES ('183', '急性化脓性腱鞘炎', '/view/280625.htm');
INSERT INTO `medicalname` VALUES ('184', '布卡综合征', '/view/1467694.htm');
INSERT INTO `medicalname` VALUES ('185', '颅内炎症', '/view/1329465.htm');
INSERT INTO `medicalname` VALUES ('186', '卵巢上皮癌', '/view/1474080.htm');
INSERT INTO `medicalname` VALUES ('187', '呼吸肌疲劳', '/view/2208853.htm');
INSERT INTO `medicalname` VALUES ('188', '回肠远端憩室', '/view/1468009.htm');
INSERT INTO `medicalname` VALUES ('189', '老年呼吸衰竭', '/view/1318866.htm');
INSERT INTO `medicalname` VALUES ('190', '会阴下降综合征', '/view/1563249.htm');
INSERT INTO `medicalname` VALUES ('191', '子宫脱垂症', '/view/867119.htm');
INSERT INTO `medicalname` VALUES ('192', '新生儿坏死小肠结肠炎', '/view/1175716.htm');
INSERT INTO `medicalname` VALUES ('193', '蜡泪样骨病', '/view/1959468.htm');
INSERT INTO `medicalname` VALUES ('194', '粘液性水肿昏迷', '/subview/6794582/6925008.htm');
INSERT INTO `medicalname` VALUES ('195', '直肠前突综合征', '/view/1563306.htm');
INSERT INTO `medicalname` VALUES ('196', '外照射慢性放射病', '/view/1473348.htm');
INSERT INTO `medicalname` VALUES ('197', '闭塞性周围动脉粥样硬化', '/view/1462688.htm');
INSERT INTO `medicalname` VALUES ('198', '中毒性休克综合症', '/view/61991.htm');
INSERT INTO `medicalname` VALUES ('199', '急骤进行性肾小球肾炎', '/view/1328112.htm');
INSERT INTO `medicalname` VALUES ('200', '胰岛素抵抗', '/view/63384.htm');
INSERT INTO `medicalname` VALUES ('201', '马凡氏综合症', '/view/65292.htm');
INSERT INTO `medicalname` VALUES ('202', '鼻源性颅内并发症', '/view/1328268.htm');
INSERT INTO `medicalname` VALUES ('203', '中毒型细菌性痢疾', '/view/1174112.htm');
INSERT INTO `medicalname` VALUES ('204', '幼年性类风湿性关节炎', '/view/1309192.htm');
INSERT INTO `medicalname` VALUES ('205', '冠状动脉疾病', '/view/61621.htm');
INSERT INTO `medicalname` VALUES ('206', '全身性外科感染', '/view/1418583.htm');
INSERT INTO `medicalname` VALUES ('207', '食管贲门粘膜撕裂综合征', '/view/1454020.htm');
INSERT INTO `medicalname` VALUES ('208', '头面部烧伤', '/view/1414704.htm');
INSERT INTO `medicalname` VALUES ('209', '煤油中毒', '/view/1333382.htm');
INSERT INTO `medicalname` VALUES ('210', '不可复性盘前移位', '/view/1387886.htm');
INSERT INTO `medicalname` VALUES ('211', '原发性皮肤滤泡中心细胞性淋巴瘤', '/view/2074353.htm');
INSERT INTO `medicalname` VALUES ('212', '梅毒所致精神障碍', '/view/1472377.htm');
INSERT INTO `medicalname` VALUES ('213', '急性或亚急性细菌性结膜炎', '/view/1310685.htm');
INSERT INTO `medicalname` VALUES ('214', '冷纤维蛋白原血症', '/view/2075672.htm');
INSERT INTO `medicalname` VALUES ('215', '正中神经麻痹', '/view/1219414.htm');
INSERT INTO `medicalname` VALUES ('216', '咽结核', '/view/1309164.htm');
INSERT INTO `medicalname` VALUES ('217', '遗传性代谢缺陷病', '/view/1383781.htm');
INSERT INTO `medicalname` VALUES ('218', '咽喉创伤', '/view/144061.htm');
INSERT INTO `medicalname` VALUES ('219', '迁延性昏迷', '/view/1456027.htm');
INSERT INTO `medicalname` VALUES ('220', '大脑后动脉闭塞综合征', '/view/1219436.htm');
INSERT INTO `medicalname` VALUES ('221', '偏侧面肌痉挛', '/view/1219432.htm');
INSERT INTO `medicalname` VALUES ('222', '口腔颌面部损伤', '/view/1180838.htm');
INSERT INTO `medicalname` VALUES ('223', '耳鼻咽喉结核', '/view/1329904.htm');
INSERT INTO `medicalname` VALUES ('224', '老年猝死型冠心病', '/view/1318813.htm');
INSERT INTO `medicalname` VALUES ('225', '先天性弓形虫病', '/view/1385520.htm');
INSERT INTO `medicalname` VALUES ('226', '肱骨髁骨折', '/view/1417480.htm');
INSERT INTO `medicalname` VALUES ('227', '肠绦虫病', '/view/1385546.htm');
INSERT INTO `medicalname` VALUES ('228', '营养性贫血', '/view/55349.htm');
INSERT INTO `medicalname` VALUES ('229', '新生儿急性腹泻', '/view/53858.htm');
INSERT INTO `medicalname` VALUES ('230', '化脓性脑膜脑炎', '/view/1326165.htm');
INSERT INTO `medicalname` VALUES ('231', '超敏性血管炎', '/view/1317889.htm');
INSERT INTO `medicalname` VALUES ('232', '纤维蛋白性心包炎', '/view/1460798.htm');
INSERT INTO `medicalname` VALUES ('233', '特发性弥漫性肺纤维化', '/view/1219373.htm');
INSERT INTO `medicalname` VALUES ('234', '老年消化性溃疡', '/view/1318877.htm');
INSERT INTO `medicalname` VALUES ('235', '先天性喉软骨畸形', '/view/1331680.htm');
INSERT INTO `medicalname` VALUES ('236', '自体瓣膜心内膜炎', '/view/740662.htm');
INSERT INTO `medicalname` VALUES ('237', '下颌关节复位', '/subview/5484636/5521607.htm');
INSERT INTO `medicalname` VALUES ('238', '流行性角膜炎', '/view/1309151.htm');
INSERT INTO `medicalname` VALUES ('239', '无症状性溃疡', '/view/1366535.htm');
INSERT INTO `medicalname` VALUES ('240', '继发性Raynaud综合征', '/view/1460928.htm');
INSERT INTO `medicalname` VALUES ('241', '癔病性失音', '/view/1321201.htm');
INSERT INTO `medicalname` VALUES ('242', '喉淀粉样变', '/view/1330668.htm');
INSERT INTO `medicalname` VALUES ('243', '重型阿弗他溃疡', '/view/1387234.htm');
INSERT INTO `medicalname` VALUES ('244', '纵火癖', '/view/1141125.htm');
INSERT INTO `medicalname` VALUES ('245', '产伤骨折', '/view/1683720.htm');
INSERT INTO `medicalname` VALUES ('246', '眼囊尾蚴病', '/view/1384058.htm');
INSERT INTO `medicalname` VALUES ('247', '细粒棘球绦虫病', '/view/1366622.htm');
INSERT INTO `medicalname` VALUES ('248', '巴瑞特综合征', '/view/1452897.htm');
INSERT INTO `medicalname` VALUES ('249', '缺血性挛缩', '/view/1192357.htm');
INSERT INTO `medicalname` VALUES ('250', '筛窦恶性肿瘤', '/view/1465930.htm');
INSERT INTO `medicalname` VALUES ('251', '儿茶酚氨症', '/view/1463811.htm');
INSERT INTO `medicalname` VALUES ('252', '间动电疗法', '/view/1637054.htm');
INSERT INTO `medicalname` VALUES ('253', '耳鼻咽喉梅毒', '/view/1309181.htm');
INSERT INTO `medicalname` VALUES ('254', '喉咽肿瘤', '/view/1328875.htm');
INSERT INTO `medicalname` VALUES ('255', '皮肤型黑热病', '/view/1309186.htm');
INSERT INTO `medicalname` VALUES ('256', '人芽囊原虫病', '/view/1366848.htm');
INSERT INTO `medicalname` VALUES ('257', '颞下颌关节急性前脱位', '/view/1319536.htm');
INSERT INTO `medicalname` VALUES ('258', '快速进展性牙周炎', '/view/465066.htm');
INSERT INTO `medicalname` VALUES ('259', '多瓣膜病', '/view/740613.htm');
INSERT INTO `medicalname` VALUES ('260', 'Fournier综合征', '/view/1563189.htm');
INSERT INTO `medicalname` VALUES ('261', '老年肺栓塞', '/view/1318801.htm');
INSERT INTO `medicalname` VALUES ('262', '老年缺血性心肌病', '/view/1318252.htm');
INSERT INTO `medicalname` VALUES ('263', '梅毒性主动脉瓣关闭不全', '/view/1459937.htm');
INSERT INTO `medicalname` VALUES ('264', '腹膜后间隙出血', '/view/1451647.htm');
INSERT INTO `medicalname` VALUES ('265', '肾皮质髓质脓肿', '/view/1450691.htm');
INSERT INTO `medicalname` VALUES ('266', '棘头虫病', '/view/1333445.htm');
INSERT INTO `medicalname` VALUES ('267', '激素依赖性皮炎', '/view/115549.htm');
INSERT INTO `medicalname` VALUES ('268', '糖脂病', '/view/120060.htm');
INSERT INTO `medicalname` VALUES ('269', '茶芽枯病', '/view/117542.htm');
INSERT INTO `medicalname` VALUES ('270', '喉挫伤', '/view/1329909.htm');
INSERT INTO `medicalname` VALUES ('271', '腹型偏头痛综合征', '/view/1451623.htm');
INSERT INTO `medicalname` VALUES ('272', '职业性喉病', '/view/1331796.htm');
INSERT INTO `medicalname` VALUES ('273', '喉感觉神经性疾病', '/view/1420532.htm');
INSERT INTO `medicalname` VALUES ('274', '周围血管损伤', '/view/1418495.htm');
INSERT INTO `medicalname` VALUES ('275', '家族性结肠腺瘤伴多发肿瘤综合征', '/view/1454026.htm');
INSERT INTO `medicalname` VALUES ('276', '筒线虫病', '/view/1366827.htm');
INSERT INTO `medicalname` VALUES ('277', '蜱传回归热', '/view/1384113.htm');
INSERT INTO `medicalname` VALUES ('278', '外照射亚急性放射病', '/view/1473354.htm');
INSERT INTO `medicalname` VALUES ('279', '喉插管损伤', '/view/1420708.htm');
INSERT INTO `medicalname` VALUES ('280', '肝毛细线虫病', '/view/1366470.htm');
INSERT INTO `medicalname` VALUES ('281', '非特异性炎性肠疾病', '/view/1418170.htm');
INSERT INTO `medicalname` VALUES ('282', '腹卒中综合征', '/view/1451617.htm');
INSERT INTO `medicalname` VALUES ('283', '烧伤全身性感染', '/view/1317905.htm');
INSERT INTO `medicalname` VALUES ('284', '夸休可尔症', '/view/1783466.htm');
INSERT INTO `medicalname` VALUES ('285', '皮质白内障', '/view/1310951.htm');
INSERT INTO `medicalname` VALUES ('286', '胃灼热', '/view/1861946.htm');
INSERT INTO `medicalname` VALUES ('287', '大肠损伤', '/view/1462719.htm');
INSERT INTO `medicalname` VALUES ('288', '甲基丙二酸尿症', '/view/1865248.htm');
INSERT INTO `medicalname` VALUES ('289', '腹膜后疝', '/view/1451634.htm');
INSERT INTO `medicalname` VALUES ('290', '自身免疫性耳聋', '/view/1331693.htm');
INSERT INTO `medicalname` VALUES ('291', '局限性迷路炎', '/view/1420883.htm');
INSERT INTO `medicalname` VALUES ('292', '鼻前颅底肿瘤', '/view/1331628.htm');
INSERT INTO `medicalname` VALUES ('293', '内脏蠕虫蚴移行症', '/view/1335987.htm');
INSERT INTO `medicalname` VALUES ('294', '老年性根龋', '/view/1387151.htm');
INSERT INTO `medicalname` VALUES ('295', '开放性颅脑伤', '/view/1317966.htm');
INSERT INTO `medicalname` VALUES ('296', '油菜黑斑病', '/view/4653699.htm');
INSERT INTO `medicalname` VALUES ('297', '异位蛔虫症', '/view/1384090.htm');
INSERT INTO `medicalname` VALUES ('298', '鲤春病毒病', '/subview/6148746/6232813.htm');
INSERT INTO `medicalname` VALUES ('299', '泡球蚴病', '/view/1366474.htm');
INSERT INTO `medicalname` VALUES ('300', '异形吸虫病', '/view/1366845.htm');
INSERT INTO `medicalname` VALUES ('301', '微小膜壳绦虫病', '/view/325092.htm');
INSERT INTO `medicalname` VALUES ('302', '脑旋毛虫病', '/view/1465866.htm');
INSERT INTO `medicalname` VALUES ('303', '膈膨出和麻痹', '/view/1454035.htm');
INSERT INTO `medicalname` VALUES ('304', 'KlippeL', '/view/1563200.htm');
INSERT INTO `medicalname` VALUES ('305', '慢性充血性脾肿大', '/subview/8241551/8164380.htm');
INSERT INTO `medicalname` VALUES ('306', '涎腺的未分化癌', '/view/1458467.htm');
INSERT INTO `medicalname` VALUES ('307', '先天性囊袋状短结肠综合征', '/view/1563176.htm');
INSERT INTO `medicalname` VALUES ('308', '胰腺多肽瘤', '/view/1463831.htm');
INSERT INTO `medicalname` VALUES ('309', '动脉粥样硬化性主动脉瘤', '/view/1318785.htm');
INSERT INTO `medicalname` VALUES ('310', '腹膜后腔液体渗病', '/view/1451637.htm');
INSERT INTO `medicalname` VALUES ('311', '穿腹膜疝', '/view/1452882.htm');
INSERT INTO `medicalname` VALUES ('312', '艾氏小杆线虫病', '/view/1328178.htm');
INSERT INTO `medicalname` VALUES ('313', '膈扑动', '/view/1454034.htm');
INSERT INTO `medicalname` VALUES ('314', '梭状芽胞杆菌性肌坏死', '/view/1323248.htm');
INSERT INTO `medicalname` VALUES ('315', '颞下颌间挛缩', '/view/1388037.htm');
INSERT INTO `medicalname` VALUES ('316', '小儿结节病', '/subview/7883905/7784251.htm');
INSERT INTO `medicalname` VALUES ('317', '芍药叶霉病', '/subview/8116312/8028934.htm');
INSERT INTO `medicalname` VALUES ('318', '利德尔综合征', '/view/4422815.htm');
INSERT INTO `medicalname` VALUES ('319', '肺诺卡菌病', '/view/4566501.htm');
INSERT INTO `medicalname` VALUES ('320', '泡沫棘球蚴病', '/view/1335868.htm');
INSERT INTO `medicalname` VALUES ('321', '棉苗炭疽病', '/view/4622213.htm');
INSERT INTO `medicalname` VALUES ('322', '茶白纹羽病', '/view/4668179.htm');
INSERT INTO `medicalname` VALUES ('323', '大豆链格孢黑斑病', '/subview/5382584/5416928.htm');
INSERT INTO `medicalname` VALUES ('324', '豇豆类菌原体丛枝病', '/subview/5354461/5387707.htm');
INSERT INTO `medicalname` VALUES ('325', '檫树溃疡病', '/subview/8403258/8334623.htm');
INSERT INTO `medicalname` VALUES ('326', '痔疮', '/view/6945.htm');
INSERT INTO `medicalname` VALUES ('327', '内分泌失调', '/view/160.htm');
INSERT INTO `medicalname` VALUES ('328', '咽喉炎', '/view/1045276.htm');
INSERT INTO `medicalname` VALUES ('329', '腰椎间盘突出', '/view/9301.htm');
INSERT INTO `medicalname` VALUES ('330', '头晕', '/view/70460.htm');
INSERT INTO `medicalname` VALUES ('331', '腰疼', '/view/598012.htm');
INSERT INTO `medicalname` VALUES ('332', '食道癌', '/view/513272.htm');
INSERT INTO `medicalname` VALUES ('333', '高血糖', '/view/169250.htm');
INSERT INTO `medicalname` VALUES ('334', '腰痛', '/view/10210.htm');
INSERT INTO `medicalname` VALUES ('335', '牙结石', '/view/30317.htm');
INSERT INTO `medicalname` VALUES ('336', '渐冻人', '/view/263780.htm');
INSERT INTO `medicalname` VALUES ('337', '过敏性皮炎', '/view/39464.htm');
INSERT INTO `medicalname` VALUES ('338', '厌食症', '/view/140846.htm');
INSERT INTO `medicalname` VALUES ('339', '高原反应', '/view/881.htm');
INSERT INTO `medicalname` VALUES ('340', '汗疱疹', '/view/363064.htm');
INSERT INTO `medicalname` VALUES ('341', '乳房肿块', '/view/719275.htm');
INSERT INTO `medicalname` VALUES ('342', '血虚', '/view/245071.htm');
INSERT INTO `medicalname` VALUES ('343', '脱肛', '/view/684801.htm');
INSERT INTO `medicalname` VALUES ('344', '美尼尔综合症', '/view/26703.htm');
INSERT INTO `medicalname` VALUES ('345', '胃窦炎', '/view/134258.htm');
INSERT INTO `medicalname` VALUES ('346', '嘴唇干裂', '/view/563125.htm');
INSERT INTO `medicalname` VALUES ('347', '疖子', '/view/141270.htm');
INSERT INTO `medicalname` VALUES ('348', '呕吐', '/view/32198.htm');
INSERT INTO `medicalname` VALUES ('349', '肠痉挛', '/view/82294.htm');
INSERT INTO `medicalname` VALUES ('350', '食道炎', '/view/1052411.htm');
INSERT INTO `medicalname` VALUES ('351', '肛门息肉', '/view/1256298.htm');
INSERT INTO `medicalname` VALUES ('352', '腹痛', '/view/121520.htm');
INSERT INTO `medicalname` VALUES ('353', '蛀牙', '/view/328050.htm');
INSERT INTO `medicalname` VALUES ('354', '外阴白斑', '/view/776799.htm');
INSERT INTO `medicalname` VALUES ('355', '痘痕', '/view/840739.htm');
INSERT INTO `medicalname` VALUES ('356', '盲肠炎', '/view/393583.htm');
INSERT INTO `medicalname` VALUES ('357', '息肉', '/view/94479.htm');
INSERT INTO `medicalname` VALUES ('358', '肾病综合症', '/view/9766.htm');
INSERT INTO `medicalname` VALUES ('359', '唇炎', '/view/1117840.htm');
INSERT INTO `medicalname` VALUES ('360', '皮肤划痕症', '/view/195587.htm');
INSERT INTO `medicalname` VALUES ('361', '包皮炎', '/view/553691.htm');
INSERT INTO `medicalname` VALUES ('362', '抽筋', '/view/21661.htm');
INSERT INTO `medicalname` VALUES ('363', '痰多', '/view/569106.htm');
INSERT INTO `medicalname` VALUES ('364', '过敏性哮喘', '/view/329747.htm');
INSERT INTO `medicalname` VALUES ('365', '恐高症', '/view/61970.htm');
INSERT INTO `medicalname` VALUES ('366', '肛窦炎', '/view/1684235.htm');
INSERT INTO `medicalname` VALUES ('367', '慢性病', '/view/266364.htm');
INSERT INTO `medicalname` VALUES ('368', '颞下颌关节炎', '/view/710240.htm');
INSERT INTO `medicalname` VALUES ('369', '肠胃疾病', '/view/1676121.htm');
INSERT INTO `medicalname` VALUES ('370', '淋巴肉芽肿', '/view/1680075.htm');
INSERT INTO `medicalname` VALUES ('371', '十二脂肠溃疡', '/view/1848304.htm');
INSERT INTO `medicalname` VALUES ('372', '有毒动植物食物中毒', '/view/1666867.htm');
INSERT INTO `medicalname` VALUES ('373', '有机氮农药', '/view/1666857.htm');
INSERT INTO `medicalname` VALUES ('374', 'Ehler', '/view/1674362.htm');
INSERT INTO `medicalname` VALUES ('375', 'graves眼病', '/view/712337.htm');
INSERT INTO `medicalname` VALUES ('376', '精神运动性发作', '/view/1659232.htm');
INSERT INTO `medicalname` VALUES ('377', '饮酒性精神障碍', '/view/1315739.htm');
INSERT INTO `medicalname` VALUES ('378', '退变性关节炎', '/view/1659277.htm');
INSERT INTO `medicalname` VALUES ('379', '齿状核红核苍白球路易体萎缩症', '/view/1512055.htm');
INSERT INTO `medicalname` VALUES ('380', '遗传性周期性共济失调', '/view/1512067.htm');
INSERT INTO `medicalname` VALUES ('381', '黄斑部病变', '/view/1313841.htm');
INSERT INTO `medicalname` VALUES ('382', '继发性血小板减少症', '/view/714202.htm');
INSERT INTO `medicalname` VALUES ('383', '原发性肝内硬化综合征', '/view/714209.htm');
INSERT INTO `medicalname` VALUES ('384', '颌面部间隙感染', '/view/1317491.htm');
INSERT INTO `medicalname` VALUES ('385', '周围神经病损', '/view/1677627.htm');
INSERT INTO `medicalname` VALUES ('386', '单纯性梅毒性主动脉炎', '/view/1315864.htm');
INSERT INTO `medicalname` VALUES ('387', '急性浆液性根尖周炎', '/view/1317543.htm');
INSERT INTO `medicalname` VALUES ('388', '社会病', '/view/1851398.htm');
INSERT INTO `medicalname` VALUES ('389', '葡萄球菌病', '/view/1848953.htm');
INSERT INTO `medicalname` VALUES ('390', '慢性复发性腮腺炎', '/view/1317697.htm');
INSERT INTO `medicalname` VALUES ('391', '牙髓息肉', '/view/714965.htm');
INSERT INTO `medicalname` VALUES ('392', '维生素C缺乏病', '/view/268916.htm');
INSERT INTO `medicalname` VALUES ('393', '股骨坏死', '/view/1311941.htm');
INSERT INTO `medicalname` VALUES ('394', '高血压眼底病变', '/view/1494309.htm');
INSERT INTO `medicalname` VALUES ('395', '外伤性青光眼', '/view/1495564.htm');
INSERT INTO `medicalname` VALUES ('396', '静脉血压', '/view/63086.htm');
INSERT INTO `medicalname` VALUES ('397', '胸主动脉动脉瘤', '/view/54097.htm');
INSERT INTO `medicalname` VALUES ('398', '马查多', '/view/1512045.htm');
INSERT INTO `medicalname` VALUES ('399', '辐射性眼损伤', '/view/1310888.htm');
INSERT INTO `medicalname` VALUES ('400', '酒中毒性精神障碍', '/view/1313801.htm');
INSERT INTO `medicalname` VALUES ('401', '高锰酸钾中毒', '/view/1333419.htm');
INSERT INTO `medicalname` VALUES ('402', '眼外伤', '/view/1310693.htm');
INSERT INTO `medicalname` VALUES ('403', '肌束震颤', '/view/1335415.htm');
INSERT INTO `medicalname` VALUES ('404', '前部缺血性视神经病变', '/view/1311070.htm');
INSERT INTO `medicalname` VALUES ('405', '胁痛', '/view/56237.htm');
INSERT INTO `medicalname` VALUES ('406', '遗传性痉挛性共济失调', '/view/1511936.htm');
INSERT INTO `medicalname` VALUES ('407', '公害病', '/view/1500799.htm');
INSERT INTO `medicalname` VALUES ('408', '间变性大细胞淋巴瘤', '/view/1505188.htm');
INSERT INTO `medicalname` VALUES ('409', '心因性精神障碍', '/view/1313797.htm');
INSERT INTO `medicalname` VALUES ('410', '糖尿病白内障', '/view/1495569.htm');
INSERT INTO `medicalname` VALUES ('411', '青少年性黄斑变性', '/view/1494361.htm');
INSERT INTO `medicalname` VALUES ('412', '鼻窦粘膜慢性化脓性炎症', '/view/1311842.htm');
INSERT INTO `medicalname` VALUES ('413', '缺钾症', '/view/709939.htm');
INSERT INTO `medicalname` VALUES ('414', '新生儿贫血', '/view/1493516.htm');
INSERT INTO `medicalname` VALUES ('415', '化脓性腮腺炎', '/view/62004.htm');
INSERT INTO `medicalname` VALUES ('416', '脐膨出', '/view/709863.htm');
INSERT INTO `medicalname` VALUES ('417', '筋膜间隔区内综合征', '/view/709796.htm');
INSERT INTO `medicalname` VALUES ('418', '室上速', '/view/263378.htm');
INSERT INTO `medicalname` VALUES ('419', '足跟痛', '/view/94718.htm');
INSERT INTO `medicalname` VALUES ('420', '鼻甲肥大', '/view/1411593.htm');
INSERT INTO `medicalname` VALUES ('421', '干燥综合症', '/view/278972.htm');
INSERT INTO `medicalname` VALUES ('422', '横纹肌溶解症', '/view/726255.htm');
INSERT INTO `medicalname` VALUES ('423', '色斑', '/view/538449.htm');
INSERT INTO `medicalname` VALUES ('424', '尿道感染', '/view/1344975.htm');
INSERT INTO `medicalname` VALUES ('425', '脊椎病', '/view/1089547.htm');
INSERT INTO `medicalname` VALUES ('426', '十二指肠球部溃疡', '/view/1924678.htm');
INSERT INTO `medicalname` VALUES ('427', '抽动症', '/view/758763.htm');
INSERT INTO `medicalname` VALUES ('428', '尿隐血', '/view/891216.htm');
INSERT INTO `medicalname` VALUES ('429', '疤痕', '/view/402364.htm');
INSERT INTO `medicalname` VALUES ('430', '虚汗', '/view/782670.htm');
INSERT INTO `medicalname` VALUES ('431', '心动过速', '/view/522699.htm');
INSERT INTO `medicalname` VALUES ('432', '接吻病', '/view/1885858.htm');
INSERT INTO `medicalname` VALUES ('433', '差时症', '/view/3123339.htm');
INSERT INTO `medicalname` VALUES ('434', '习惯性流产', '/view/274585.htm');
INSERT INTO `medicalname` VALUES ('435', '过敏性荨麻疹', '/view/2123800.htm');
INSERT INTO `medicalname` VALUES ('436', '肾功能衰竭', '/view/959236.htm');
INSERT INTO `medicalname` VALUES ('437', '尿急', '/view/1216250.htm');
INSERT INTO `medicalname` VALUES ('438', '侏儒症', '/view/36457.htm');
INSERT INTO `medicalname` VALUES ('439', '肌腱炎', '/view/1305768.htm');
INSERT INTO `medicalname` VALUES ('440', '胶质瘤', '/view/395625.htm');
INSERT INTO `medicalname` VALUES ('441', '肠系膜淋巴结炎', '/view/1923507.htm');
INSERT INTO `medicalname` VALUES ('442', '疤痕疙瘩', '/view/632326.htm');
INSERT INTO `medicalname` VALUES ('443', '腰椎病', '/view/1175735.htm');
INSERT INTO `medicalname` VALUES ('444', '椎', '/view/1321027.htm');
INSERT INTO `medicalname` VALUES ('445', '脑水肿', '/view/292029.htm');
INSERT INTO `medicalname` VALUES ('446', '高血压病', '/subview/431943/5111537.htm');
INSERT INTO `medicalname` VALUES ('447', '黄疸肝炎', '/view/735766.htm');
INSERT INTO `medicalname` VALUES ('448', '疳积', '/view/121469.htm');
INSERT INTO `medicalname` VALUES ('449', '子宫出血', '/view/817045.htm');
INSERT INTO `medicalname` VALUES ('450', '唇腭裂', '/view/1079601.htm');
INSERT INTO `medicalname` VALUES ('451', '心肌病', '/view/51659.htm');
INSERT INTO `medicalname` VALUES ('452', '狂躁症', '/view/645816.htm');
INSERT INTO `medicalname` VALUES ('453', '乙型肝炎表面抗体', '/view/706332.htm');
INSERT INTO `medicalname` VALUES ('454', '非典后遗症', '/view/3058021.htm');
INSERT INTO `medicalname` VALUES ('455', '胆管结石', '/view/72588.htm');
INSERT INTO `medicalname` VALUES ('456', '恶性淋巴瘤', '/view/76606.htm');
INSERT INTO `medicalname` VALUES ('457', '气滞', '/view/943989.htm');
INSERT INTO `medicalname` VALUES ('458', '幽门螺旋杆菌病', '/view/1293277.htm');
INSERT INTO `medicalname` VALUES ('459', '罗圈腿', '/view/443146.htm');
INSERT INTO `medicalname` VALUES ('460', '下呼吸道感染', '/view/1297527.htm');
INSERT INTO `medicalname` VALUES ('461', '黄斑病变', '/view/1704882.htm');
INSERT INTO `medicalname` VALUES ('462', '染色体异常', '/view/822537.htm');
INSERT INTO `medicalname` VALUES ('463', '子宫肌腺症', '/view/817024.htm');
INSERT INTO `medicalname` VALUES ('464', '单核细胞增多症', '/view/1785923.htm');
INSERT INTO `medicalname` VALUES ('465', '高位截瘫', '/view/1382861.htm');
INSERT INTO `medicalname` VALUES ('466', '胃十二指肠溃疡', '/view/197276.htm');
INSERT INTO `medicalname` VALUES ('467', '高尿酸症', '/view/283120.htm');
INSERT INTO `medicalname` VALUES ('468', '甲状腺肿', '/view/26646.htm');
INSERT INTO `medicalname` VALUES ('469', '非小细胞肺癌', '/view/1539847.htm');
INSERT INTO `medicalname` VALUES ('470', '龅牙', '/view/619803.htm');
INSERT INTO `medicalname` VALUES ('471', '新生儿溶血', '/view/1476217.htm');
INSERT INTO `medicalname` VALUES ('472', '痄腮', '/view/322308.htm');
INSERT INTO `medicalname` VALUES ('473', '僵直性脊椎炎', '/view/99584.htm');
INSERT INTO `medicalname` VALUES ('474', '过敏性湿疹', '/view/1827715.htm');
INSERT INTO `medicalname` VALUES ('475', '二次元禁断综合症', '/view/68894.htm');
INSERT INTO `medicalname` VALUES ('476', '虫咬性皮炎', '/view/765170.htm');
INSERT INTO `medicalname` VALUES ('477', '静脉输液', '/view/324541.htm');
INSERT INTO `medicalname` VALUES ('478', '牛痘', '/view/87214.htm');
INSERT INTO `medicalname` VALUES ('479', '肺鳞癌', '/view/1542116.htm');
INSERT INTO `medicalname` VALUES ('480', '遗尿', '/view/251623.htm');
INSERT INTO `medicalname` VALUES ('481', '干呕', '/view/559849.htm');
INSERT INTO `medicalname` VALUES ('482', '代谢综合征', '/view/717793.htm');
INSERT INTO `medicalname` VALUES ('483', '格林巴利', '/view/2138371.htm');
INSERT INTO `medicalname` VALUES ('484', '下肢静脉血栓', '/view/3212479.htm');
INSERT INTO `medicalname` VALUES ('485', '慢性肾功能不全', '/view/445208.htm');
INSERT INTO `medicalname` VALUES ('486', '腰脱', '/view/1315499.htm');
INSERT INTO `medicalname` VALUES ('487', '肠道菌群失调', '/view/126953.htm');
INSERT INTO `medicalname` VALUES ('488', '心脏肥大', '/view/247922.htm');
INSERT INTO `medicalname` VALUES ('489', '宫颈炎症', '/view/1304060.htm');
INSERT INTO `medicalname` VALUES ('490', '昏睡病', '/view/66883.htm');
INSERT INTO `medicalname` VALUES ('491', '犬蛔虫病', '/view/66056.htm');
INSERT INTO `medicalname` VALUES ('492', '节日综合症', '/view/65301.htm');
INSERT INTO `medicalname` VALUES ('493', '混合性耳聋', '/view/1328286.htm');
INSERT INTO `medicalname` VALUES ('494', '耳源性颅内并发症', '/view/1328325.htm');
INSERT INTO `medicalname` VALUES ('495', '流行性脑膜炎', '/view/71860.htm');
INSERT INTO `medicalname` VALUES ('496', '瓣膜病', '/view/1328553.htm');
INSERT INTO `medicalname` VALUES ('497', '高血脂症', '/view/606358.htm');
INSERT INTO `medicalname` VALUES ('498', '烫伤疤痕', '/view/1320922.htm');
