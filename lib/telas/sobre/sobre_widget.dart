import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sobre_model.dart';
export 'sobre_model.dart';

class SobreWidget extends StatefulWidget {
  const SobreWidget({Key? key}) : super(key: key);

  @override
  _SobreWidgetState createState() => _SobreWidgetState();
}

class _SobreWidgetState extends State<SobreWidget> {
  late SobreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SobreModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFF0E832),
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: true,
          title: Text(
            'Sobre nós',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 24.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.75,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(7.0),
                      border: Border.all(
                        color: Color(0xFF636363),
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Quem  somos \n\nSomos um grupo de estudantes do 2º período de ADS apaixonados por tecnologia e com uma vontade incontrolável de criar soluções inovadoras. Depois de muitas horas de estudo, trabalho em equipe e café, estamos orgulhosos em apresentar o SellCar - o seu novo destino para a compra e venda de carros!\n\nO que fazemos \n\n\nComo um grupo de estudantes criando o SellCar, vocês podem destacar as principais atividades e serviços relacionados ao desenvolvimento e funcionamento do aplicativo. Aqui está um exemplo:\n\nNa equipe do SellCar, estamos empenhados em criar uma plataforma inovadora para facilitar a revenda de carros. Nós nos especializamos em fornecer soluções tecnológicas para conectar compradores e vendedores, oferecendo uma experiência única e eficiente no mercado automobilístico.\n\nDesenvolvimento do Aplicativo SellCar: Utilizando nossa experiência em desenvolvimento de software, criamos o aplicativo SellCar para dispositivos móveis. Com uma interface amigável e recursos avançados, o aplicativo permite que os usuários naveguem por uma ampla seleção de veículos, visualizem informações detalhadas, entrem em contato com os vendedores e realizem transações seguras.',
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
