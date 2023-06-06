import 'package:api_2/data/dio.dart';
import 'package:api_2/data/shared_pref.dart';
import 'package:api_2/funtion/utils.dart';

Future<Map<String, dynamic>> getInternalData() async {
  //Todo: await shared:getData.
  //Todo:set the map under.\
  await sharedPref.getData();
  Map<String, dynamic> map = sharedPref.data;

  return map;
}

Future<Map<String, dynamic>> getExternal() async {
  Map<String, dynamic> map = await getHttp();
  String jsonString = fromMapToString(map: map);
  await saveNewInternaldata(externalDataString: jsonString);
  return map;
}

Future<void> saveNewInternaldata({required String externalDataString}) async {
  sharedPref.saveInternalData(jsonString: externalDataString);
  //Todo:shared pref save data from json string.
}
