import 'dart:io';

final root = Directory('lib');
const importLine = "import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';";

String convertContent(String content) {
  final conversions = <RegExp, String Function(Match)>{
    RegExp(r'\bEdgeInsets\.all\(\s*([0-9]+(?:\.[0-9]+)?)\s*\)'): (m) => 'EdgeInsets.all(${m[1]}.r)',
    RegExp(r'\bEdgeInsets\.symmetric\(\s*horizontal\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*,\s*vertical\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*\)'): (m) => 'EdgeInsets.symmetric(horizontal: ${m[1]}.w, vertical: ${m[2]}.h)',
    RegExp(r'\bEdgeInsets\.symmetric\(\s*vertical\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*,\s*horizontal\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*\)'): (m) => 'EdgeInsets.symmetric(vertical: ${m[1]}.h, horizontal: ${m[2]}.w)',
    RegExp(r'\bEdgeInsets\.symmetric\(\s*horizontal\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*\)'): (m) => 'EdgeInsets.symmetric(horizontal: ${m[1]}.w)',
    RegExp(r'\bEdgeInsets\.symmetric\(\s*vertical\s*:\s*([0-9]+(?:\.[0-9]+)?)\s*\)'): (m) => 'EdgeInsets.symmetric(vertical: ${m[1]}.h)',
    RegExp(r'\bEdgeInsets\.only\(([^)]*)\)'): (m) {
      var inner = m[1]!;
      inner = inner.replaceAllMapped(
        RegExp(r'\bleft\s*:\s*([0-9]+(?:\.[0-9]+)?)\b'),
        (innerMatch) => 'left: ${innerMatch[1]}.w',
      );
      inner = inner.replaceAllMapped(
        RegExp(r'\bright\s*:\s*([0-9]+(?:\.[0-9]+)?)\b'),
        (innerMatch) => 'right: ${innerMatch[1]}.w',
      );
      inner = inner.replaceAllMapped(
        RegExp(r'\btop\s*:\s*([0-9]+(?:\.[0-9]+)?)\b'),
        (innerMatch) => 'top: ${innerMatch[1]}.h',
      );
      inner = inner.replaceAllMapped(
        RegExp(r'\bbottom\s*:\s*([0-9]+(?:\.[0-9]+)?)\b'),
        (innerMatch) => 'bottom: ${innerMatch[1]}.h',
      );
      return 'EdgeInsets.only($inner)';
    },
    RegExp(r'\bEdgeInsets\.fromLTRB\(\s*([0-9]+(?:\.[0-9]+)?)\s*,\s*([0-9]+(?:\.[0-9]+)?)\s*,\s*([0-9]+(?:\.[0-9]+)?)\s*,\s*([0-9]+(?:\.[0-9]+)?)\s*\)'): (m) => 'EdgeInsets.fromLTRB(${m[1]}.w, ${m[2]}.h, ${m[3]}.w, ${m[4]}.h)',
    RegExp(r'\bfontSize\s*:\s*([0-9]+(?:\.[0-9]+)?)(?!\s*\.(?:sp|r|w|h))'): (m) => 'fontSize: ${m[1]}.sp',
    RegExp(r'\bIcon\s*\([^)]*?\bsize\s*:\s*([0-9]+(?:\.[0-9]+)?)(?!\s*\.(?:sp|r|w|h))\b'): (m) {
      final text = m.input.substring(m.start, m.end);
      return text.replaceFirst(RegExp(r'\bsize\s*:\s*([0-9]+(?:\.[0-9]+)?)\b'), 'size: ${m[1]}.r');
    },
    RegExp(r'\bBorderRadius\.circular\(\s*([0-9]+(?:\.[0-9]+)?)\s*\)'): (m) => 'BorderRadius.circular(${m[1]}.r)',
    RegExp(r'\bRadius\.circular\(\s*([0-9]+(?:\.[0-9]+)?)\s*\)'): (m) => 'Radius.circular(${m[1]}.r)',
    RegExp(r'\b(width|height)\s*:\s*([0-9]+(?:\.[0-9]+)?)\b(?!\s*\.(?:w|h))'): (m) {
      final prop = m[1]!;
      final value = m[2]!;
      final unit = prop == 'width' ? 'w' : 'h';
      return '$prop: $value.$unit';
    },
    RegExp(r'\b(left|right)\s*:\s*([0-9]+(?:\.[0-9]+)?)\b(?!\s*\.w)'): (m) => '${m[1]}: ${m[2]}.w',
    RegExp(r'\b(top|bottom)\s*:\s*([0-9]+(?:\.[0-9]+)?)\b(?!\s*\.h)'): (m) => '${m[1]}: ${m[2]}.h',
  };

  for (final pattern in conversions.keys) {
    content = content.replaceAllMapped(pattern, conversions[pattern]!);
  }

  while (true) {
    final cleaned = content.replaceAllMapped(
      RegExp(r'([0-9]+)\.sp([0-9]+)\.sp'),
      (match) => '${match[1]}.${match[2]}.sp',
    ).replaceAllMapped(
      RegExp(r'([0-9]+(?:\.[0-9]+)?)\.(sp|r|w|h)\.(sp|r|w|h)'),
      (match) => '${match[1]}.${match[2]}',
    );
    if (cleaned == content) {
      break;
    }
    content = cleaned;
  }

  content = content.replaceAllMapped(
    RegExp(r'(TextStyle\s*\([^)]*?height\s*:\s*)([0-9]+(?:\.[0-9]+)?)\.h\b', dotAll: true),
    (match) => '${match[1]}${match[2]}',
  );

  content = content.replaceAllMapped(
    RegExp(r'const\s+(?=[^;\n]*\.(?:h|w|sp|r)\b)'),
    (match) => '',
  );

  return content;
}

String ensureImport(String content) {
  if (RegExp(r'\.(?:h|w|sp|r)\b').hasMatch(content) && !content.contains(importLine)) {
    final firstImport = RegExp(r'import\s+["\"][^"\"]+["\"];');
    final match = firstImport.firstMatch(content);
    if (match != null) {
      return content.replaceRange(match.end, match.end, '\n$importLine');
    }
    return '$importLine\n$content';
  }
  return content;
}

void main() {
  final modifiedFiles = <String>[];
  for (final file in root.listSync(recursive: true).whereType<File>()) {
    if (!file.path.endsWith('.dart')) continue;
    var content = file.readAsStringSync();
    final original = content;
    content = convertContent(content);
    content = ensureImport(content);
    if (content != original) {
      file.writeAsStringSync(content);
      modifiedFiles.add(file.path);
    }
  }
  print('modified ${modifiedFiles.length} files');
  for (final path in modifiedFiles) {
    print(path);
  }
}
