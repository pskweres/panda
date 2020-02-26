class Offer {
  String title;
  String description;

  Offer(this.title, this.description);

  Offer.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
  }
}