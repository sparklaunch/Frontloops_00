import "./Panel.dart";

class CardBrain {
  List<Panel> _cards = [
    Panel(
      imageFileName: "device.png",
      title: "MOBILE",
      description: "Get notifications about new releases in our mobile app.",
      price: 10,
    ),
    Panel(
      imageFileName: "laptop.png",
      title: "DESKTOP",
      description:
          "Enjoy new episodes on your laptop in browser with our web service, which supports all the platforms.",
      price: 15,
    ),
    Panel(
      imageFileName: "monitor.png",
      title: "TV",
      description:
          "Watch your favorite series at home on large screen with our TV application.",
      price: 20,
    )
  ];
  List<Panel> getCards() {
    return _cards;
  }
}
