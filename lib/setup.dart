import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:recipebox/Repositories/userFactory.dart';

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.instance.registerSingleton<userBank>(
    userBank(),
  );
}
