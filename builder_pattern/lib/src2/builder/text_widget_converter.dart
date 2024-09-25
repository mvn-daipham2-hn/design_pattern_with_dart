import '../products/text_widget.dart';
import 'text_converter.dart';

/// ConcreteBuilder
class TextWidgetConverter extends TextConverter {
  @override
  void convertCharacter(String char) {
    print("TextWidgetConverter - convertCharacter...");
  }

  @override
  void convertFont(String font) {
    print("TextWidgetConverter - convertFont...");
  }

  @override
  void convertParagraph() {
    print("TextWidgetConverter - convertParagraph...");
  }

  TextWidget getTextWidget() {
    return TextWidget();
  }
}
