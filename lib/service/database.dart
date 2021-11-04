import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  final FirebaseFirestore _database = FirebaseFirestore.instance;

  Future<void> readData() async {
    final CollectionReference ref = _database.collection('horoscope');
    await ref.get().then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        return doc['date'];
      }
    });
  }
}
