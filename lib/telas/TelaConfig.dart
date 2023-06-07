import 'package:flutter/material.dart';
import '../TelaHome.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        pages: [
          MaterialPage(child: TelaConfig()),
          if (configPushed)
            MaterialPage(child: TelaInicio()),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          configPushed = false;
          return true;
        },
      ),
    );
  }
}

bool configPushed = false;

class TelaConfig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: Icon(MdiIcons.accountCircle, color: Colors.black, size: 40,),
        title: Align(
            alignment: Alignment.centerLeft,
          child: Text('Victoria',style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      //CORPO

        body: Column(
          children: [
            SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              elevation: 2.0,
              child: ListTile(
                leading: Icon(MdiIcons.cardAccountDetails),
                title: Text('Minha Conta'),
                onTap: (){},
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
              ),
              elevation: 2.0,
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notificações'),
                onTap: (){},
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
              ),
              elevation: 2.0,
              child: ListTile(
                leading: Icon(MdiIcons.alertCircle),
                title: Text('Meus Anuncios'),
                onTap: (){},
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
              ),
              elevation: 2.0,
              child: ListTile(
                leading: Icon(MdiIcons.security),
                title: Text('Segurança'),
                onTap: (){},
              ),
            ),
            Card(

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
              ),
              elevation: 2.0,
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Excluir Conta'),
                onTap: (){},
              ),
            ),
          ],
        ),

      //Fim do Corpo
        bottomNavigationBar: BottomAppBar(
          child:Container(
            color:  Colors.yellow,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: (){},
                ),//IconButton
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: (){
                    configPushed = true;
                    Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_, __, ___) => TelaInicio()));
                  },
                ),//IconButton
              ],//Widget
            ),//Row
          ),//Container
        )
    );
  }
}
