import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  static SharedPreferences? _preferences;
  static const String isUserLoggedIn = 'isuserloggedin';
  static const String isToken = 'token';
  static const String isPopupValue = 'selectedvalue';
  static const String userDataLocal = 'userData';
  static const String isRefreshToken = 'refreshtoken';
  static const String candidateId = 'candidateId';
  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // static Future setLoginStatus({required bool loginStatus}) async {
  //   await _preferences.setBool(isUserLoggedIn, loginStatus);
  // }

  // static bool? getLoginStatus() {
  //   return _preferences.getBool(isUserLoggedIn);
  // }

  // static Future setUserdata({required String userData}) async {
  //   await _preferences.setString(userDataLocal, userData);
  // }

  // static String? getUserdata() {
  //   return _preferences.getString(userDataLocal);
  // }

  static Future setToken({required String token}) async {
    await _preferences!.setString(isToken, token);
  }

  static Future setPopupValue({required String selectedvalue}) async {
    await _preferences!.setString(isPopupValue, selectedvalue);
  }

  static Future setCandidateId({required String id}) async {
    await _preferences!.setString(candidateId, id);
  }

  static String? getPopupValue() {
    return _preferences!.getString(isPopupValue);
  }

//////////
  // static Future setCandidateId({required String id}) async {
  //   await _preferences.setString(candidateId, id);
  // }

  static Future setRefreshToken({required String refreshToken}) async {
    await _preferences!.setString(isRefreshToken, refreshToken);
  }

  static String? getRefreshToken() {
    return _preferences!.getString(isRefreshToken);
  }

  static String? getToken() {
    return _preferences!.getString(isToken);
  }

  static String? getCandidateId() {
    return _preferences!.getString(candidateId);
  }

  ///////////
  // static String? getCandidateId() {
  //   return _preferences.getString(candidateId);
  // }

  static void clearAllData() {
    _preferences!.clear();
  }
}
