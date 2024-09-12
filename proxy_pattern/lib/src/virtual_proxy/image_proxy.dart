import 'icon.dart';
import 'image_state/image_not_loaded.dart';
import 'image_state/image_state.dart';

class ImageProxy implements Icon {
  ImageState? _imageState;
  String imageURL;

  ImageProxy(this.imageURL) {
    _imageState = ImageNotLoaded(imageURL);
  }

  @override
  int getIconHeight() {
    return _imageState?.getIconHeight() ?? 0;
  }

  @override
  int getIconWidth() {
    return _imageState?.getIconWidth() ?? 0;
  }

  @override
  void paintIcon(
    int x,
    int y,
    int width,
    int height,
    String color,
  ) {
    _imageState?.paintIcon(x, y, width, height, color, imageProxy: this);
  }

  void setState(ImageState newState) {
    _imageState = newState;
  }

  @override
  void changeColor(String value) {
    _imageState?.changeColor(value);
  }

  @override
  void resize(double ratio) {
    _imageState?.resize(ratio);
  }
}
