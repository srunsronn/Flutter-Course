
enum Product {
  dart('Dart', 'The best object language', 'assets/dart.png'),
  flutter('Flutter', 'Build beautiful apps', 'assets/flutter.png'),
  firebase('Firebase', 'The platform for app development', 'assets/firebase.png');

  final String name;
  final String description;
  final String imagePath;

  const Product(this.name, this.description, this.imagePath);
}
