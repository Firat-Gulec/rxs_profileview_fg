import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rxs_profileview_fg/profile/view/profile_view.dart';
import 'package:rxs_profileview_fg/theme_provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: ((context) => ThemeProvider()),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(themeMode: themeProvider.themeMode,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      debugShowCheckedModeBanner: false, home: ProfileView());
  }
}
