import 'package:flutter/material.dart';
import 'package:my_chat_app/pages/register_page.dart';
import 'package:my_chat_app/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://fwfoawczgtkgjnnweutl.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ3Zm9hd2N6Z3RrZ2pubndldXRsIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODE5ODU1MjksImV4cCI6MTk5NzU2MTUyOX0.Vdden1o42e4p3zeZzcFZhA8Wrcs_E3MeX2fsCvogBNk',
    // url: 'https://sqqhskwlxzqwzmdpmzre.supabase.co',
    // anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNxcWhza3dseHpxd3ptZHBtenJlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODE5ODU1MjAsImV4cCI6MTk5NzU2MTUyMH0.Nizhj8LkDav8QtvRUeDD-iZJxqCBsFaelPDjSgllslw',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'チャットアプリ',
      home: SplashPage(),
    );
  }
}