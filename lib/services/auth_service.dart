import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../database/db_firestore.dart';
import 'package:get/get.dart';

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
