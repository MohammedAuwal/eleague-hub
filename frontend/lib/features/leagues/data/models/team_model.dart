class Team {
  final String id;
  final String name;
  final String? logoUrl;

  Team({
    required this.id,
    required this.name,
    this.logoUrl,
  });
}