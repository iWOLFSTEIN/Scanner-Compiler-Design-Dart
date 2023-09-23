import 'token_types.dart';

final Map<int, dynamic> states = {
  1: {
    RegExp(r'='): {2: 2},
    RegExp(r';'): {3: 3},
    RegExp(r'n'): {4: 18},
    RegExp(r't'): {7: 18},
    RegExp(r'^[a-zA-Z_]$'): {5: 13},
    RegExp(r'"'): {6: 9},
    RegExp(r"'"): {8: 9},
    RegExp(r'\d'): {10: 14},
    RegExp(r'^[+-]$'): {12: 12},
    RegExp(r'[^ ]'): {20: 20},
  },
  2: TokenType.assignment,
  3: TokenType.semiColon,
  4: {
    RegExp(r'u'): {15: 18},
    RegExp(r'[^u]'): {5: 13},
  },
  15: {
    RegExp(r'm'): {18: 18},
    RegExp(r'[^m]'): {5: 13},
  },
  7: {
    RegExp(r'e'): {16: 18},
    RegExp(r'[^e]'): {5: 13},
  },
  16: {
    RegExp(r'x'): {17: 18},
    RegExp(r'[^x]'): {5: 13},
  },
  17: {
    RegExp(r't'): {18: 18},
    RegExp(r'[^t]'): {5: 13},
  },
  18: TokenType.keyword,
  5: {
    RegExp(r'^[a-zA-Z0-9_]$'): {5: 13},
  },
  13: TokenType.identifier,
  6: {
    RegExp(r'"'): {9: 9},
    RegExp(r'.'): {6: 9},
  },
  8: {
    RegExp(r"'"): {9: 9},
    RegExp(r'.'): {8: 9},
  },
  9: TokenType.string,
  10: {
    RegExp(r'\d'): {10: 14},
    RegExp(r'\.'): {11: 14},
  },
  11: {
    RegExp(r'\d'): {11: 14},
  },
  14: TokenType.integer,
  12: {
    RegExp(r'\d'): {10: 14},
  },
  20: TokenType.error,
};
