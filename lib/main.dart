import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './firebase_options.dart';
import '../provider/providers.dart';
import '../../utils/theme.dart';
import '../screens/screens.dart';

Future main() async {
  /// [ ensureInitialized ] to ensure that the Firebase app is initialized.
  WidgetsFlutterBinding.ensureInitialized();

  /// [ initializeApp ] to wait for the Firebase app to be initialized.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: RentalItems(),
        ),
        ChangeNotifierProvider.value(
          value: GoogleSignInProvider(),
        ),
        ChangeNotifierProvider.value(
          value: HomeNavigation(),
        ),
      ],
      child: MaterialApp(
        theme: StoreTheme.theme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/auth': (context) => const AuthPage(),
          '/home': (context) => const Home(),
          '/menu': (context) => const Menu(),
          '/cart': (context) => const CartScreen(),
          '/profile': (context) => const ProfilePage(),
        },
      ),
    );
  }
}
