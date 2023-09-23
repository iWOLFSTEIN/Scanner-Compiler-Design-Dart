import 'states.dart';
import 'token.dart';
import 'token_types.dart';

class Scanner {
  static final String _empty = """""";
  static final String _space = " ";
  static List<Token> tokens = [];

  static void scan(String input) {
    input = _removeLeadingAndTrailingSpaces(input);

    String lexeme = _empty;
    Map nextState = {1: 1};
    dynamic transitions = states[nextState.keys.toList().first];
    final int inputLength = input.length;

    tokenize() {
      if (transitions is TokenType) {
        tokens.add(Token(transitions, lexeme));
        lexeme = _empty;
        nextState = {1: 1};
        transitions = states[nextState.keys.toList().first];
      }
    }

    for (int i = 0; i < inputLength; i++) {
      String char = input[i];
      List<RegExp> regexList = transitions.keys.toList();
      for (int p = 0; p < regexList.length; p++) {
        if (regexList[p].hasMatch(char)) {
          nextState = transitions[regexList[p]];
          transitions = states[nextState.keys.toList().first];
          lexeme += char;
          tokenize();
          break;
        } else if (p == (regexList.length - 1) && nextState.isNotEmpty) {
          if (char == _space) continue;
          nextState = transitions[regexList[p]];
          transitions = states[nextState[nextState.keys.toList().first]];
          tokenize();
          if (input.length > 1) scan(char);
        }
      }
    }
  }

  static String _removeLeadingAndTrailingSpaces(String input) {
    input = input.trimRight();
    return input.trimLeft();
  }
}
