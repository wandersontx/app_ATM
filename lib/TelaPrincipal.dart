import 'package:app_atm/TelaClientes.dart';
import 'package:app_atm/TelaContato.dart';
import 'package:app_atm/TelaEmpresa.dart';
import 'package:app_atm/TelaServico.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ATM Consultoria'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _abrirMenu('empresa'),
                    child: Image.asset('images/menu_empresa.png'),
                  ),
                  GestureDetector(
                    onTap: () => _abrirMenu('servico'),
                    child: Image.asset('images/menu_servico.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _abrirMenu('cliente'),
                    child: Image.asset('images/menu_cliente.png'),
                  ),
                  GestureDetector(
                    onTap: () => _abrirMenu('contato'),
                    child: Image.asset('images/menu_contato.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _abrirMenu(String opcao) {
    switch (opcao) {
      case 'empresa':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
        break;
      case 'servico':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaServico()));
        break;
      case 'cliente':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaClientes()));
        break;
      case 'contato':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaContato()));
        break;
    }
  }
}
