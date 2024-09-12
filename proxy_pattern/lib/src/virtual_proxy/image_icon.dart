import 'icon.dart';

class ImageIcon implements Icon {
  String imageURL;

  ImageIcon(this.imageURL);

  @override
  int getIconHeight() {
    return 900;
  }

  @override
  int getIconWidth() {
    return 1024;
  }

  @override
  void paintIcon(
    int x,
    int y,
    int width,
    int height,
    String color,
  ) {
    print("""
    <<<<<<<<<<< >>>>>>>>>>
    <<<<<<<<<<< >>>>>>>>>>
    <<<<<<<<<<< >>>>>>>>>>
    <<<<<<<<<<< >>>>>>>>>>
    <<<<<<<<<<< >>>>>>>>>>
    """);
  }
}
