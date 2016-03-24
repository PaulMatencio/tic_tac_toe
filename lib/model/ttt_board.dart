class TTTBoard {
  static const List<List<int>> WIN_PATTERNS = const [
    const [0, 1, 2], // row
    const [1, 2, 3],
    const [4, 5, 6],
    const [5, 6, 7],
    const [8, 9, 10],
    const [9, 10, 11],
    const [12, 13, 14],
    const [13, 14, 15],

    const [0, 4, 8], // col
    const [4, 8, 12],
    const [1, 5, 9],
    const [5, 9, 13],
    const [2, 6, 10],
    const [6, 10, 14],
    const [3, 7, 11],
    const [7, 11, 15],


    const [1, 6, 11], // diag
    const [0, 5, 10],
    const [5, 10, 15],
    const [4, 9, 14],
    const [2, 5, 8],
    const [3, 6, 9],
    const [6, 9, 12],
    const [7, 10, 13]
  ];

  List<String> board;
  int moveCount = 0;

  TTTBoard() {
    board = new List<String>.filled(16, null);
  }

  String getWinner() {
    for (List<int> winPattern in WIN_PATTERNS) {
      String square1 = board[winPattern[0]];
      String square2 = board[winPattern[1]];
      String square3 = board[winPattern[2]];

      // if all three squares match and aren't empty, there's a win
      if (square1 != null &&
          square1 == square2 &&
          square2 == square3) {
        return square1;
      }
    }

    // if we get here, there is no win
    return null;
  }

  String move(int square, String player) {
    board[square] = player;
    moveCount++;
    return getWinner();
  }

  bool get isFull => moveCount >= 16;
  bool get isNotFull => !isFull;
  bool isSquareEmpty(int index) => board[index] == null;

  @override String toString() {
    String prettify(int square) => board[square] ?? " ";

    return """
${prettify(0)} | ${prettify(1)} | ${prettify(2)}
${prettify(3)} | ${prettify(4)} | ${prettify(5)}
${prettify(6)} | ${prettify(7)} | ${prettify(8)}
    """;
  }
}