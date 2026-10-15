import 'dart:io';

void main() {
  String size = '';
  int quantity = 0;
  int price = 0;

  print('==============================================================');
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  while (true) {
    stdout.write('Please enter your pizza size (small, medium, or large): ');
    size = (stdin.readLineSync() ?? '').trim().toLowerCase();

    switch (size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print('Invalid pizza size. Please try again.');
        continue;
    }

    break;
  }

  stdout.write('How many pizzas do you want of $size? ');
  quantity = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  while (quantity <= 0) {
    stdout.write('Please enter a valid quantity: ');
    quantity = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  }

  int total = price * quantity;

  print('\nYour Total Payment is: \$$total');
}
