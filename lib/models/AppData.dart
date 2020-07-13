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
        "Papyrus is a digital receipts and expense tracking app. This was our entry in Accenture's Program The Future 2019. Visit it on the Google Play Store!",
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
            "https://play.google.com/store/apps/details?id=hakk.ai.grabApp&hl=en"),
    "mentallert": Project(
        "Mentallerts",
        "MentAllerts is an award-winning app that utilizes Artificial Intelligence to predict the mental state of an individual based on tweets. This won 2nd place in the Alliance HackIT Challenge 2019.",
        "assets/photos/mentalert.png",
        videoPath: "assets/videos/mentallerts.mp4",
        miscLink:
            "https://www.facebook.com/AllianceSoftwareInc/posts/2574799315966572"),
    "color-flex": Project(
        "Color Flex",
        "Color Flex! is an award-winning casual game that qualified for Android Masters 2018. Visit it on the Google Play Store!",
        "assets/photos/color_flex.png",
        videoPath: "assets/videos/color-flex.mp4",
        miscLink:
            "https://www.facebook.com/gdgphilippines/posts/1367551843376743")
  };
}
