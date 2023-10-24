import '../utils/export_file.dart';

class Authentication extends GetxController {
  final apiService = Get.put(ApiService());

  TextEditingController loginphoneController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  //LoginAPI
  var loginLoading = false.obs;
  var loginData = {}.obs;
  Future<void> login(Map payload) async {
    loginLoading(true);
    try {
      var response = await apiService.postAuthRequest(
          endpoint: "user/agent/login/", payload: payload);
      Map data = jsonDecode(response);
      if (data["success"] == null) {
        // Fluttertoast.showToast(
        //   msg: response["message"],
        // );
      } else {
        loginData.value = data;
        UserSimplePreferences.setToken(token: loginData["access"].toString());
        // Fluttertoast.showToast(
        //   msg: response["message"],
        // );
      }
    } catch (e) {
      // Fluttertoast.showToast(
      //   msg: response["message"],
      // );
    } finally {
      loginLoading(false);
    }
  }

  //getConstiuency
  var constituency = [].obs;
  var isConstituencyLoading = false.obs;
  Future<void> getConstituency() async {
    isConstituencyLoading(true);
    try {
      var response =
          await apiService.simplegetRequest(endpoint: "constituency");
      List data = jsonDecode(response);
      constituency.value = data;
    } catch (e) {
      constituency.value = [];
    } finally {
      isConstituencyLoading(false);
    }
  }

  //getMandals
  var mandalsList = [].obs;
  var ismandalsLoading = false.obs;
  Future<void> getMandals(int id) async {
    ismandalsLoading(true);
    try {
      var response =
          await apiService.simplegetRequest(endpoint: "mandals/$id");
      List data = jsonDecode(response);
      mandalsList.value = data;
    } catch (e) {
      mandalsList.value = [];
    } finally {
      ismandalsLoading(false);
    }
  }

  //getVillages
  var villages = [].obs;
  var isvillagesLoading = false.obs;
  Future<void> getVillages(int id) async {
    isvillagesLoading(true);
    try {
      var response =
          await apiService.simplegetRequest(endpoint: "villages/$id");
      List data = jsonDecode(response);
      villages.value = data;
    } catch (e) {
      villages.value = [];
    } finally {
      isvillagesLoading(false);
    }
  }
}
