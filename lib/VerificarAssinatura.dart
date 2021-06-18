import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerificarAssinatura extends StatelessWidget {
  const VerificarAssinatura({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verificar assinatura"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/logo.png'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                child: Text("Verificar novamente"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Voltar"),
              ),
            ]
          ),
        ),
      ),
    );
  }
}