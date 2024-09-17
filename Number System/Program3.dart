import 'dart:io';

int factorial(int num) {
  int result = 1;
  for (int i = 1; i <= num; i++) {
    result *= i;
  }
  return result;
}

void checkStrong(int n) {
  int temp = n;
  int sum = 0;

  while (temp > 0) {
    int rem = temp % 10;
    sum += factorial(rem);
    temp ~/= 10;
  }

  if (sum == n) {
    print("$n is strong");
  } else {
    print("$n is not strong");
  }
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  checkStrong(n);
}
