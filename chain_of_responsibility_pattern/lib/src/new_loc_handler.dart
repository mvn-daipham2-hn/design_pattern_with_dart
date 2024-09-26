import 'email_handler.dart';
import 'email_type.dart';

class NewLocHandler extends EmailHandler {
  NewLocHandler(EmailHandler? successor) : super(successor);

  @override
  void handleRequest(String? emailContent) {
    if (emailContent != null) {
      print(
          "${EmailType.request.description}: Forwarding to business development...");
    } else {
      print("Email content is empty, deleting...");
    }
  }
}
