import 'constents.dart';

String fromEn(String inputs, {String toLanguage = 'en'}) {
  if (!toEnglishNumbersMapping.containsKey(toLanguage)) {
    return 'Language code not found!';
  }
  List<String> mapping = fromEnglishNumbersMapping[toLanguage]!;
  List<String> digits = inputs.split('');

  String result = '';

  for (String digit in digits) {
    int index = int.tryParse(digit) ?? -1;

    if (index >= 0 && index < mapping.length) {
      result += mapping[index];
    } else {
      result += digit;
    }
  }
  return result;
}

String toEn(String inputs) {
  String result = '';
  String fromLanguage = detectLanguage(inputs);

  Map<String, String> mapping = toEnglishNumbersMapping[fromLanguage]!;
  List<String> digits = inputs.split('');

  for (int i = 0; i < digits.length; i++) {
    result += mapping[digits[i]] ?? digits[i];
  }

  if (fromLanguage == 'zh') {
    switch (result) {
      case '一〇':
        return '十';
      case '一〇〇':
        return '一百';
      case '一〇〇〇':
        return '一千';
      case '一〇〇〇〇':
        return '一万';
      case '一〇〇〇〇〇':
        return '十万';
      case '一〇〇〇〇〇〇':
        return '一百万';
      default:
        break;
    }
  }

  return result;
}

String detectLanguage(String input) {
// Assuming input is a single character (number)
  String firstChar = input.substring(0, 1);

// Check if the character belongs to the English number range
  if (firstChar.codeUnitAt(0) >= 48 && firstChar.codeUnitAt(0) <= 57) {
    return 'en';
  }
// Check if the character belongs to the Arabic number range
  else if (firstChar.codeUnitAt(0) >= 0x0660 &&
      firstChar.codeUnitAt(0) <= 0x0669) {
    return 'ar';
  }
// Check if the character belongs to the Bangla number range
  else if (firstChar.codeUnitAt(0) >= 0x09E6 &&
      firstChar.codeUnitAt(0) <= 0x09EF) {
    return 'bn';
  }
// Check if the character belongs to the Devanagari number range (Hindi)
  else if (firstChar.codeUnitAt(0) >= 0x0966 &&
      firstChar.codeUnitAt(0) <= 0x096F) {
    return 'hi';
  } else if (firstChar.codeUnitAt(0) >= 0x4E00 &&
      firstChar.codeUnitAt(0) <= 0x9FFF) {
    return 'zh';
  } else {
    return 'en';
  }
}