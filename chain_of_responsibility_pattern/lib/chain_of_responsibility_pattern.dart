library chain_of_responsibility_pattern;

import 'src/complaint_handler.dart';
import 'src/email_handler.dart';
import 'src/fan_handler.dart';
import 'src/new_loc_handler.dart';
import 'src/spam_handler.dart';

void main() {
  NewLocHandler newLocHandler = NewLocHandler(null);
  ComplaintHandler complaintHandler = ComplaintHandler(newLocHandler);
  FanHandler fanHandler = FanHandler(complaintHandler);
  SpamHandler spamHandler = SpamHandler(fanHandler);

  print("\nReceived new email:");
  _handleIncomingEmail(
    emailHandler: spamHandler,
    content: "Hi, I'm a big fan of your gumball game. It's so interesting.",
  );

  print("\nReceived new email:");
  _handleIncomingEmail(
    emailHandler: spamHandler,
    content:
        "Hello, I want to complaint about your service. Because my children are addicted to the game",
  );

  print("\nReceived new email:");
  _handleIncomingEmail(
    emailHandler: spamHandler,
    content:
        "This is not a spam email! fmanfjhdjfhautfnfdsafh13256789nbvhfghjbnvh54ersdfxcvbhj",
  );

  print("\nReceived new email:");
  _handleIncomingEmail(
    emailHandler: spamHandler,
    content: null,
  );

  print("\nReceived new email:");
  _handleIncomingEmail(
    emailHandler: spamHandler,
    content:
        "Dear Sir, our store want to buy a gumball machine from your company.",
  );
}

void _handleIncomingEmail({
  required EmailHandler emailHandler,
  String? content,
}) {
  emailHandler.handleRequest(content);
}

// import 'src2/application.dart';
// import 'src2/button.dart';
// import 'src2/dialog.dart';
// import 'src2/help_handler.dart';
//
// void main() {
//   Application application = Application(null, applicationTopic);
//   Dialog dialog = Dialog(application, printTopic);
//   // Button button = Button(dialog, paperOrientationTopic);
//   Button button = Button(dialog, noHelpTopic);
//   button.handleHelp();
// }
