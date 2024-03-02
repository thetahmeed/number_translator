import 'package:flutter_test/flutter_test.dart';
import 'package:number_translator/number_translator.dart';

void main() {
  test('To English', () {
    NumberTranslator nt = NumberTranslator();
    String translatedNumber = nt.toEn('১২৩');
    print(translatedNumber); // Output: '123'
  });
}
