enum EmailType { spam, fan, complaint, request }

extension EmailTypeDescription on EmailType {
  String get description {
    switch (this) {
      case EmailType.spam:
        return "SPAM";
      case EmailType.fan:
        return "FAN";
      case EmailType.complaint:
        return "COMPLAINT";
      case EmailType.request:
        return "REQUEST";
    }
  }
}
