import 'package:flutter/material.dart';
import 'telas/TelaConfig.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.yellow ),//ThemeData
      home: Navigator(
        pages: [
          MaterialPage(child: TelaInicio()),
          if (configPushed)
            MaterialPage(child: TelaConfig()),
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


class TelaInicio extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('SellCar', style: TextStyle(color: Colors.black)), //Text
          actions: [
            PopupMenuButton<String>(
              icon: Icon(Icons.person, color: Colors.black,),
              onSelected: (value) {
                // Ação quando um item do popup for selecionado
                print(value);
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'Opção 1',
                  child: ListTile(
                    leading: Icon(Icons.candlestick_chart_outlined),
                    title: Text('Preferências'),
                    onTap: (){
                      Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_, __, ___) => TelaConfig()));
                    },
                  ),
                ),
                PopupMenuItem(
                  value: 'Opção 2',
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Trocar de conta'),
                  ),
                ),
                PopupMenuItem(
                  value: 'Opção 3',
                  child: ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Sair'),
                  ),
                ),
              ],
            ),
          ],
        ),//AppBar
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.yellow),
                child: Text('Menu',
                    style: TextStyle(fontSize: 24, color: Colors.black87)
                ), //text
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configurações'),
                onTap: (){
                  Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_, __, ___) => TelaConfig()));
                },
              ),//LisTtile
              ListTile(
                leading: Icon(Icons.add_circle),
                title: Text('Meus anúncios'),
                onTap: () {},
              ), //ListTile
              ListTile(
                leading: Icon(Icons.add_location),
                title: Text('Localização'),
                onTap: () {},
              ), //ListTile
              ListTile(
                leading: Icon(Icons.people_alt),
                title: Text('Fale Conosco'),
                onTap: () {},
              ), //ListTile
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Sobre nós'),
                onTap: () {},
              ), //ListTile
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Ajuda'),
                onTap: () {},
              ), //ListTile
            ], //Widget
          ), //ListView
        ), //Drawer
//CORPO DO APLICATIVO//

        body: SingleChildScrollView(
          child: Column(
            children:[
              //CONTAINER DE BOAS VINDAS
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bem vindo(a) ao nosso App de vendas',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Aproveite nossas funcionalidades',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],//Fim do Children da Column
                    ),//Fim da Column
                  ),//Fim do Container
                ),//Fim do Center
              ),//Fim do Container Principal
              //FIM DE CONTAINER DE BOAS VINDAS//
              Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Digite sua pesquisa',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Ação quando o botão de filtro for pressionado
                      },
                      icon: Icon(Icons.filter_list),
                      label: Text('Filtrar'),
                    ),
                  ],
                ),//Column
              ),//Container da Pesquisa


              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0), // Define a margem horizontal de 16 pixels
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Em oferta',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),//TextStyle
                  ),//Text
                ),//Align
              ),//Container de Título

              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),

              Container(
                height: 200, // Definindo a altura da ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Definindo a direção horizontal
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        width: 200,
                        child: ListTile(
                          title: Text('Título do Card $index'),
                          subtitle: Text('Subtítulo do Card $index'),
                        ),
                      ),//Fim do container do card
                    );//Fim do card
                  },//Fim do itemBuilder
                ),//Fim do ListViewBuilder
              ),//Container fim do card Horizontal

              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),//Fim do Divider do Card Horizontal
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0), // Define a margem horizontal de 16 pixels
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Próximo de você:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),//TextStyle
                  ),//Text
                ),//Align
              ),//Container de Título
              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),//Fim do Divider do titulo

//CONTAINER COM OS CARDS PRINCIPAIS//
              Container(
                width: 500, // Largura desejada
                child: ListView.builder(
                  shrinkWrap: true, // Define o ListView para se ajustar ao espaço disponível
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 50,
                                child: Placeholder(), // Substitua o Placeholder pela sua imagem
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nome do carro'),
                                      Text('Quilometragem'),
                                      Text('Cor/Marca'),
                                      Text('Valor em RS'),
                                    ],//Children linhas de texto
                                  ),//Column
                                ),//Padding
                              ),//Expanded
                            ],//Children
                          ),//Row com as linhas de texto
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Anunciante e cidade-estado'),
                                ElevatedButton(
                                  onPressed: () {
                                    // Lógica do botão de favorito
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.black),),
                                  child: Icon(Icons.favorite),
                                ),
                              ],
                            ),
                          ),//Fim do Container do rodapé//
                        ],//Children
                      ),//Column
                    );//Card
                  },//Item builder
                ),//ListViewBuilder
              ),//Fim do Container da lista de Cards

            ],//children
          ),//column
        ),//SingleScrollView
//FIM DO CORPO DO APLICATIVO

        bottomNavigationBar: BottomAppBar(
          child:Container(
            color:  Colors.yellow,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: (){},
                ),//IconButton
                IconButton(
                  icon: Icon(Icons.add_box),
                  onPressed: (){},
                ),//IconButton
                IconButton(
                  icon: Icon(Icons.add_location),
                  onPressed: (){

                  },
                ),//IconButton
              ],//Widget
            ),//Row
          ),//Container
        ),//BottonAppBar
        //Fim da Barra de Navegação inferior//
    );//MaterialApp
  }//Build
}