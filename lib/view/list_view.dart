import 'package:flutter/material.dart';

class ListView extends StatefulWidget {
  const ListView({super.key});

  @override
  State<ListView> createState() => _ListView();
}
  var formKey = GlobalKey<FormState>();

  //Controladores dos Campos de Texto
  //var email = TextEditingController();
  //var senha = TextEditingController();

class _ListView extends State<ListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (

      appBar: AppBar(
        title: Text ('CRIAR CONTA'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade100, 
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextFormField(
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
            ),
          SizedBox(height: 30),

            TextFormField(
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Insira um Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.mail),
                ),
            ),
          SizedBox(height: 30),

            TextFormField(
              style: TextStyle(fontSize: 32),
              decoration: InputDecoration(
                labelText: 'Insira uma Senha',
                 border: OutlineInputBorder(),
                 prefixIcon: Icon(Icons.lock),
              ),
            ),
          SizedBox(height: 30),

            TextFormField(
              style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Confirme a Senha',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
            ),
          SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade100,
                  foregroundColor: Colors.blue.shade900,
                  minimumSize: Size(200, 50),
                 
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('REGISTRAR'),
              ),
          
        SizedBox(height: 10),

            //OutlinedButton(
              //onPressed: () {
                //Navigator.pop(context);
              //},
              //child: Text('voltar'),
            //),
            //const SizedBox(height: 50),
          ]
        )
      )
    );
  }
} 