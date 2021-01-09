import 'package:flutter/material.dart';

class TelaClientes extends StatefulWidget {
  @override
  _TelaClientesState createState() => _TelaClientesState();
}

class _TelaClientesState extends State<TelaClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('images/detalhe_cliente.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Clientes',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset('images/cliente1.png'),
              ),
              Text('Empresa de software'),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset('images/cliente2.png'),
              ),
              Text('Empresa de auditoria')
            ],
          ),
        ),
      ),
    );
  }
}
