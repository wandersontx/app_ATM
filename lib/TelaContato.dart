import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
        backgroundColor: Colors.teal[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('images/detalhe_contato.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Contato',
                      style: TextStyle(color: Colors.tealAccent, fontSize: 20),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Email: contato@atmconsultoria.com'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Telefone (61) 3488-9966'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('celular (61) 7889-9966'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
