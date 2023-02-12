import 'dart:convert';

const kKancolleHeight = 720;
const kKancolleWidth = 1200;
const kKancollePixel = kKancolleHeight * kKancolleWidth;
const String kGameUrl =
    'http://www.dmm.com/netgame/social/-/gadgets/=/app_id=854854/';
const String kGoogle = 'https://www.google.com/';
const String kSafariUA =
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15";
const String kChromeUA =
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36";
const String kHome = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
        <style>
        :root {
            --input-color: #99a3ba;
            --input-border: #cdd9ed;
            --input-background: #fff;
            --input-placeholder: #cbd1dc;
            --input-border-focus: rgba(0, 122, 255, 1);
            --group-color: var(--input-color);
            --group-border: var(--input-border);
            --group-background: rgba(249, 249, 249, 1);
            --group-color-focus: #fff;
            --group-border-focus: var(--input-border-focus);
            --group-background-focus: rgba(0, 122, 255, 1);
        }

        .form-field {
            display: block;
            width: 100%;
            padding: 8px 16px;
            font-size: 24px;
            font-weight: 500;
            font-family: inherit;
            border-radius: 6px;
            -webkit-appearance: none;
            color: var(--input-color);
            border: 1px solid var(--input-border);
            background: var(--input-background);
            transition: border 0.3s ease;
        }

        .form-field::placeholder {
            color: var(--input-placeholder);
        }

        .form-field:focus {
            outline: none;
            border-color: var(--input-border-focus);
        }

        .form-group {
            position: relative;
            display: flex;
            width: 100%;
        }

        .form-group > span, .form-group .form-field {
            white-space: nowrap;
            display: block;
        }

        .form-group > span:not(:first-child):not(:last-child), .form-group .form-field:not(:first-child):not(:last-child) {
            border-radius: 0;
        }

        .form-group > span:first-child, .form-group .form-field:first-child {
            border-radius: 6px 0 0 6px;
        }

        .form-group > span:last-child, .form-group .form-field:last-child {
            border-radius: 0 6px 6px 0;
        }

        .form-group > span:not(:first-child), .form-group .form-field:not(:first-child) {
            margin-left: -1px;
        }

        .form-group .form-field {
            position: relative;
            z-index: 1;
            flex: 1 1 auto;
            width: 1%;
            margin-top: 0;
            margin-bottom: 0;
        }

        .form-group > span {
            text-align: center;
            padding: 8px 12px;
            font-size: 14px;
            line-height: 25px;
            color: var(--group-color);
            background: var(--group-background);
            border: 1px solid var(--group-border);
            transition: background 0.3s ease, border 0.3s ease, color 0.3s ease;
        }

        .form-group:focus-within > span {
            color: var(--group-color-focus);
            background: var(--group-background-focus);
            border-color: var(--group-border-focus);
        }

        html {
            box-sizing: border-box;
            -webkit-font-smoothing: antialiased;
        }

        * {
            box-sizing: inherit;
        }

        *:before, *:after {
            box-sizing: inherit;
        }

        body {
            min-height: 100vh;
            font-family: "Mukta Malar", Arial, serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            background: rgba(249, 249, 249, 1);
        }

        body .form-group {
            max-width: 80%;
        }

        body .form-group:not(:last-child) {
            margin-bottom: 32px;
        }

    </style>
    <title>ConnTowerHome</title>
</head>
<body>
<div class="form-group">
    <input id="url" class="form-field" type="text" value="$kGoogle">
    <span onclick="const url = document.getElementById('url').value;window.open(url, '_blank');">⏎</span>
</div>
</body>
</html>
""";

final String kHomeBase64 = base64Encode(const Utf8Encoder().convert(kHome));
