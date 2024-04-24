import 'package:flutter/material.dart';
import 'package:name_app_provider_flutter/first_screen.dart';
import 'package:name_app_provider_flutter/provider/name_provider.dart';
import 'package:name_app_provider_flutter/second.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static NameController nameProvider = NameController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: nameProvider),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const FirstScreen(),
          '/second': (context) => SecondScreen(
                initialName:
                    Provider.of<NameController>(context, listen: false).name,
              ),
        },
      ),
    );
  }
}
