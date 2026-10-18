import 'package:args/args.dart';
import 'package:shared/shared.dart';

enum Sequency {
  asc,
  desc,
  none;

  @override
  String toString() {
    switch (this) {
      case asc:
        return "C";
      case desc:
        return "D";
      default:
        return "N";
    }
  }
}

ArgParser buildParser() {
  return ArgParser()..addFlag(
    'input',
    abbr: 'i',
    negatable: false,
    help: 'Print this usage information.',
  );
}

void main(List<String> arguments) {
  final ArgParser argParser = buildParser();
  try {
    final ArgResults results = argParser.parse(arguments);

    // Process the parsed arguments.
    if (results.flag('input')) {
      final input = inputParser(results.rest);
      final result = evaluate(input);

      print(result);
      return;
    }

    // Act on the arguments provided.
    print('Positional arguments: ${results.rest}');
  } on FormatException catch (e) {
    // Print usage information if an invalid argument was provided.
    print(e.message);
    print('');
  }
}

List<int> inputParser(List<String> rest) {
  if (rest.length != 5) {
    throw InputException();
  }

  final input = rest.map((e) => int.parse(e)).toList();

  if (input.any((e) => e < 1 || e > 13)) {
    throw InputException();
  }

  return input;
}

Sequency evaluate(List<int> input) {
  final length = input.length;
  if (input[length - 1] - input[0] == length - 1) {
    return Sequency.asc;
  }

  if (input[0] - input[length - 1] == length - 1) {
    return Sequency.desc;
  }

  return Sequency.none;
}

// 0, 1, 2, 3, 4
// 3, 4, 5, 6, 7
// 7, 6, 5, 4, 3

// 7 - 3 = 4 (lenght - 1)
