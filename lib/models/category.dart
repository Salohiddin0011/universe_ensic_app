class Category {
  final String object;
  final String description;

  Category(
    this.object, {
    required this.description,
  });

  @override
  String toString() {
    return 'Category{object: $object, description: $description}';
  }
}
