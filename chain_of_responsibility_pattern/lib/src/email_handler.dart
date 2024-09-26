abstract class EmailHandler {
  EmailHandler? successor;
  EmailHandler(this.successor);

  void handleRequest(String? emailContent) {
    successor?.handleRequest(emailContent);
  }
}
