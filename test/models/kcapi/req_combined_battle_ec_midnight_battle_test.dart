import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/req/battle/req_combined_battle_ec_midnight_battle_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqCombinedBattleECMidnightBattleEntity.source, () {
    var json = jsonDecode('''{
                "api_result": 1,
                "api_result_msg": "成功",
                "api_data": {
                    "api_deck_id": 1,
                    "api_formation": [
                        1,
                        13,
                        1
                    ],
                    "api_f_nowhps": [
                        39,
                        71,
                        61,
                        16,
                        21,
                        34
                    ],
                    "api_f_maxhps": [
                        41,
                        107,
                        61,
                        62,
                        59,
                        43
                    ],
                    "api_fParam": [
                        [
                            63,
                            70,
                            128,
                            61
                        ],
                        [
                            152,
                            0,
                            112,
                            128
                        ],
                        [
                            59,
                            0,
                            87,
                            74
                        ],
                        [
                            58,
                            0,
                            86,
                            75
                        ],
                        [
                            48,
                            0,
                            88,
                            72
                        ],
                        [
                            62,
                            82,
                            95,
                            56
                        ]
                    ],
                    "api_ship_ke": [
                        1586,
                        1615,
                        1527,
                        1592,
                        1576,
                        1576
                    ],
                    "api_ship_lv": [
                        1,
                        1,
                        1,
                        1,
                        1,
                        1
                    ],
                    "api_ship_ke_combined": [
                        1555,
                        1527,
                        1575,
                        1575,
                        1575,
                        1575
                    ],
                    "api_ship_lv_combined": [
                        1,
                        1,
                        1,
                        1,
                        1,
                        1
                    ],
                    "api_e_nowhps": [
                        165,
                        0,
                        0,
                        0,
                        0,
                        0
                    ],
                    "api_e_maxhps": [
                        350,
                        96,
                        76,
                        66,
                        37,
                        37
                    ],
                    "api_e_nowhps_combined": [
                        0,
                        0,
                        0,
                        0,
                        0,
                        0
                    ],
                    "api_e_maxhps_combined": [
                        57,
                        76,
                        35,
                        35,
                        35,
                        35
                    ],
                    "api_eSlot": [
                        [
                            1547,
                            1548,
                            1549,
                            1532,
                            -1
                        ],
                        [
                            1556,
                            1557,
                            1558,
                            1558,
                            -1
                        ],
                        [
                            1505,
                            1506,
                            1515,
                            1525,
                            -1
                        ],
                        [
                            1550,
                            1550,
                            1545,
                            1525,
                            -1
                        ],
                        [
                            1502,
                            1545,
                            1542,
                            -1,
                            -1
                        ],
                        [
                            1502,
                            1545,
                            1542,
                            -1,
                            -1
                        ]
                    ],
                    "api_eSlot_combined": [
                        [
                            1506,
                            1525,
                            1542,
                            1543,
                            -1
                        ],
                        [
                            1505,
                            1506,
                            1515,
                            1525,
                            -1
                        ],
                        [
                            1502,
                            1545,
                            1542,
                            -1,
                            -1
                        ],
                        [
                            1502,
                            1545,
                            1542,
                            -1,
                            -1
                        ],
                        [
                            1502,
                            1545,
                            1542,
                            -1,
                            -1
                        ],
                        [
                            1502,
                            1545,
                            1542,
                            -1,
                            -1
                        ]
                    ],
                    "api_eParam": [
                        [
                            180,
                            0,
                            130,
                            150
                        ],
                        [
                            25,
                            0,
                            50,
                            80
                        ],
                        [
                            68,
                            48,
                            40,
                            70
                        ],
                        [
                            64,
                            92,
                            96,
                            68
                        ],
                        [
                            38,
                            66,
                            32,
                            26
                        ],
                        [
                            38,
                            66,
                            32,
                            26
                        ]
                    ],
                    "api_eParam_combined": [
                        [
                            48,
                            80,
                            30,
                            39
                        ],
                        [
                            68,
                            48,
                            40,
                            70
                        ],
                        [
                            38,
                            60,
                            30,
                            22
                        ],
                        [
                            38,
                            60,
                            30,
                            22
                        ],
                        [
                            38,
                            60,
                            30,
                            22
                        ],
                        [
                            38,
                            60,
                            30,
                            22
                        ]
                    ],
                    "api_smoke_type": 0,
                    "api_balloon_cell": 0,
                    "api_active_deck": [
                        1,
                        1
                    ],
                    "api_touch_plane": [
                        -1,
                        -1
                    ],
                    "api_flare_pos": [
                        -1,
                        -1
                    ],
                    "api_hougeki": {
                        "api_at_eflag": [
                            0,
                            1,
                            0
                        ],
                        "api_at_list": [
                            0,
                            0,
                            1
                        ],
                        "api_n_mother_list": [
                            0,
                            0,
                            0
                        ],
                        "api_df_list": [
                            [
                                0,
                                0
                            ],
                            [
                                5
                            ],
                            [
                                0,
                                0
                            ]
                        ],
                        "api_si_list": [
                            [
                                "362",
                                "362"
                            ],
                            [
                                -1
                            ],
                            [
                                "465",
                                "276"
                            ]
                        ],
                        "api_cl_list": [
                            [
                                1,
                                1
                            ],
                            [
                                0
                            ],
                            [
                                1,
                                1
                            ]
                        ],
                        "api_sp_list": [
                            1,
                            0,
                            1
                        ],
                        "api_damage": [
                            [
                                17,
                                19
                            ],
                            [
                                0
                            ],
                            [
                                107,
                                96
                            ]
                        ]
                    }
                }
            }''');

    var data = ReqCombinedBattleECMidnightBattleEntity.fromJson(json);

    expect(data.apiData?.apiHougeki!.apiDamage?[0][0], 17);
    expect(data.apiData?.apiHougeki!.apiDamage?[2][1], 96);

  });
}