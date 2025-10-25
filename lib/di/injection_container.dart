import 'package:get_it/get_it.dart';
import 'package:weather_app/di/register_presentation_layer.dart';

import 'register_data_layer.dart';

final sl = GetIt.instance;

init() async {
  registerDataLayer();
  registerPresentationLayer();
}
