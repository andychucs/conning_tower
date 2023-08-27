import json

dart_file = 'const Map missionIdToCode = {'

if __name__ == '__main__':
    with open('../assets/resources/json/expedition.json') as f:
        expeditions = json.loads(f.read())
        key_value = ''
        for i in expeditions:
            key_value = key_value + f'\n{i["no"]}:\"{i["code"]}\",'
        with open('../lib/data/mission.dart', 'w') as fw:
            fw.write(dart_file + key_value[:-1] + '};')

