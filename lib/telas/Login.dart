import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:get/get.dart';
import 'package:sellcar/services/auth_service.dart';
import '../controllers/autenticacao_controller.dart';
import 'cadastrar/cadastrar_widget.dart';
import 'esqueci_minha_senha/esqueci_minha_senha_widget.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  final controller = Get.put(AutenticacaoController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 80,
          title: Obx(() => Text(controller.titulo.value)),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          actions: [
            TextButton(
              child: Obx(() => Text(controller.appBarButton.value)),
              onPressed: controller.toogleRegistrar,
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
          ],
          backgroundColor: Colors.yellow,
        ),
        body: Obx(
        () => controller.isLoading.value
        ? Center(child: CircularProgressIndicator())
            : Form(
          key: controller.formKey,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  controller: controller.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Informe o email corretamente!';
                    }
                    return null;
                  },
                ),
                // Restante dos widgets...

               SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Senha', labelStyle: TextStyle(color: Colors.black,),
                  focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),borderSide: BorderSide(color: Colors.grey)),),
                obscureText: true,
                controller: controller.senha,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informa sua senha!';
                  } else if (value!.length < 6) {
                    return 'Sua senha deve ter no mínimo 6 caracteres';
                  }
                  return null;
                },
              ),

              SizedBox(height: 16.0),
              Card(
                child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                      title: TextButton(onPressed: () {
                                  if (controller.formKey.currentState!.validate()) {
                                  if (controller.isLogin.value) {
                                  controller.login();
                                  } else {
                                  controller.registrar();
                                  }
                               }
                             },

                          child: Text(controller.botaoPrincipal.value, style: TextStyle(color: Colors.black),))
                  ),
                ),
              ),

              Obx(() {
                return controller.isLogin.value
                    ? Card(
                  child: Align(
                    alignment: Alignment.center,
                    child: ListTile(
                        title: TextButton(onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  EsqueciMinhaSenhaWidget()));
                        },
                            child: Text('Esqueci Minha Senha',
                              style: TextStyle(color: Colors.black,),))
                    ),
                  ),
                ) : Container();
              }
              ),

              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'OU',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),

              SizedBox(height: 16.0),

              Center(
                child: IconButton(
                  icon: Icon(MdiIcons.google),
                  onPressed: (){},
                ),
              ),

            ],
          ),
        ),
      ),
    )));
  }
}