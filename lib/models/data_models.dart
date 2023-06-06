// import 'dart:math';

import 'dart:developer';

import 'package:api_2/data/notifierss/manage_notifier.dart';
import 'package:api_2/funtion/utils.dart';
import 'package:flutter/material.dart';

class DataModel {
  final String activity;
  final String type;
  final int participants;
  final String price;
  final String link;
  final String key;
  final String accessibility;
  DataModel({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });
  Future<void> reset() async {
    await setDataNotifier();
  }

  void logData() {
    String current = fromMapToString(map: dataMapCurrent);
    String internal = fromMapToString(map: dataMapInternal);
    String external = fromMapToString(map: dataMapExternal);

    debugPrint('Curent: $current');
    log('internal: $internal');

    log('external: $external');
    //Todo:Log internal and external data
  }
}
