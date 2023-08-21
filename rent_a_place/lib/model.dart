import 'package:realm/realm.dart';
part 'model.g.dart';

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
 // late List<_Places> bookedPlaces;

  ObjectId get id => _id;
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
  @Indexed(RealmIndexType.fullText)
  late String name;
  late List <String> tags;
  late String photoUrl;
  @Indexed(RealmIndexType.fullText)
  late String address;
  late List <_Users> bookedBy;

  ObjectId get id => _id;
}

final config = Configuration.local([Users.schema, Places.schema, CreditCard.schema, MobilePay.schema]);
final realm = Realm(config);