import '../icon.dart';
import '../image_proxy.dart';

abstract class ImageState extends Icon {
  @override
  void paintIcon(
    int x,
    int y,
    int width,
    int height,
    String color, {
    ImageProxy imageProxy,
  });
  bool isLoaded();
}
