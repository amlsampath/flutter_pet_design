import 'package:dog_app/provider/animal_data_provider.dart';
import 'package:dog_app/ui/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider<Model1>(create: (context) => Model1()),
        //Provider<AnimalDataProvider>(create: (context) => AnimalDataProvider())
        ChangeNotifierProvider.value(
          value: AnimalDataProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Walsheim',
        ),
        home: Home(),
      ),
    );
  }
}
