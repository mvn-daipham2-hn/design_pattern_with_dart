import 'email_handler.dart';
import 'email_type.dart';

class SpamHandler extends EmailHandler {
  SpamHandler(EmailHandler? successor) : super(successor);

  @override
  void handleRequest(String? emailContent) {
    if (emailContent != null && emailContent.contains("spam")) {
      print("${EmailType.spam.description}: Deleting email...");
    } else {
      super.handleRequest(emailContent);
    }
  }
}
