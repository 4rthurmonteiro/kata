class InputException implements Exception {
  const InputException();

  @override
  String toString() =>
      "InputException: Invalid input, please check the README for more information.";
}
