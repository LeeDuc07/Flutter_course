import 'dart:io';

void drawGameBoard(int numRows, int numCols) {
  for (int row = 0; row < numRows; row++) {

    print(" ---" * numCols);
    for (int col = 0; col < numCols; col++) {
      stdout.write("|   ");
    }
    print("|");
  }

  print(" ---" * numCols);
}


void main() {
  print("Welcome to LeeDuc's Tic Tac Toe Game");
  print("Enter the size of the game board (A x B):");

  print("Enter the number of rows for the game board A:");
  int numRows = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
 
  print("Enter the number of columns for the game board B :");
  int numCols = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (numRows <= 0 || numCols <= 0) {
    print("Invalid input. Please enter positive integers for the number of rows and columns.");
    return;
  }

  drawGameBoard(numRows, numCols);

}
