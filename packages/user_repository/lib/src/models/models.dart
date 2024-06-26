import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

export 'user.dart';

class MyUser {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  static final empty = MyUser(
      userId: '',
      email: '',
      name: '',
      hasActiveCart: false
  );


  MyUserEntity toEntity() {
    return MyUserEntity(
        userId: userId,
        email: email,
        name: name,
        hasActiveCart: hasActiveCart,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
        userId: userId,
        email: email,
        name: name,
        hasActiveCart: hasActiveCart
    )
  }
}