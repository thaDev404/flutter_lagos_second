class Challenge{
  final String image;
  final String challengeName;
  final String players;
  final String potSize;

  const Challenge({
    this.image,
    this.challengeName,
    this.players,
    this.potSize
  });
}

final challenges = [
  Challenge(
      image: "lib/images/first.png",
      challengeName: "Lose 5Kgs in 1 week",
      players: "1250",
      potSize: "\$5,250"
  ),
  Challenge(
      image: "lib/images/second.png",
      challengeName: "Run 100miles Per Day",
      players: "412",
      potSize: "\$1,250"
  ),
  Challenge(
      image: "lib/images/first.png",
      challengeName: "Are you Marathon Ready",
      players: "519",
      potSize: "\$6,000"
  ),
  Challenge(
      image: "lib/images/second.png",
      challengeName: "Hardcore new Year",
      players: "1250",
      potSize: "\$10,500"
  ),
];