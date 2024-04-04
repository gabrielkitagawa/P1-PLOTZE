import 'package:flutter/material.dart';

class CredencialView extends StatefulWidget {
  const CredencialView({super.key});

  @override
  State<CredencialView> createState() => _CredencialView();
}

var formKey = GlobalKey<FormState>();

//Controladores dos Campos de Texto
//var email = TextEditingController();
//var senha = TextEditingController();

class _CredencialView extends State<CredencialView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CREDENCIAIS'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade100,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(50, 100, 50, 100),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, 
                children: [
              TextField(
              decoration: InputDecoration(
                labelText: 'Digite algo',
                border: OutlineInputBorder(),
              ),
            ),
            
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('voltar'),
              ),
            ])));
  }
}
