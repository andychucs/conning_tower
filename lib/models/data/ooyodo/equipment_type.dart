import 'dart:ui';

Map<EquipmentMainFilter, List<int>> equipmentMainFilterSubType2Map = {
  EquipmentMainFilter.none: [],
  EquipmentMainFilter.fighter: [6, 56],
  EquipmentMainFilter.attack: [7, 8, 57, 58],
  EquipmentMainFilter.reconAndSeaplane: [9, 10, 11, 25, 26, 45, 59, 94],
  EquipmentMainFilter.gun: [1, 2, 3, 38],
  EquipmentMainFilter.ammo: [18, 19, 33],
  EquipmentMainFilter.aaGun: [4, 21, 36, 95],
  EquipmentMainFilter.torpedo: [5, 22, 32],
  EquipmentMainFilter.antiSub: [14, 15, 40],
  EquipmentMainFilter.radar: [12, 13, 51, 93],
  EquipmentMainFilter.vehicle: [24, 30, 46, 52],
  EquipmentMainFilter.improvementAndResource: [23, 35, 39, 43, 44],
  EquipmentMainFilter.ldAircraft: [41, 47, 48, 49, 53],
  EquipmentMainFilter.engineAndArmor: [16, 17, 27, 28],
  EquipmentMainFilter.searchlightAndDevice: [29, 31, 34, 37, 42, 54],
  EquipmentMainFilter.other: [20, 50]
};

final knowEquipmentMainFilterIds = [
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.fighter],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.attack],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.reconAndSeaplane],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.gun],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.ammo],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.aaGun],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.torpedo],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.antiSub],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.radar],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.vehicle],
  ...?equipmentMainFilterSubType2Map[
  EquipmentMainFilter.improvementAndResource],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.ldAircraft],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.engineAndArmor],
  ...?equipmentMainFilterSubType2Map[EquipmentMainFilter.searchlightAndDevice]
];

enum EquipmentMainFilter {
  none,
  fighter,
  attack,
  reconAndSeaplane,
  gun,
  ammo,
  aaGun,
  torpedo,
  antiSub,
  radar,
  vehicle,
  improvementAndResource,
  ldAircraft,
  engineAndArmor,
  searchlightAndDevice,
  other
}

enum EquipmentMainType {
  none,
  gun, // 砲
  torpedo, // 魚雷・潜航艇
  carrierAircraft, // 艦載機
  machineGunAmmo, // 機銃・特殊弾
  enemyDetection, // 偵察機・電探・水上機
  improvement, // 強化・修理要員
  antiSubEquipment, // 対潜装備
  landingCraft, // 上陸用舟艇・探照灯
  supplyContainer, // 簡易輸送部材
  shipRepairFacility, // 艦艇修理施設
  starShell, // 照明弾
  commandFacility, // 司令部施設
  aviationPersonnel, // 航空要員
  aaFireDirector, // 高射装置
  antiGround, // 対地装備
  shipPersonnel, // 水上艦要員
  largeFlyingBoat, // 大型飛行艇
  combatRation, // 戦闘糧食
  supplies, // 補給物資
  amphibiousTank, // 特型内火艇
  lbAttackAircraft, // 陸上攻撃機
  interceptor, // 陸上戦闘機
  transportDevice, // 輸送機材
  submarineEquipment, // 潜水艦装備
  lbReconAircraft, // 陸上偵察機
  lbHeavyBomber, // 陸上重爆機
  armyUnits, // 陸戦部隊
  smokeGenerator, // 発煙装置
  barrageBalloon, // 防空気球
}

enum EquipmentSubType1 {
  none,
  mainGun, // 主砲
  secondaryGun, // 副砲
  torpedo, // 魚雷
  midgetSubmarine, // 特殊潜航艇
  carrierAircraft, // 艦上機
  aaMachineGun, // 対空機銃
  reconAircraft, // 偵察機
  radar, // 電探
  improvement, // 強化
  sonar, // ソナー
  unknown1, // ?
  unknown2, // ?
  unknown3, // ?
  landingCraft, // 上陸用舟艇
  autogyro, // オートジャイロ
  antiSubPatrol, // 対潜哨戒機
  extraArmor, // 追加装甲
  searchlight, // 探照灯
  supplyContainer, // 簡易輸送部材
  shipRepairFacility, // 艦艇修理施設
  starShell, // 照明弾
  commandFacility, // 司令部施設
  aviationPersonnel, // 航空要員
  aaFireDirector, // 高射装置
  apShell, // 対艦強化弾
  agRocketArtillery, // 対地ロケット兵装
  shipPersonnel, // 水上艦要員
  aaShell, // 対空強化弾
  aaRocketLauncher, // 対空ロケットランチャー
  emergencyRepair, // 応急修理要員
  engine, // 機関部強化
  depthCharge, // 爆雷
  largeFlyingBoat, // 大型飛行艇
  combatRation, // 戦闘糧食
  supplies, // 補給物資
  seaplaneFighter, // 水上戦闘機
  amphibiousTank, // 特型内火艇
  lbAttackAircraft, // 陸上攻撃機
  interceptor, // 陸上戦闘機
  jetFighterBomber, // 噴式戦闘爆撃機
  transportDevice, // 輸送機材
  submarineEquipment, // 潜水艦装備
  seaplaneBomber, // 水上爆撃機
  helicopter, // ヘリコプター
  ddTank, // DD戦車
  lbHeavyBomber, // 陸上重爆機
  armyUnits, // 武装艇
  navalCombatUnits, // 陸戦部隊
  torpedoLauncher, // 艦載発煙装置
  torpedoBall, // 阻塞気球
}