/*
The MIT License (MIT)

Copyright (c) 2015-2021 poi contributors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/


// views/utils/game-utils.es
const aircraftExpTable = [0, 10, 25, 40, 55, 70, 85, 100, 121];
const aircraftLevelBonus = {
  6: [0, 0, 2, 5, 9, 14, 14, 22, 22], // 艦上戦闘機
  7: [0, 0, 0, 0, 0, 0, 0, 0, 0], // 艦上爆撃機
  8: [0, 0, 0, 0, 0, 0, 0, 0, 0], // 艦上攻撃機
  11: [0, 1, 1, 1, 1, 3, 3, 6, 6], // 水上爆撃機
  26: [0, 0, 2, 5, 9, 14, 14, 22, 22], // 対潜哨戒機
  45: [0, 0, 2, 5, 9, 14, 14, 22, 22], // 水上戦闘機
  47: [0, 0, 0, 0, 0, 0, 0, 0, 0], // 陸上攻撃機
  48: [0, 0, 2, 5, 9, 14, 14, 22, 22], // 局地戦闘機 陸軍戦闘機
  56: [0, 0, 0, 0, 0, 0, 0, 0, 0], // 噴式戦闘機
  57: [0, 0, 0, 0, 0, 0, 0, 0, 0], // 噴式戦闘爆撃機
  58: [0, 0, 0, 0, 0, 0, 0, 0, 0], // 噴式攻撃機
};
const uncountedSlotitemId = [42, 43, 145, 146, 150, 241];