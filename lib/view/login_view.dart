// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}
  var formKey = GlobalKey<FormState>();

  //Controladores dos Campos de Texto
  var email = TextEditingController();
  var senha = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text ('LOGIN'),
      centerTitle: true,
      backgroundColor: Colors.blue.shade100,
      ),

        body: Padding(
        padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // made by gabriel
            children: [
              
              //
              // CAMPO DE TEXTO
              //
              TextFormField(
                controller: email,

                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.mail),
                ),
                //
                // VALIDAÇÃO
                //
                validator: (value) {
                  if (value == null) {
                    return 'Informe um Email';
                  } else if (value.isEmpty) {
                    return 'Informe um Email';
                  //} else if (double.tryParse(value) == null) {
                  //  return 'Informe um valor NUMÉRICO';
                  }
                  //Retornar null significa sucesso na validação
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: senha,
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Informe uma Senha';
                  } else if (value.isEmpty) {
                    return 'Informe uma Senha';
                  //} else if (double.tryParse(value) == null) {
                  //  return 'Informe um valor NUMÉRICO';
                  }
                  //Retornar null significa sucesso na validação
                  return null;
                },
              ),
              SizedBox(height: 30),
              //
              // BOTÃO
              //
              //ElevatedButton, OutlinedButton, TextButton
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade100,
                  foregroundColor: Colors.blue.shade900,
                  minimumSize: Size(200, 50),
                  shadowColor: Colors.red,
                ),
                onPressed: () {
                  //
                  // Chamar os validadores dos campos de texto
                  //
                  if (formKey.currentState!.validate()) {
                    //Form validado com sucesso

                    //
                    // Retornar as informações inseridas
                    // nos campos de texto
                    //
                    setState(() {
                      double v1 = double.parse(email.text);
                      double v2 = double.parse(senha.text);
                      double s = (v1 + v2);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Soma: ${s.toStringAsFixed(2)}'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    });
                  }
                },
                child: Text('LOGIN'),
                


              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade100,
                  foregroundColor: Colors.blue.shade900,
                  minimumSize: Size(200, 50),
                 
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'cadastro');
                },
                child: Text('CRIAR CONTA'),
              ),

              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade100,
                  foregroundColor: Colors.blue.shade900,
                  minimumSize: Size(200, 50),
                 
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'resenhar');
                },
                child: Text('Esqueci minha senha'),
              ),

              SizedBox(height: 10),

              
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade100,
                  foregroundColor: Colors.blue.shade900,
                  minimumSize: Size(200, 50),
                 
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'credencial');
                },
                child: Text('credenciais do desenvolvedor'),
              ),

              
            ],
          ),
        ),
      ),
    );
    
  }
  
}