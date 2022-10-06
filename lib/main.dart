import 'package:flutter/material.dart';
import 'package:matchsoccer/match_detail.dart';
import 'package:matchsoccer/model/match_team.dart';
import 'package:matchsoccer/styles.dart';
import 'match_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Match Soccer',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: primaryColor700,
          onPrimary: Colors.white,
          secondary: secondaryColor,
          error: errorColor,
        ),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: myTextTheme,
        appBarTheme: const AppBarTheme(elevation:8),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: secondaryColor,
            textStyle: const TextStyle(),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            )
          ),
        ),
      ),
      // home: const Matchlist(),
      initialRoute: Matchlist.routeName,
      routes: {
        Matchlist.routeName: (context)=>const Matchlist(),
        Matchdetail.routeName: (context)=> Matchdetail(
          matchteam: ModalRoute.of(context)?.settings.arguments as Matchteam,
        ),
      },
    );
  }
}