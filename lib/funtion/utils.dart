import 'dart:convert';

import 'package:api_2/constant.dart';
import 'package:api_2/models/data_models.dart';

Map<String, dynamic> fromStringToMap({required String value}) {
  Map<String, dynamic> map = json.decode(value);
  return map;
}

String fromMapToString({required Map<String, dynamic> map}) {
  String jsonString = json.encode(map);
  return jsonString;
}

DataModel fromMaptoDataMadel({required Map<String, dynamic> map}) {
  return DataModel(
    activity: map[activity],
    type: map[type],
    participants: map[participants],
    price: map[price].toString(),
    link: map[link],
    key: map[key],
    accessibility: map[accessibility].toString(),
  );
}
