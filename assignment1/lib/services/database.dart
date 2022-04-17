import 'package:assignment1/services/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  //get the uid to create doc for particular user (to connect collection with user)
  final String uid;
  DatabaseService(this.uid);
  //getting random unique id for classrooms
  //var _uniqueId = Uuid().v4();


  //collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference classroomCollection = 
      FirebaseFirestore.instance.collection('classrooms');

  Future updateUsersData(String userName, String emailId,String photoUrl) async {
    return await userCollection.doc(uid).set({
      'name': userName,
      'emailId': emailId,
      'photoUrl':photoUrl,
    });
  }
  Future updateClassroomsData(String className, String description, String creator,
      String section,String room,String subject) async{
    return await classroomCollection.doc().set({
      'className':className,
      'description':description,
      'creator':creator,
      'section':section,
      'room':room,
      'subject':subject
    });
  }
}