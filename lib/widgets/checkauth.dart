import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sellcar/telas/Login.dart';
import '../services/auth_service.dart';
import '../controllers/autenticacao_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../telas/tela_home/tela_home_widget.dart';

class CheckAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Obx(() => AuthService.to.userIsAuthenticated.value
        ? TelaHomeWidget()
        : LoginScreen());
  }
}
