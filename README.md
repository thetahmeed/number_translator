# Number Translator

Number Translation is a Dart package designed to facilitate the conversion of numbers between different languages. It provides methods to translate numbers from English to various languages and vice versa.

## Installation

Add the following line to your `pubspec.yaml`:

```
dependencies:
  number_translator: ^1.0.0
```

Then run:

```
$ flutter pub get
```

## Usage

### Import the package

```
import 'package:number_translator/number_translator.dart';
```

### Translate Numbers

From English:

```
String translatedNumber = NumberTranslator().fromEn('123', toLanguage: 'bn');
print(translatedNumber); // Output: '১২৩'

```

To English:

```
String translatedNumber = NumberTranslator().toEn('১২৩');
print(translatedNumber); // Output: '123'
```

### Supported Languages

- English ('en')
- Arabic ('ar')
- Bangla ('bn')
- Hindi ('hi')
- Chinese ('zh')

### Contributing

Contributions are welcome! If you find any issues or want to improve the package, feel free to open a pull request.

### License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/thetahmeed/number_translator/blob/main/LICENSE) file for details.

Copyright (c) 2024 [Tahmeedul Islam](https://tahmeedul.com/)
