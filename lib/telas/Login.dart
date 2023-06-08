import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sellcar/telas/tela_home/tela_home_widget.dart';

import 'esqueci_minha_senha/esqueci_minha_senha_widget.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.yellow ,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail', labelStyle: TextStyle(color: Colors.black,),
                  focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),borderSide: BorderSide(color: Colors.grey),),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Senha', labelStyle: TextStyle(color: Colors.black,),
                  focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),borderSide: BorderSide(color: Colors.grey)),),
                obscureText: true,
              ),

              SizedBox(height: 16.0),
              Card(
                child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                      title: TextButton(onPressed: () {
                        Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_, __, ___) => TelaHomeWidget()));
                      },
                          child: Text('Entrar', style: TextStyle(color: Colors.black),))
                  ),
                ),
              ),

              Card(
                child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                      title: TextButton(onPressed: () {
                        Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_, __, ___) => EsqueciMinhaSenhaWidget())); },
                          child: Text('Esqueci Minha Senha', style: TextStyle(color: Colors.black,),))
                  ),
                ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () {
                    },

                  ),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(MdiIcons.google ),
                    onPressed: () {
                      // Ação quando o botão "Google" for pressionado
                    },
                  ),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(MdiIcons.twitter ),
                    onPressed: () {
                      // Ação quando o botão "Google" for pressionado
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}