import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign up

  Future<User?> SignUpWithEmailPassword(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  } on FirebaseAuthException catch (e) {
    print("Error during sign up: $e");
    return null;
  }
}

  //sign in
  Future<User?> SignInWithEmailPassword(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  } on FirebaseAuthException catch (e) {
    print("Error during sign in: $e");
    return null;
  }
}

  //data pengguna
  Future<User?> getCurrentUser() async {
    return _auth.currentUser;
  }

  //sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
