// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_food_tracker_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
 
 //--------------------------------
void main() async {
  //โค้ดติดต่อกับ supabaseกับโปรเจคที่เราทำงานด้วย
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://konblexhgeupwzgswxkv.supabase.co',
    publishableKey: 'sb_publishable_9fDbotUivKiHk_6MNOlZrg_yMu_B7Lt',
  );
  runApp(
    FlutterRunTrackerApp(),
  );
}

//--------------------------------
class FlutterRunTrackerApp extends StatefulWidget {
  const FlutterRunTrackerApp({super.key});

  @override
  State<FlutterRunTrackerApp> createState() => _FlutterRunTrackerAppState();
}

class _FlutterRunTrackerAppState extends State<FlutterRunTrackerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        textTheme: TextTheme.of(context).apply(
          fontFamily: GoogleFonts.kanit().fontFamily,
          fontFamilyFallback: GoogleFonts.kanit().fontFamilyFallback,
        )
      ),
    );
  }
}