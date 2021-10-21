import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static Future<User> signUpUser({String email, String senha}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User user;
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: senha);
      user = userCredential.user;
    return user;
  }

  static Future<User> signInUser({String email, String senha}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User user;
    try {
      UserCredential userCredential =
          await auth.signInWithEmailAndPassword(email: email, password: senha);
      user = userCredential.user;
    } on FirebaseException catch (e) {
      throw (e);
    }

    return user;
  }

  static Future<User> signOutUser(User user) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    await user.reload();
    User refreshUser = auth.currentUser;
    return refreshUser;
  }

  static User getCurrentUser() {
    return FirebaseAuth.instance.currentUser;
  }
}
