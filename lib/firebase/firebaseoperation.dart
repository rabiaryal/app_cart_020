import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_app_020/configs/utils.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Generalized method to get a collection reference
  CollectionReference getCollection(String collectionName) {
    return _db.collection(collectionName);
  }

  // Create or Add a New Document to any collection
  Future<void> createDocument(
      String collectionName, String id, Map<String, dynamic> data) async {
    try {
      await getCollection(collectionName).doc(id).set(data);
      Utils.toastMessage('Document created in $collectionName with ID: $id');
    } catch (e) {
      Utils.toastMessage('Failed to create document: $e');  // Display error message
      print('Failed to create document: $e');
    }
  }

  // Read or Fetch a Document by ID from any collection
  Future<DocumentSnapshot> getDocument(String collectionName, String id) async {
    try {
      DocumentSnapshot doc = await getCollection(collectionName).doc(id).get();
      Utils.toastMessage('Document fetched from $collectionName with ID: $id');
      return doc;
    } catch (e) {
      Utils.toastMessage('Failed to fetch document: $e');  // Display error message
      print('Failed to fetch document: $e');
      throw e;
    }
  }

  // Update an Existing Document by ID in any collection
  Future<void> updateDocument(
      String collectionName, String id, Map<String, dynamic> data) async {
    try {
      await getCollection(collectionName).doc(id).update(data);
      Utils.toastMessage('Document updated in $collectionName with ID: $id');
    } catch (e) {
      Utils.toastMessage('Failed to update document: $e');  // Display error message
      print('Failed to update document: $e');
    }
  }

  // Delete a Document by ID from any collection
  Future<void> deleteDocument(String collectionName, String id) async {
    try {
      await getCollection(collectionName).doc(id).delete();
      Utils.toastMessage('Document deleted from $collectionName with ID: $id');
    } catch (e) {
      Utils.toastMessage('Failed to delete document: $e');  // Display error message
      print('Failed to delete document: $e');
    }
  }

  // Fetch All Documents from any collection
  Stream<QuerySnapshot> getAllDocuments(String collectionName) {
    Utils.toastMessage('Fetching all documents from $collectionName');
    return getCollection(collectionName).snapshots();
  }
}
