import 'email_handler.dart';
import 'email_type.dart';

class ComplaintHandler extends EmailHandler {
  ComplaintHandler(EmailHandler? successor) : super(successor);

  @override
  void handleRequest(String? emailContent) {
    if (emailContent != null && emailContent.contains("complaint")) {
      print(
          "${EmailType.complaint.description}: Forwarding to legal department...");
    } else {
      super.handleRequest(emailContent);
    }
  }
}
