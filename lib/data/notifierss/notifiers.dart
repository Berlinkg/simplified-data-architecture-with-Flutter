import 'package:api_2/constant.dart';
import 'package:flutter/material.dart';

import '../../models/data_models.dart';

ValueNotifier<DataModel> dataNofier = ValueNotifier(
  DataModel(
      activity: " activity",
      type: "type",
      participants: 0,
      price: price,
      link: "link",
      key: "key",
      accessibility: "accability"),
);
ValueNotifier<bool> isConnectedNotifier = ValueNotifier(false);
