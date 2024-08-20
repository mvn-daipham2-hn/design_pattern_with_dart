class Singleton {
  // Private constructor to prevent external instantiation.
  Singleton._internal();

  // The single instance of the class.
  static final Singleton _instance = Singleton._internal();

  // Factory constructor to provide access to the singleton instance.
  /// In Dart, the [factory] keyword is used to implement Singleton patterns effectively,
  /// ensuring only one instance is created.
  factory Singleton() {
    return _instance;
  }

  void showMessage() {
    print("Hello from Singleton!");
  }
}
