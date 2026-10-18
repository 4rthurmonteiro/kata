import 'dart:math';

import 'package:args/args.dart';
import 'package:shared/shared.dart';

ArgParser buildParser() {
  return ArgParser()
    ..addFlag('number', abbr: 'n', negatable: false, help: 'the int number.');
}

void main(List<String> arguments) {
  final ArgParser argParser = buildParser();
  try {
    final ArgResults results = argParser.parse(arguments);

    // Process the parsed arguments.
    if (results.flag('number')) {
      final value = getValue(results.rest);
      if (value < 0 || value > 99) {
        throw InputException();
      }
      final gen = genThousandNumbers();
      printInput(gen, value);
      final times = evaluate(gen, value);
      printOutput(value, times);
      return;
    }

    throw InputException();
  } on FormatException catch (e) {
    // Print usage information if an invalid argument was provided.
    print(e.message);
    print('');
  }
}

int getValue(List<String> rest) {
  final valueString = rest.firstOrNull ?? "";
  final value = int.tryParse(valueString);
  return value!;
}

List<int> genThousandNumbers() {
  final random = Random(DateTime.now().microsecondsSinceEpoch);
  final thousandNumbersLists = <int>[];

  for (int i = 0; i < 1000; i++) {
    thousandNumbersLists.add(random.nextInt(100) - 1);
  }

  return thousandNumbersLists;
}

void printInput(List<int> generatedThousandNumbers, int targetNumber) {
  print("target number is $targetNumber");
  print("==================");
  for (final number in generatedThousandNumbers) {
    print(number);
  }
}

int evaluate(List<int> generatedThousandNumbers, int targetNumber) {
  int counter = 0;

  for (final number in generatedThousandNumbers) {
    if (number == -1) {
      break;
    }

    if (targetNumber == number) {
      ++counter;
    }
  }

  return counter;
}

// 46 appeared 7 times
// 49 appeared 12 times
// 31 appeared 10 times
void printOutput(int targetNumber, int times) {
  print("$targetNumber appeared $times times");
}
