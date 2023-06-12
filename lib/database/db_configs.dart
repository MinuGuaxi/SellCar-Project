import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

Future<void> adicionarCarro(
    String marca,
    String modelo,
    String ano,
    String imagePath,
    String km,
    String valor,
    String cor,
    String tipo,
    String ce) async {
  final storage = FirebaseStorage.instance;
  final firestore = FirebaseFirestore.instance;
  final carrosCollection = firestore.collection('carros');

  // Fazendo o upload da foto
  final fotoRef = storage
      .ref()
      .child('carros')
      .child(DateTime.now().millisecondsSinceEpoch.toString());
  final fotoTask = fotoRef.putFile(File(imagePath));

  // Obtendo a URL da foto armazenada
  final fotoSnapshot = await fotoTask;
  final fotoUrl = await fotoSnapshot.ref.getDownloadURL();

  // Adicionando as informações do carro ao Firestore
  await carrosCollection.add({
    'marca': marca,
    'modelo': modelo,
    'ano': ano,
    'fotoUrl': fotoUrl,
    'km': km,
    'valor': valor,
    'cor': cor,
    'tipo': tipo,
    'ce': ce,
    // ... outras informações sobre o carro ...
  });
}
