class Language {
  String _code = "en";

  String get code => _code;

  static Language english = Language._(code: 'en');
  static Language arabic = Language._(code: 'ar');
  static Language bangla = Language._(code: 'bn');
  static Language hindi = Language._(code: 'hi');
  static Language chinese = Language._(code: 'zh');

  Language._({required String code}) {
    this._code = code;
  }
}


