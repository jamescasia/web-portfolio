import 'package:portfolio/models/Project.dart';

class AppData {
  List<Project> projects = [
    Project(
        "Picnic Panic!",
        "Stack similar food to upgrade the food and earn the most amount of points in a minute! Join burgers or pancakes or pizza together to unravel score bonuses and special effects!",
        "assets/videos/picnic-panic.mp4",
        playStoreLink:
            "https://play.google.com/store/apps/details?id=org.aetherapps.picnic.panic&hl=en"),
    Project(
        "Escape Velocity",
        "Test your TIMING and PATIENCE in this crazy, beautiful, nerve-wracking hyper casual game.",
        "assets/videos/escape-velocity.mp4",
        playStoreLink:
            "https://play.google.com/store/apps/details?id=org.aetherapps.escape.velocity&hl=en"),
    Project(
        "Papyrus",
        "Scan your paper receipts and track and manage your expenses all in one app!",
        "assets/videos/papyrus.mp4",
        playStoreLink:
            "https://play.google.com/store/apps/details?id=org.aetherapps.papyrus_client.papyrus_client&hl=en"),
    Project(
        "HakkTaxi",
        "HakkTaxi is Hakk.ai's entry for Microsoft Azure Hackathon Asia",
        "assets/videos/hakk-taxi.mp4",
        playStoreLink:
            "https://play.google.com/store/apps/details?id=hakk.ai.grabApp&hl=en")
  ];
}
