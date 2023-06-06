import 'package:api_2/data/notifierss/manage_notifier.dart';
import 'package:api_2/data/shared_pref.dart';

Future<void> initApp() async {
  //await Future.delayed(const Duration(seconds: 3));
  await initSharedPref();
  await initDataNotifier();
}

Future<void> initSharedPref() async {
  await sharedPref.init();
  //Todo:int the shared preferenses
}

Future<void> initDataNotifier() async {
  await setDataNotifier();
}
