import '../image_icon.dart';
import '../image_proxy.dart';
import 'image_loaded.dart';
import 'image_state.dart';

class ImageNotLoaded implements ImageState {
  final String imageURL;

  ImageNotLoaded(this.imageURL);

  @override
  int getIconHeight() {
    return 800;
  }

  @override
  int getIconWidth() {
    return 600;
  }

  @override
  void paintIcon(int x, int y, int width, int height, String color,
      {ImageProxy? imageProxy}) {
    // placeholder
    print("""
(SCREEN)
Loading CD cover, please wait...
        """); // Suppose this text will paint to the screen
    print("Fetching image from server...\n");
    Future.delayed(const Duration(seconds: 2), () {
      ImageIcon imageIcon = ImageIcon(imageURL);
      // change state
      imageProxy?.setState(
        ImageLoaded(imageIcon),
      );
      // repaint
      imageProxy?.paintIcon(
        x,
        y,
        width,
        height,
        color,
      );
    });
  }

  @override
  void changeColor(String value) {
    throw UnsupportedError("Image is loading...");
  }

  @override
  void resize(double ratio) {
    throw UnsupportedError("Image is loading...");
  }

  @override
  bool isLoaded() => false;
}
