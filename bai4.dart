import 'dart:io';

bool isPalindrome(String str) {

  String cleanStr = str.replaceAll(' ', '').toLowerCase();

  return cleanStr == cleanStr.split('').reversed.join('');
}

void main() {
  String inputString = "A man a plan a canal Panama";

  if (isPalindrome(inputString)) {
    print("la chuoi doi xung.");
  } else {
    print("ko la chuoi doi xung.");
  }
}