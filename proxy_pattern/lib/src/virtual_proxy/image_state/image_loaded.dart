import '../image_icon.dart';
import '../image_proxy.dart';
import 'image_state.dart';

class ImageLoaded implements ImageState {
  ImageIcon imageIcon;

  ImageLoaded(this.imageIcon);

  @override
  int getIconHeight() {
    return imageIcon.getIconHeight();
  }

  @override
  int getIconWidth() {
    return imageIcon.getIconWidth();
  }

  @override
  void paintIcon(int x, int y, int width, int height, String color,
      {ImageProxy? imageProxy}) {
    imageIcon.paintIcon(x, y, width, height, color);
  }

  @override
  void changeColor(String value) {
    imageIcon.changeColor(value);
  }

  @override
  void resize(double ratio) {
    imageIcon.resize(ratio);
  }

  @override
  bool isLoaded() => true;
}
