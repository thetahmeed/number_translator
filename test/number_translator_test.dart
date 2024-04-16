import 'package:flutter_test/flutter_test.dart';
import 'package:number_translator/number_translator.dart';

void main() {
  test('From English', () {
    String translatedNumber =
        NumberTranslator.translate('123', toLanguage: Language.bangla);
    print(translatedNumber); // Output: '১২৩'
  });

  test('To English', () {
    String translatedNumber = NumberTranslator.translateToEnglish('১২৩');
    print(translatedNumber); // Output: '123'
  });
}
