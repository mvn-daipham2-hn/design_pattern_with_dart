import '../products/ascii_text.dart';
import 'text_converter.dart';

/// ConcreteBuilder
class ASCIIConverter extends TextConverter {
  @override
  void convertCharacter(String char) {
    print("ASCIIConverter - convertCharacter...");
  }

  ASCIIText getASCIIText() {
    return ASCIIText();
  }
}
