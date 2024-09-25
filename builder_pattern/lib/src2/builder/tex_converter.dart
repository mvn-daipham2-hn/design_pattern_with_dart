import '../products/tex_text.dart';
import 'text_converter.dart';

/// ConcreteBuilder
class TeXConverter extends TextConverter {
  @override
  void convertCharacter(String char) {
    print("TeXConverter - convertCharacter...");
  }

  @override
  void convertFont(String font) {
    print("TeXConverter - convertFont...");
  }

  @override
  void convertParagraph() {
    print("TeXConverter - convertParagraph...");
  }

  TeXText getTeXText() {
    return TeXText();
  }
}
