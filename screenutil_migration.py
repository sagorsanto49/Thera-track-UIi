from pathlib import Path
import re

root = Path('d:/doctor/lib')

patterns = [
    (re.compile(r'\bconst\s+SizedBox\s*\(\s*height\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*\)'), r'SizedBox(height: \1.h)'),
    (re.compile(r'\bconst\s+SizedBox\s*\(\s*width\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*\)'), r'SizedBox(width: \1.w)'),
    (re.compile(r'\bSizedBox\s*\(\s*height\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*\)'), r'SizedBox(height: \1.h)'),
    (re.compile(r'\bSizedBox\s*\(\s*width\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*\)'), r'SizedBox(width: \1.w)'),
    (re.compile(r'TextStyle\s*\(\s*fontSize\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*,'), r'TextStyle(fontSize: \1.sp,'),
    (re.compile(r'Icon\s*\(\s*size\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*,'), r'Icon(size: \1.r,'),
    (re.compile(r'BorderRadius\.circular\(\s*([0-9]+(?:\.[0-9]+)?)\s*\)'), r'BorderRadius.circular(\1.r)'),
    (re.compile(r'Radius\.circular\(\s*([0-9]+(?:\.[0-9]+)?)\s*\)'), r'Radius.circular(\1.r)'),
    (re.compile(r'EdgeInsets\.all\(\s*([0-9]+(?:\.[0-9]+)?)\s*\)'), r'EdgeInsets.all(\1.r)'),
    (re.compile(r'EdgeInsets\.symmetric\s*\(\s*horizontal\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*,\s*vertical\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*\)'), r'EdgeInsets.symmetric(horizontal: \1.w, vertical: \2.h)'),
    (re.compile(r'EdgeInsets\.symmetric\s*\(\s*vertical\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*,\s*horizontal\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*\)'), r'EdgeInsets.symmetric(vertical: \1.h, horizontal: \2.w)'),
]

import_files = []

for path in sorted(root.rglob('*.dart')):
    text = path.read_text(encoding='utf-8')
    orig = text
    for pattern, repl in patterns:
        text = pattern.sub(repl, text)

    # convert left/right/top/bottom numeric values inside EdgeInsets.only and general padding maps
    def edge_replacement(match):
        key = match.group(1)
        value = match.group(2)
        if key in ('left', 'right'):
            return f'{key}: {value}.w'
        else:
            return f'{key}: {value}.h'

    text = re.sub(r'\b(left|right|top|bottom)\s*:\s*([0-9]+(?:\.[0-9]+)?)\b', edge_replacement, text)

    # Convert container/box widths and heights only when not in TextStyle or EdgeInsets or BoxShadow contexts
    def size_replacement(match):
        prop = match.group(1)
        value = float(match.group(2))
        if value < 4:
            return match.group(0)
        unit = 'w' if prop == 'width' else 'h'
        return f'{prop}: {match.group(2)}.{unit}'

    text = re.sub(r'\b(width|height)\s*:\s*([0-9]+(?:\.[0-9]+)?)\b', size_replacement, text)

    if re.search(r'\.(h|w|sp|r)\b', text) and 'flutter_screenutil_plus/flutter_screenutil_plus.dart' not in text:
        if "import 'package:flutter/material.dart';" in text:
            text = text.replace("import 'package:flutter/material.dart';", "import 'package:flutter/material.dart';\nimport 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';")
        elif 'import "package:flutter/material.dart";' in text:
            text = text.replace('import "package:flutter/material.dart";', 'import "package:flutter/material.dart";\nimport "package:flutter_screenutil_plus/flutter_screenutil_plus.dart";')

    if text != orig:
        path.write_text(text, encoding='utf-8')
        import_files.append(str(path))

print('modified', len(import_files), 'files')
for path in import_files:
    print(path)
