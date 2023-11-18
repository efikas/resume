// import 'package:yanzu/core/models/user.dart';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// const String kUserBox = 'userBox';
// const String profileKey = 'profile';
// const String isFirstKey = 'isTheFirst';
// const String recentSearchesKey = 'recentSearches';
// const String accountVerifiedKey = 'notification';
// const String myTokenKey = 'myToken';
// const String churchKey = 'churchString';
// const String quoteKey = 'quote';
// const String whoMeKey = 'whoMe';
// const String videoKey = 'videommmmmm';
// const String _themeStatus = 'themeStatus';

// class LocalStorage {
//   static Future<void> init() async {
//     await Hive.initFlutter();
//     await Hive.openBox<dynamic>(kUserBox);
//   }

//   static Box<dynamic> get _userBox => Hive.box<dynamic>(kUserBox);

//   static void haveFirstView(bool t) {
//     if (isFirstKey == null) {
//       return;
//     }
//     _userBox.put(isFirstKey, t);
//   }

//   static bool getIsFirst() {
//     final bool data = _userBox.get(isFirstKey) ?? true;
//     return data;
//   }

//   static void setUser(UserProfile user) {
//     _userBox.put(profileKey, user.toJson());
//   }

//   static UserProfile? get getUser {
//     final dynamic data = _userBox.get(profileKey);
//     if (data == null) {
//       return null;
//     }
//     final UserProfile user = UserProfile.fromJson(Map<String, dynamic>.from(data));
//     return user;
//   }

//   static Future<void> clear() async {
//     await _userBox.clear();
//   }

//   static void clean(String key) {
//     _userBox.delete(key);
//   }
 

//   static bool get accountVerified {
//     return _userBox.get(accountVerifiedKey, defaultValue: false);

//   }

//   static void setAccountVerified(bool type) async {
//     await _userBox.put(accountVerifiedKey, type);
//   }

//   static String get myToken {
//     if (_userBox.containsKey(myTokenKey)) {
//       return _userBox.get(myTokenKey);
//     } else {
//       return "";
//     }
//   }

//   static void setMyToken(String type) async {
//     await _userBox.put(myTokenKey, type);
//   }

//   static bool get themeStatus {
//     if (_userBox.containsKey(_themeStatus)) {
//       return _userBox.get(_themeStatus);
//     } else {
//       return false;
//     }
//   }

//   static void setThemeStatus(bool type) async {
//     await _userBox.put(_themeStatus, type);
//   }
// }
