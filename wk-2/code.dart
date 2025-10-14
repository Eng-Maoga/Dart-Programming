// Football Banter Dart Program 😎
// Run this in DartPad or your Flutter/Dart IDE

class FootballMatch {
  String winner;
  String loser;

  FootballMatch({required this.winner, required this.loser});

  void banter() {
    print("Tutor.isHappy = true; "
        "// must be a ${loser} fan trying to forget ${winner}’s win 😏");
  }
}

void main() {
  // Create a match between Manchester United and Chelsea
  FootballMatch match = FootballMatch(
    winner: "Manchester United",
    loser: "Chelsea",
  );

  // Call the function to display the banter
  match.banter();
}
