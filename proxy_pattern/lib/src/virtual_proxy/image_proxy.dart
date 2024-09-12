import 'icon.dart';
import 'image_icon.dart';

class ImageProxy implements Icon {
  ImageIcon? imageIcon;
  String imageURL;

  ImageProxy(this.imageURL);

  @override
  int getIconHeight() {
    return imageIcon?.getIconHeight() ?? 800;
  }

  @override
  int getIconWidth() {
    return imageIcon?.getIconWidth() ?? 600;
  }

  @override
  void paintIcon(
    int x,
    int y,
    int width,
    int height,
    String color,
  ) {
    if (imageIcon != null) {
      imageIcon?.paintIcon(x, y, width, height, color);
    } else {
      print("Loading CD cover, please wait...");
      Future.delayed(const Duration(seconds: 2), () {
        imageIcon = ImageIcon(imageURL)..paintIcon(x, y, width, height, color);
      });
    }
  }
}
