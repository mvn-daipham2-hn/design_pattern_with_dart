class NullIterator extends Iterator {
  @override
  get current => null;

  @override
  bool moveNext() {
    return false;
  }
}
