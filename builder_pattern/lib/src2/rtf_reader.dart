import 'builder/text_converter.dart';
import 'text_type.dart';

/// Director
class RTFReader {
  void parseRTF(TextConverter converter, List<TextType> textTypes) {
    for (var textType in textTypes) {
      _convertText(converter, textType);
    }
  }

  void _convertText(TextConverter converter, TextType type) {
    switch (type) {
      case TextType.char:
        converter.convertCharacter("a");
        break;
      case TextType.font:
        converter.convertFont("Arial");
        break;
      case TextType.para:
        converter.convertParagraph();
        break;
    }
  }
}
