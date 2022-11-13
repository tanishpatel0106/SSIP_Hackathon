class Investor {
  Investor({
    required this.name,
    required this.description,
    required this.industry,
  });

  final String name;
  final String description;
  final String industry;

  factory Investor.fromJson(Map<String, dynamic> json) {
    return Investor(
      name: json['name'],
      description: json['description'],
      industry: json['industry'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'industry': industry,
      };
}
