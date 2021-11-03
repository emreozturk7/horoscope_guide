import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  void readData() {
    FirebaseFirestore.instance
        .collection('horoscope')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        print(doc["date"]);
      });
    });
  }
}
