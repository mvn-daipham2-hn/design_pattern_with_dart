library builder;

import 'src2/builder/ascii_converter.dart';
import 'src2/builder/tex_converter.dart';
import 'src2/builder/text_widget_converter.dart';
import 'src2/products/ascii_text.dart';
import 'src2/products/tex_text.dart';
import 'src2/products/text_widget.dart';
import 'src2/rtf_reader.dart';
import 'src2/text_type.dart';

void main() {
  RTFReader reader = RTFReader();

  ASCIIConverter asciiConverter = ASCIIConverter();
  reader
      .parseRTF(asciiConverter, [TextType.char, TextType.font, TextType.para]);
  ASCIIText text = asciiConverter.getASCIIText();
  print(text);
  print("\n");

  TeXConverter teXConverter = TeXConverter();
  reader.parseRTF(teXConverter, [TextType.font, TextType.para]);
  TeXText teXText = teXConverter.getTeXText();
  print(teXText);
  print("\n");

  TextWidgetConverter textWidgetConverter = TextWidgetConverter();
  reader.parseRTF(textWidgetConverter, [TextType.font]);
  TextWidget textWidget = textWidgetConverter.getTextWidget();
  print(textWidget);
}

// import 'src/client.dart';
// import 'src/vacation.dart';
// import 'src/vacation_builder.dart';
//
// void main() {
//   final builder = VacationBuilder();
//   Client client = Client();
//
//   client.constructPlanner(builder);
//   Vacation vacation = builder.getVacationPlanner();
//
//   vacation.showDetails();
// }
