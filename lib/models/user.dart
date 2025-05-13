class User {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String userType; // 'cliente' or 'entregador'

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.userType,
  });

  // Convert User to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'userType': userType,
    };
  }

  // Create User from Map
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      userType: map['userType'] ?? '',
    );
  }
} 