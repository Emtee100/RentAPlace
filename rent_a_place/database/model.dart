import 'package:realm/realm.dart';

@RealmModel()
class _Users {
  @PrimaryKey()
  @MapTo("_id")
  late ObjectId _id;
  late String fullName;
  late String emailAddress;
  late String photoUrl;

  late List<_Places> savedPlaces;

  late List<_Places> bookedPlaces;

  ObjectId get id => _id;
}

@RealmModel()
class _Places {
  @PrimaryKey()
  @MapTo("_id")
  late ObjectId _id;

  late String name;

  late _Users bookedBy;

  ObjectId get id => _id;
}
