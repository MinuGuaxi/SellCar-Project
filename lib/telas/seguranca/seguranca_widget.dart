import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'seguranca_model.dart';
export 'seguranca_model.dart';

class SegurancaWidget extends StatefulWidget {
  const SegurancaWidget({Key? key}) : super(key: key);

  @override
  _SegurancaWidgetState createState() => _SegurancaWidgetState();
}

class _SegurancaWidgetState extends State<SegurancaWidget> {
  late SegurancaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SegurancaModel());
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
            'Política de Privacidade',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 20.0,
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
                              'Política de Privacidade\n\nEsta Política de Privacidade descreve como coletamos, usamos, armazenamos e compartilhamos as informações fornecidas pelos usuários ao utilizar nosso aplicativo de venda de veículos. Ao utilizar nosso aplicativo, você concorda com as práticas descritas nesta política.\n\nColeta de Localização:\n\n    Nós coletamos sua localização para fornecer serviços baseados em localização, como exibição de veículos disponíveis próximos a você. Ao utilizar nosso aplicativo, você concede permissão para que nós coletemos e utilizemos sua localização.\n\nArmazenamento de Senhas:\n\n    Para garantir a segurança da sua conta, armazenamos as senhas de forma criptografada. Não compartilhamos ou divulgamos essas senhas para terceiros. É importante que você escolha uma senha forte e a mantenha confidencial.\n\n Uso de Informações:\n\n    Utilizamos as informações fornecidas pelos usuários para melhorar nossos serviços, personalizar sua experiência de compra, processar pagamentos, fornecer suporte ao cliente e enviar comunicações relevantes sobre o aplicativo e promoções.\n\nInformações Gerais Relacionadas aos Dados do Usuário:\n\n    Coletamos informações gerais relacionadas aos dados do usuário, incluindo endereço de e-mail, senha, localização e uso de cookies. Essas informações são utilizadas para autenticar sua conta, garantir a segurança das transações e melhorar a funcionalidade do aplicativo.\n\n Uso de Cookies:\n\n    Utilizamos cookies e tecnologias similares para coletar informações sobre como você interage com nosso aplicativo. Os cookies permitem lembrar suas preferências, rastrear suas atividades e personalizar o conteúdo exibido. Você pode optar por desabilitar os cookies nas configurações do seu dispositivo, mas isso pode afetar a funcionalidade do aplicativo.\n\nCompartilhamento de Informações:\n\n    Não vendemos, alugamos ou compartilhamos suas informações pessoais com terceiros, exceto conforme necessário para fornecer os serviços do aplicativo, cumprir exigências legais ou quando obtivermos seu consentimento explícito.\n\nMedidas de Segurança:\n\n    Adotamos medidas de segurança para proteger suas informações contra acesso não autorizado, uso indevido ou divulgação. No entanto, lembre-se de que nenhum método de transmissão pela Internet ou armazenamento eletrônico é totalmente seguro. Recomendamos que você mantenha sua senha segura e utilize medidas adicionais de segurança para proteger suas informações pessoais.\n\nAlterações na Política de Privacidade:\n\n    Podemos atualizar esta Política de Privacidade periodicamente para refletir alterações nos nossos serviços e práticas. Recomendamos que você revise regularmente esta política para estar ciente de qualquer atualização.',
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
