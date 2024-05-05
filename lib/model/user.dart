class User {
  final int id;
  final String img;
  final String name;
  final String subtitle;
  final String email;

  User({
    required this.id,
    required this.img,
    required this.name,
    required this.subtitle,
    required this.email,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      img: map['img'],
      name: map['name'],
      subtitle: map['subtitle'],
      email: map['email'],
    );
  }
}
