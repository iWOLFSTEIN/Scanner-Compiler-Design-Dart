import 'scanner.dart';

void main() {
  const String input = " text input1='hello world'; num input2 = 0123 ; ##";
  Scanner.scan(input);
  print(Scanner.tokens);
}
