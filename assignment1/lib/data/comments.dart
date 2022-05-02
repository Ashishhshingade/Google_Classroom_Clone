class Comments {
  String userName;
  String userDp;
  String date;
  String comment;

  Comments(
      {required this.userName,
      required this.userDp,
      required this.date,
      required this.comment});
}

List<Comments> commentList = [
  Comments(
      userName: "Kitty Cat",
      userDp: "assets/profiles/cat1.jpg",
      date: "Aug 28",
      comment: "I'm gonna kill you."),
  Comments(
      userName: "Crazy Cat",
      userDp: "assets/profiles/cat2.jpg",
      date: "Aug 27",
      comment: "Software developments"),
  Comments(
      userName: "Bro Cat",
      userDp: "assets/profiles/cat3.jpg",
      date: "Aug 27",
      comment: "Google classroom"),
  Comments(
      userName: "Michael Cat",
      userDp: "assets/profiles/cat4.jpg",
      date: "Aug 28",
      comment: "next time"),
  Comments(
      userName: "Wild Cat",
      userDp: "assets/profiles/cat5.jpg",
      date: "Aug 15",
      comment: "Loren ipsum"),
  Comments(
      userName: "Kit Cat",
      userDp: "assets/profiles/cat6.jpg",
      date: "Aug 11",
      comment: "I'm gonna kill you."),
  Comments(
      userName: "Copy Cat",
      userDp: "assets/profiles/cat7.jpg",
      date: "Aug 28",
      comment: "I'm gonna kill you."),
  Comments(
      userName: "Kitty Cat",
      userDp: "assets/profiles/cat8.jpg",
      date: "Aug 27",
      comment: "Software developments"),
];
