import 'token_types.dart';

class Token {
  final TokenType type;
  final String lexeme;

  Token(this.type, this.lexeme);

  @override
  String toString() {
    return 'Token($type, $lexeme)';
  }
}
