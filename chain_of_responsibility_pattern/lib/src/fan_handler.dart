import 'email_handler.dart';
import 'email_type.dart';

class FanHandler extends EmailHandler {
  FanHandler(EmailHandler? successor) : super(successor);

  @override
  void handleRequest(String? emailContent) {
    if (emailContent != null && emailContent.contains("fan")) {
      print("${EmailType.fan.description}: Forwarding to CEO...");
    } else {
      super.handleRequest(emailContent);
    }
  }
}
