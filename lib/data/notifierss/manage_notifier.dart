import 'package:api_2/data/notifierss/notifiers.dart';
import 'package:api_2/funtion/manage_data.dart';
import 'package:api_2/funtion/utils.dart';

Map<String, dynamic> dataMapCurrent = {};
Map<String, dynamic> dataMapInternal = {};
Map<String, dynamic> dataMapExternal = {};

Future<void> setDataNotifier() async {
  if (isConnectedNotifier.value) {
    dataMapCurrent = await getInternalData();
    dataMapExternal = await getExternal();
    dataMapInternal = dataMapExternal;
    dataMapCurrent = dataMapCurrent;
  } else {
    dataMapInternal = await getInternalData();
    dataMapCurrent = dataMapInternal;
  }
  if (dataMapCurrent.isNotEmpty) {
    dataNofier.value = fromMaptoDataMadel(map: dataMapCurrent);
  }
}
