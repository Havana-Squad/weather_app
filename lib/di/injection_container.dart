import 'package:get_it/get_it.dart';

import 'register_date_layer.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await registerDataLayer();
}
