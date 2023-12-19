import 'dart:io';

void main() {
 while (true) {
    stdout.write("Nhap so nguyen duong a (de thoat nhap 'exit'): ");
    String userInput = stdin.readLineSync() ?? "";

    if (userInput.toLowerCase() == 'exit') {
      break;
    }

    int a = int.tryParse(userInput) ?? 0;

    bool isPrime = checkPrime(a);

    print('$a là số nguyên tố: $isPrime');
  }
}

bool checkPrime(int a) {
  if (a < 2) {
    return false;
  } else {
    for (int i = 2; i <= a / 2; i++) {
      if (a % i == 0) {
        return false;
      }
    }
    return true;
  }
}