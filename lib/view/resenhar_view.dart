import 'package:flutter/material.dart';

class ResenharView extends StatefulWidget {
  const ResenharView({super.key});

  @override
  State<ResenharView> createState() => _ResenharView();
}
  var formKey = GlobalKey<FormState>();

  //Controladores dos Campos de Texto
  //var email = TextEditingController();
  //var senha = TextEditingController();

class _ResenharView extends State<ResenharView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      
      appBar: AppBar(
        title: Text ('REDEFINIR SENHA'),
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
                  labelText: 'Insira seu Email',
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
                  Navigator.pop(context,);
                },
                child: Text('FAZER LOGIN'),
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