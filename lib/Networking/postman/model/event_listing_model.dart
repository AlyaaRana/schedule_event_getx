class Event {
  final String title;
  final String description;
  final String role;
  final String type;
  final String duration;

  Event({
    required this.role,
    required this.title,
    required this.description,
    required this.type,
    required this.duration,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      title: json['title'],
      description: json['description'],
      type: json['type'],
      duration: json['duration'],
      role: json['role'],
    );
  }
}