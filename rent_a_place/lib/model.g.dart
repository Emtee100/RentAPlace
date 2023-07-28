// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Users extends _Users with RealmEntity, RealmObjectBase, RealmObject {
  Users(
    String fullName,
    String emailAddress,
    String photoUrl, {
    CreditCard? card,
    MobilePay? mobilepay,
    Iterable<Places> savedPlaces = const [],
  }) {
    RealmObjectBase.set(this, 'fullName', fullName);
    RealmObjectBase.set(this, 'emailAddress', emailAddress);
    RealmObjectBase.set(this, 'photoUrl', photoUrl);
    RealmObjectBase.set(this, 'card', card);
    RealmObjectBase.set(this, 'mobilepay', mobilepay);
    RealmObjectBase.set<RealmList<Places>>(
        this, 'savedPlaces', RealmList<Places>(savedPlaces));
  }

  Users._();

  @override
  String get fullName =>
      RealmObjectBase.get<String>(this, 'fullName') as String;
  @override
  set fullName(String value) => RealmObjectBase.set(this, 'fullName', value);

  @override
  String get emailAddress =>
      RealmObjectBase.get<String>(this, 'emailAddress') as String;
  @override
  set emailAddress(String value) =>
      RealmObjectBase.set(this, 'emailAddress', value);

  @override
  String get photoUrl =>
      RealmObjectBase.get<String>(this, 'photoUrl') as String;
  @override
  set photoUrl(String value) => RealmObjectBase.set(this, 'photoUrl', value);

  @override
  CreditCard? get card =>
      RealmObjectBase.get<CreditCard>(this, 'card') as CreditCard?;
  @override
  set card(covariant CreditCard? value) =>
      RealmObjectBase.set(this, 'card', value);

  @override
  MobilePay? get mobilepay =>
      RealmObjectBase.get<MobilePay>(this, 'mobilepay') as MobilePay?;
  @override
  set mobilepay(covariant MobilePay? value) =>
      RealmObjectBase.set(this, 'mobilepay', value);

  @override
  RealmList<Places> get savedPlaces =>
      RealmObjectBase.get<Places>(this, 'savedPlaces') as RealmList<Places>;
  @override
  set savedPlaces(covariant RealmList<Places> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Users>> get changes =>
      RealmObjectBase.getChanges<Users>(this);

  @override
  Users freeze() => RealmObjectBase.freezeObject<Users>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Users._);
    return const SchemaObject(ObjectType.realmObject, Users, 'Users', [
      SchemaProperty('fullName', RealmPropertyType.string),
      SchemaProperty('emailAddress', RealmPropertyType.string),
      SchemaProperty('photoUrl', RealmPropertyType.string),
      SchemaProperty('card', RealmPropertyType.object,
          optional: true, linkTarget: 'CreditCard'),
      SchemaProperty('mobilepay', RealmPropertyType.object,
          optional: true, linkTarget: 'MobilePay'),
      SchemaProperty('savedPlaces', RealmPropertyType.object,
          linkTarget: 'Places', collectionType: RealmCollectionType.list),
    ]);
  }
}

class CreditCard extends _CreditCard
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  CreditCard(
    String provider,
  ) {
    RealmObjectBase.set(this, 'provider', provider);
  }

  CreditCard._();

  @override
  String get provider =>
      RealmObjectBase.get<String>(this, 'provider') as String;
  @override
  set provider(String value) => RealmObjectBase.set(this, 'provider', value);

  @override
  Stream<RealmObjectChanges<CreditCard>> get changes =>
      RealmObjectBase.getChanges<CreditCard>(this);

  @override
  CreditCard freeze() => RealmObjectBase.freezeObject<CreditCard>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(CreditCard._);
    return const SchemaObject(
        ObjectType.embeddedObject, CreditCard, 'CreditCard', [
      SchemaProperty('provider', RealmPropertyType.string),
    ]);
  }
}

class MobilePay extends _MobilePay
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  MobilePay(
    String provider,
  ) {
    RealmObjectBase.set(this, 'provider', provider);
  }

  MobilePay._();

  @override
  String get provider =>
      RealmObjectBase.get<String>(this, 'provider') as String;
  @override
  set provider(String value) => RealmObjectBase.set(this, 'provider', value);

  @override
  Stream<RealmObjectChanges<MobilePay>> get changes =>
      RealmObjectBase.getChanges<MobilePay>(this);

  @override
  MobilePay freeze() => RealmObjectBase.freezeObject<MobilePay>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MobilePay._);
    return const SchemaObject(
        ObjectType.embeddedObject, MobilePay, 'MobilePay', [
      SchemaProperty('provider', RealmPropertyType.string),
    ]);
  }
}

class Places extends _Places with RealmEntity, RealmObjectBase, RealmObject {
  Places(
    String name,
    String address, {
    Iterable<String> tags = const [],
    Iterable<Users> bookedBy = const [],
  }) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'address', address);
    RealmObjectBase.set<RealmList<String>>(
        this, 'tags', RealmList<String>(tags));
    RealmObjectBase.set<RealmList<Users>>(
        this, 'bookedBy', RealmList<Users>(bookedBy));
  }

  Places._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  RealmList<String> get tags =>
      RealmObjectBase.get<String>(this, 'tags') as RealmList<String>;
  @override
  set tags(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get address => RealmObjectBase.get<String>(this, 'address') as String;
  @override
  set address(String value) => RealmObjectBase.set(this, 'address', value);

  @override
  RealmList<Users> get bookedBy =>
      RealmObjectBase.get<Users>(this, 'bookedBy') as RealmList<Users>;
  @override
  set bookedBy(covariant RealmList<Users> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Places>> get changes =>
      RealmObjectBase.getChanges<Places>(this);

  @override
  Places freeze() => RealmObjectBase.freezeObject<Places>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Places._);
    return const SchemaObject(ObjectType.realmObject, Places, 'Places', [
      SchemaProperty('name', RealmPropertyType.string,
          indexType: RealmIndexType.fullText),
      SchemaProperty('tags', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('address', RealmPropertyType.string,
          indexType: RealmIndexType.fullText),
      SchemaProperty('bookedBy', RealmPropertyType.object,
          linkTarget: 'Users', collectionType: RealmCollectionType.list),
    ]);
  }
}
