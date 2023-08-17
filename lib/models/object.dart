class ObjectInSpace {
  String? imageName;
  final String name;
  final String diametre;
  final String category;
  final String description;
  ObjectInSpace(
      {this.imageName,
      required this.name,
      required this.diametre,
      required this.category,
      required this.description});

  @override
  String toString() {
    return 'Pet{imageName: $imageName, name: $name, location: $diametre, category: $category}';
  }
}
