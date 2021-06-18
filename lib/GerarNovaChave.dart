import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rsa_encrypt/rsa_encrypt.dart';
import 'package:pointycastle/api.dart' as crypto;

class GerarNovaChave extends StatefulWidget {
  const GerarNovaChave({ Key? key }) : super(key: key);

  @override
  _GerarNovaChaveState createState() => _GerarNovaChaveState();
}

class _GerarNovaChaveState extends State<GerarNovaChave> {
  final List chaves = List.empty(growable: true);
  void _atualizarchave() {
    setState(() {
      chaves.clear();
      //Future to hold our KeyPair
      Future<crypto.AsymmetricKeyPair> futureKeyPair;

      //to store the KeyPair once we get data from our future
      crypto.AsymmetricKeyPair keyPair;

      Future<crypto.AsymmetricKeyPair<crypto.PublicKey, crypto.PrivateKey>> getKeyPair()
      {
      var helper = RsaKeyHelper();
      //helper.encodePrivateKeyToPemPKCS1(keyPair.publicKey);
      //helper.encodePrivateKeyToPemPKCS1(keyPair.privateKey); não foi possível transformar em string
      return helper.computeRSAKeyPair(helper.getSecureRandom());
      }

      chaves.add(crypto.AsymmetricKeyPair);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerar"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/logo.png'),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: chaves.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${chaves[index]}'),
                    contentPadding: EdgeInsets.symmetric(horizontal: 50),
                    tileColor: Colors.blue,
                  );
                },
                ),
              ElevatedButton(
                onPressed: () {
                  _atualizarchave();
                },
                child: Text("Gerar"),
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
