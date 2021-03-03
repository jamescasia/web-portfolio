class Project {
  String title;
  String videoPath;
  String imagePath;
  String comment;
  String summary;
  String githubLink;
  String playStoreLink;
  String miscLink;
  bool isMobile;

  Project(this.title, this.summary, this.imagePath,
      {this.comment,
      this.videoPath,
      this.githubLink,
      this.playStoreLink,
      this.isMobile,
      this.miscLink});
}
