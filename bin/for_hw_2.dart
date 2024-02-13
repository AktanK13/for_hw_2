import 'dart:io';

void main() {
  // 1.Напишите программу, которая выводит таблицу умножения Ha 3.
  for (int i = 1; i <= 10; i++) {
    int result = 3 * i;
    print('3 * $i = $result');
  }

  // 2.Напишите программу которая выводит среднее число списка [10, 20, 30, 40, 100, 70, 80, 90, 60, 50];
  List<int> numbers = [10, 20, 30, 40, 100, 70, 80, 90, 60, 50];
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  double average = sum / numbers.length;
  print('Среднее число списка: $average');

  // 3.Напишите программу, которая пройдется по каждому элементу списка и выполнит определенное действие с каждым элементом (например, удвоит каждый элемент списка).
  List<int> list = [10, 20, 30, 40, 100, 70, 80, 90, 60, 50];
  for (int i = 0; i < list.length; i++) {
    list[i] *= 2;
  }
  print(list);

  // 4.Напишите программу, которая вычисляет факториал заданного пользователем числа
  print('Введите целое число для вычисления факториала: ');
  int userInput = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  int factorialResult = calculateFactorial(userInput);
  print('Факториал числа $userInput: $factorialResult');

  // 5.Напишите программу, которая принимает список чисел от пользователя и удаляет из него все повторяющиеся элементы.

  print('Введите список чисел через пробел: ');
  List<int> input = numbersFromInput();
  List<int> clearList = removeDuplicates(input);
  print('Список чисел без повторений: $clearList');

  // 6.Напишите программу, которая принимает список чисел от пользователя и выводит их в обратном порядке
  print('Введите список чисел через пробел: ');
  List<int> inputTwo = numbersFromInput();
  List<int> reverseList = [];
  for (int i = inputTwo.length - 1; i >= 0; i--) {
    reverseList.add(inputTwo[i]);
  }
  print(reverseList);
}

// ----------------------------------------------------------------------------
// int calculateFactorial(int n) {
//   if (n == 0 || n == 1) {
//     return 1;
//   } else {
//     return n * calculateFactorial(n - 1);
//   }
// }
int calculateFactorial(int n) {
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}

List<int> numbersFromInput() {
  String input = stdin.readLineSync() ?? '';
  List<String> numberStrings = input.trim().split(' ');
  List<int> intList = [];
  for (int i = 0; i < numberStrings.length; i++) {
    intList.add(int.parse(numberStrings[i]));
  }
  return intList;
}

List<int> removeDuplicates(List<int> intList) {
  List<int> clearList = [];
  for (int i = 0; i < intList.length; i++) {
    if (!clearList.contains(intList[i])) {
      clearList.add(intList[i]);
    }
  }
  return clearList;
}
