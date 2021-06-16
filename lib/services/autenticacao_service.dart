import 'package:firebase_auth/firebase_auth.dart';

class AutenticacaoService {
  static Future<User> registrarUsuario(
      {String nome, String email, String senha}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User user;
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: senha);
      user = userCredential.user;
      await user.updateProfile(displayName: nome);
      await user.reload();
      user = auth.currentUser;
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        print('Senha pequena');
      } else if (e.code == 'e-mail already-in-use') {
        print('Email existente');
      }
    } catch (e) {
      print(e);
    }
    return user;
  }

  static Future<User> signInUsuario({String email, String senha}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User user;
    try {
      UserCredential userCredential =
          await auth.signInWithEmailAndPassword(email: email, password: senha);
      user = userCredential.user;
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        print('Usuario não encontrado');
      } else if (e.code == 'wrong-password') {
        print('Senha incorreta');
      }
    } catch (e) {
      print(e);
    }
    return user;
  }

  static Future<User> signOutUsuario(User user) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.signOut();
  }
}
