import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/features/main/view_model/bottom_nav_bar_view_model.dart';
import 'package:whatsapp_clone/features/settings/repository/settings_repository.dart';
import 'package:whatsapp_clone/features/settings/view_model/settings_view_model.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await ScreenUtil.ensureScreenSize();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarVM()),
        ChangeNotifierProvider(
          create: (_) =>
              SettingsVM(settingsLocalRepo: SettingsLocalRepo())
                ..loadSettings(),
        ),
      ],
      child: const WhatsAppCloneApp(),
    ),
  );
}
