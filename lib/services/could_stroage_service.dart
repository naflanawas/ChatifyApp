//this page will provide utility functions which can be used to save stuffs to our firestore stroage

import 'dart:io';

//packages
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';

//variables
const String USER_COLLECTION = "Users";

class CloudStorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  //constructor
  CloudStorageService() {}
}
