const int noHelpTopic = -1;
const int printTopic = 1;
const int paperOrientationTopic = 2;
const int applicationTopic = 3;

abstract class HelpHandler {
  HelpHandler? successor;
  int topic = noHelpTopic;

  HelpHandler(
    this.successor,
    this.topic,
  );

  bool hasHelp() {
    return topic != noHelpTopic;
  }

  void setHandler(HelpHandler helpHandler, int topic) {
    successor = helpHandler;
    this.topic = topic;
  }

  void handleHelp() {
    if (successor != null) {
      successor?.handleHelp();
    }
  }
}
