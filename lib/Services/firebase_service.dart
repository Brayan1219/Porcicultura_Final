import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';



final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> registerUser(String email, String password) async {
  try {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    print('Registro exitoso');
    // Puedes navegar a la siguiente pantalla después del registro exitoso
  } catch (e) {
    print('Error de registro: $e');
  }
}



class Auth{
  final FirebaseAuth _firebaseAuth =FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async{
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password
    );
  }
}
