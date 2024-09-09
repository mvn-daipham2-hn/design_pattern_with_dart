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

// This is another approach to create a singleton class. And it is shorter than above.
class Singleton2 {
  // The static final keyword ensures that the class instance is created once and only once,
  // when it’s accessed for the first time. After that, the same instance is returned each time.
  static final Singleton2 instance = Singleton2._privateConstructor();

  // The private constructor prevents external code from creating instances of the class directly.
  // This ensures that the class can only be instantiated within itself.
  Singleton2._privateConstructor();
}
