import json
import os


def sort_arb_keys(file_path):
    with open(file_path, 'r') as file:
        data = json.load(file)

    keys_with_at = {}
    keys_without_at = {}
    locale_value = None

    # Separate keys with '@' and without '@'
    for key, value in data.items():
        if key == '@@locale':
            locale_value = value
        elif key.startswith('@'):
            keys_with_at[key] = value
        else:
            keys_without_at[key] = value

    with open(file_path, 'w') as file:
        file.write('{\n')

        if locale_value is not None:
            file.write('  "@@locale": "{}"'.format(locale_value))

        for key, value in sorted(keys_without_at.items()):
            if '\n' in str(value):
                value = str(value).replace('\n', '\\n')
            file.write(',\n  "{}": "{}"'.format(key, value))

            # Find corresponding '@' key and write it
            at_key = '@' + key
            if at_key in keys_with_at:
                file.write(',\n  "{}": {}'.format(at_key, json.dumps(keys_with_at[at_key])))

        file.write('\n}')


def sort_arb_keys_in_directory(directory):
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.arb'):
                file_path = os.path.join(root, file)
                sort_arb_keys(file_path)


sort_arb_keys_in_directory('../lib/l10n')
