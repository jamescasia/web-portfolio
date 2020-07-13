import 'package:portfolio/models/Project.dart';

class AppData {
  static Map<String, Project> projects = {
    "picnic-panic": Project(
        "Picnic Panic!",
        "Picnic Panic is an award-winning casual game that won Android Masters 2018 Game Category. It took me about 3 months to build. Visit it on the Google Play Store!",
        "assets/photos/picnic_panic.png",
        videoPath: "assets/videos/picnic-panic.mp4",
        playStoreLink:
            "https://play.google.com/store/apps/details?id=org.aetherapps.picnic.panic&hl=en",
        miscLink:
            "https://www.facebook.com/gdgphilippines/posts/1380215135443747"),
    "escape-velocity": Project(
        "Escape Velocity",
        "Test your TIMING and PATIENCE in this crazy, beautiful, nerve-wracking hyper casual game.",
        "assets/photos/esc_vel.png",
        videoPath: "assets/videos/escape-velocity.mp4",
        playStoreLink:
            "https://play.google.com/store/apps/details?id=org.aetherapps.escape.velocity&hl=en"),
    "papyrus": Project(
        "Papyrus",
        "Scan your paper receipts and track and manage your expenses all in one app!",
        "assets/photos/papyrus.png",
        videoPath: "assets/videos/papyrus.mp4",
        playStoreLink:
            "https://play.google.com/store/apps/details?id=org.aetherapps.papyrus_client.papyrus_client&hl=en"),
    "hakk-taxi": Project(
        "HakkTaxi",
        "HakkTaxi is Hakk.ai's entry for Microsoft Azure Hackathon Asia",
        "assets/photos/picnic_panic.png",
        videoPath: "assets/videos/hakk-taxi.mp4",
        playStoreLink:
            "https://play.google.com/store/apps/details?id=hakk.ai.grabApp&hl=en")
  };
}
