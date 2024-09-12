abstract class Icon {
  int getIconWidth();
  int getIconHeight();
  void paintIcon(
    int x,
    int y,
    int width,
    int height,
    String color,
  );
  void resize(double ratio);
  void changeColor(String value);
}
