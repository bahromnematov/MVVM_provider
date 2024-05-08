class RatingModel {
  num rate;
  int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(rate: json["rate"] ?? 0, count: json["count"] ?? 0);
  }
}
