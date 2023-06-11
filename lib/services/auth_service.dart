import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../database/db_firestore.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_android/google_sign_in_android.dart';

import '../telas/Login.dart';

class AuthService extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  late Rx<User?> _firebaseUser;
  var userIsAuthenticated = false.obs;

  @override
  void onInit() {
    super.onInit();

    _firebaseUser = Rx<User?>(_auth.currentUser);
    _firebaseUser.bindStream(_auth.authStateChanges());

    _firebaseUser.listen((User? user) {
      if (user != null) {
        userIsAuthenticated.value = true;
      } else {
        userIsAuthenticated.value = false;
      }
    });
  }

  User? get user => _firebaseUser.value;

  static AuthService get to => Get.put(AuthService());


  showSnack(String titulo, String erro) {
    Get.snackbar(
      titulo,
      erro,
      backgroundColor: Colors.grey[900],
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  createUser(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      if (e is FirebaseAuthException) {
        String errorMessage = e.message ?? 'Mensagem de erro não disponível.';
        showSnack('Erro ao registrar!', errorMessage);
      } else {
        // Trate outros tipos de exceção aqui, se necessário
        showSnack('Erro ao registrar!', 'Ocorreu um erro desconhecido.');
      }
    }
  }

    login(String email, String password) async {
      try {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
      } catch (e) {
        if (e is FirebaseAuthException) {
          String errorMessage = e.message ?? 'Mensagem de erro não disponível.';
          showSnack('Erro no Login!', errorMessage);
        } else {
          // Trate outros tipos de exceção aqui, se necessário
          showSnack('Erro no Login!', 'Ocorreu um erro desconhecido.');
        }
      }
    }
      logout() async {
        try {
          await _auth.signOut();
        } catch (e) {
          if (e is FirebaseAuthException) {
            String errorMessage = e.message ??
                'Mensagem de erro não disponível.';
            showSnack('Erro ao Sair!', errorMessage);
          } else {
            showSnack('Erro ao Sair!', 'Ocorreu um erro desconhecido.');
          }
        }
      }

    }
final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();

Future<void> signInWithGoogle() async {
  try {
    // Solicite as permissões necessárias e faça login com o Google usando o pacote google_sign_in
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Faça login com as credenciais do Google no Firebase Authentication
    final UserCredential userCredential = await _auth.signInWithCredential(credential);
    final User? user = userCredential.user;

    // Faça algo com o usuário autenticado, como salvar os dados no banco de dados ou navegar para outra tela
    if (user != null) {
      // Usuário autenticado com sucesso
      print('Usuário logado com sucesso: ${user.displayName}');
    } else {
      // Falha na autenticação
      print('Falha na autenticação do Google');
    }
  } catch (e) {
    // Erro durante a autenticação
    print('Erro durante a autenticação do Google: $e');
  }
}

Future<void> signOutGoogle() async {
  try {
    // Faça logout da conta do Google usando o Firebase Authentication
    await FirebaseAuth.instance.signOut();

    // Faça algo após fazer logout, como navegar para a tela de login novamente ou exibir uma mensagem de sucesso
    print('Logout do Google realizado com sucesso');
  } catch (e) {
    // Erro durante o logout
    print('Erro ao fazer logout do Google: $e');
  }
}