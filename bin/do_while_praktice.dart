import 'dart:io';

void main() {
  print(' Задание 1.');
//Необходимо написать программу, которая по логину и паролю проверяет правильность введения пароля.
//При введении правильного пароля необходимо вывести “Верный пароль”
//При введении неверного пароля необходимо вывести “Повторите ввод ” и запрашивать ввод пароля

  String isPassword = 'pass';
  var input;
  print('Введите пароль:');
  do {
    input = stdin.readLineSync() ?? '0';
    if (isPassword != input) {
      print('Повторите ввод!');
    }
  } while (isPassword != input);
  print('Верный пароль!');

  print('\n Задание 2.');
//Организовать беспрерывный ввод чисел с клавиатуры, пока пользователь не введёт 0.
//После ввода нуля, показать на экран количество чисел, которые были введены, их
//общую сумму и среднее арифметическое. Подсказка: необходимо объявить
//переменную-счетчик, которая будет считать количество введенных чисел,
//и переменную, которая будет накапливать общую сумму чисел.
  int count = 0;
  int summ = 0;
  int number;
  print('Введите числа:');
  do {
    number = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
    count++;
    summ += number;
  } while (number != 0);

  print(
      'Количество введенных чисел ${count - 1}, общая сумма $summ и среднее арифметическое значение ${summ / (count - 1)}');

//Необходимо суммировать все нечётные целые числа в диапазоне, который введёт пользователь с клавиатуры.
  print('\n Задание 3.');
  print('Введите начало диапозона:');
  int start = int.parse(stdin.readLineSync()!);
  print('Введите конец диапазона:');
  int end = int.parse(stdin.readLineSync()!);
  int isSumm = 0;
  for (int j = start; j <= end; j++) {
    if (j % 2 != 0) {
      isSumm += j;
    }
  }
  print('Сумма нечетных чисел между $start и $end равно $isSumm');
}
