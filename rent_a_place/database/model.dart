import 'package:realm/realm.dart';

@RealmModel()
class _Users {
  @PrimaryKey()
  @MapTo("_id")
  late ObjectId _id;
  late String fullName;
  late String emailAddress;
  late String photoUrl;
  late _CreditCard? card;
  late _MobilePay? mobilepay;

  late List<_Places> savedPlaces;
  late List<_Places> bookedPlaces;

  ObjectId get id => _id;
}

@RealmModel()
class bookedPlaces {

  late DateTime date;
}

@RealmModel(ObjectType.embeddedObject)
class _CreditCard {
  late String provider;
  late String _cardNumber;
  late String _expiry;

  String get cardNumber => _cardNumber;
  String get expiry => _expiry;

  set setCardNumber(String value) => _cardNumber = value;
}

@RealmModel(ObjectType.embeddedObject)
class _MobilePay {
  late String provider;
  late String _phoneNumber;
  String get getNumber => _phoneNumber;
  set setNumber(String value) => _phoneNumber = value;
}

@RealmModel()
class _Places {
  @PrimaryKey()
  @MapTo("_id")
  late ObjectId _id;
  late String name;
  late List tags;
  late Address address;
  late _Users bookedBy;

  ObjectId get id => _id;
}

@RealmModel(ObjectType.embeddedObject)
class Address {
  late String houseNumber;
  late String streetName;
}

