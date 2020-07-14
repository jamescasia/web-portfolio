class Project {
  String title;
  String videoPath;
  String imagePath;
  String comment;
  String summary;
  String githubLink;
  String playStoreLink;
  String miscLink;

  Project(this.title, this.summary, this.imagePath,
      { this.comment,this.videoPath, this.githubLink, this.playStoreLink, this.miscLink});
}
