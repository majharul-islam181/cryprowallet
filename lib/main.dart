import 'package:cryptowallet/create_wallet/create_wallet.dart';
import 'package:cryptowallet/splash/splash_screen.dart';
import 'package:cryptowallet/wallet_setup/walltet_setup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: SplashScreen(),
      // home: WalletSetupScreen(),
      home: CreatePasswordScreen(),
    );
  }
}
