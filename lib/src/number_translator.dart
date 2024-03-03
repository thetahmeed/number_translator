import 'languages.dart';
import 'utils.dart' as utils;

class NumberTranslator {
  NumberTranslator._();

  static String translate(String input, {Language? toLanguage}) {
    return utils.fromEn(input, toLanguage: toLanguage?.code ?? Language.english.code);
  }

  static String translateToEnglish(String input) {
    return utils.toEn(input);
  }

  static String detectLanguage({required String input}) {
    return utils.detectLanguage(input);
  }
}
