import '../configuracoes/configuracoes_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tela_home_model.dart';
export 'tela_home_model.dart';

class TelaHomeWidget extends StatefulWidget {
  const TelaHomeWidget({Key? key}) : super(key: key);

  @override
  _TelaHomeWidgetState createState() => _TelaHomeWidgetState();
}

class _TelaHomeWidgetState extends State<TelaHomeWidget> {
  late TelaHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaHomeModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Drawer(
            elevation: 16.0,
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xFFF0E832),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Menu',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 24.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Configuracoes');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                        size: 19.0,
                      ),
                      title: Text(
                        'Configurações',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).titleSmall,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('favoritos');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.favorite,
                        size: 19.0,
                      ),
                      title: Text(
                        'Favoritos',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).titleSmall,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Perto_Vc');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.location_on,
                        size: 19.0,
                      ),
                      title: Text(
                        'Perto de Você',
                        style: FlutterFlowTheme.of(context).titleSmall,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Meus_Anuncios');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.add_circle,
                      size: 19.0,
                    ),
                    title: Text(
                      'Meus anúncios',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('contato');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.people,
                        size: 19.0,
                      ),
                      title: Text(
                        'Fale Conosco',
                        style: FlutterFlowTheme.of(context).titleSmall,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Sobre');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.info_sharp,
                        size: 19.0,
                      ),
                      title: Text(
                        'Sobre nós',
                        style: FlutterFlowTheme.of(context).titleSmall,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFFFBFC0C),
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Text(
              'Sellcar',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
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
                      Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_, __, ___) => ConfiguracoesWidget()));
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
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                //corpo da pesquisa
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.05, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),

                          //Container - Pesquisa
                          child: Container(
                            width: 280.0,
                            child: TextFormField(
                              controller: _model.textController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintText: 'Pesquise',
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 20.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 20.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 20.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 20.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ), //FIM DO CONTAINER PESQUISA

                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.59, -0.03),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('resultados_pesquisa');
                          },
                          child: Icon(
                            Icons.search,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //FIM DO CORPO DA PESQUISA


                //CORPO APP
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

                //FIM DO CORPO

              ],
            ),
          ),
        ),
      ),
    );
  }
}
