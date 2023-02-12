import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_payment/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
      'pk_test_51MSSsSJrFnCFxH0TlmmL7ta2UAdsSaXOhtoWDyYc2c1GKgfsu9sU7IkNlMD5vuKH5wslhstYC5ElePt2irD5gR9u00vBGiLKf4';

  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
