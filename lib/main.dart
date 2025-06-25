// lib/main.dart (GÜNCELLENMİŞ HALİ)
//                     children: [
//                       Text(
//                         game.activeMessage,
//                         style: const TextStyle(color: Colors.white),
//                       ),
//                       const SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: () {
//                           game.overlays.remove('HotspotDialog');
//                         },
//                         child: const Text('Tamam'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         },
//         initialActiveOverlays: const ['TopBar', 'BottomBar'],
//       ),
//       // YENİ: Notebook ve İtham ekranları için butonlar
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             heroTag: 'notebook',
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => NotebookScreen(caseFile: caseFile)),
//               );
//             },
//             child: const Icon(Icons.book),
//           ),
//           const SizedBox(height: 10),
//           FloatingActionButton(
//             heroTag: 'accuse',
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => AccuseScreen(caseFile: caseFile)),
//               );
//             },
//             child: const Icon(Icons.gavel),
//           ),
//         ],
//       ),
//     );
//   }
// }
// Compare this snippet from lib/screens/dialogue_overlay.dart:
// // lib/screens/dialogue_overlay.dart (FLAME 1.17.0 UYUMLU)
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:midnight_confessions/game/game.dart';
// import 'package:midnight_confessions/game_logic/game_bloc.dart';
//
// class DialogueOverlay extends StatelessWidget {
//   final MidnightConfessionsGame game;
//
//   DialogueOverlay({required this.game});
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: Container(
//         padding: const EdgeInsets.all(16.0),
//         color: Colors.black.withOpacity(0.8),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(game.activeMessage, style: const TextStyle(color: Colors.white)),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'models/case_file.dart';
import 'screens/game_screen.dart'; // GameScreen'i import et
import 'package:midnight_confessions/screens/settings_screen.dart'; // Import ekle
import 'package:flutter_bloc/flutter_bloc.dart'; // Added for BlocProvider
import 'package:midnight_confessions/game_logic/game_bloc.dart'; // Added for GameBloc
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'generated/app_localizations.dart'; // YENİ IMPORT
import 'package:path_provider/path_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'firebase_options.dart'; // flutterfire configure komutunun oluşturduğu dosya

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ... HydratedBloc ayarları ...
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  // YENİ: Firebase'i başlat
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // YENİ: Crashlytics'i ayarla
  // Uygulama içinde oluşan Flutter hatalarını yakalar
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  runApp(const MidnightConfessionsApp());
}

// Repository: Veri çekme işlemlerini yöneten sınıf
class CaseRepository {
  Future<List<CaseInfo>> getCaseList() async {
    final manifestJson = await rootBundle.loadString('assets/cases_manifest.json');
    final manifestData = jsonDecode(manifestJson) as Map<String, dynamic>;
    final caseList = manifestData['cases'] as List;
    return caseList.map((item) => CaseInfo.fromJson(item)).toList();
  }

  // Yeni metod: Belirli bir vakanın tam JSON dosyasını yükler ve modele dönüştürür
  Future<CaseFile> loadCaseFile(CaseInfo caseInfo) async {
    final caseJsonString = await rootBundle.loadString(caseInfo.jsonPath);
    final caseJson = jsonDecode(caseJsonString) as Map<String, dynamic>;
    return CaseFile.fromJson(caseJson);
  }
}

class MidnightConfessionsApp extends StatelessWidget {
  const MidnightConfessionsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider( // BLoC'u burada sağlıyoruz
      create: (context) => GameBloc(),
      child: MaterialApp(
        title: 'Midnight Confessions',
        // YENİ YERELLEŞTİRME AYARLARI
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4a148c),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF121212),
        useMaterial3: true,
      ),
        home: MainMenuScreen(),
      ),
    );
  }
}

class MainMenuScreen extends StatefulWidget {
  MainMenuScreen({super.key});

  final CaseRepository caseRepository = CaseRepository();

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  late Future<List<CaseInfo>> _casesFuture;

  @override
  void initState() {
    super.initState();
    _casesFuture = widget.caseRepository.getCaseList();
  }

  // Ana menüdeki karta tıklandığında çalışacak fonksiyon
  void _navigateToGame(CaseInfo caseInfo) async {
    // Önce vakanın tam dosyasını yükle
    final caseFile = await widget.caseRepository.loadCaseFile(caseInfo);
    // Sonra GameScreen'e git ve vaka verisini yanında götür
    if (mounted) { // Widget hala ekrandaysa devam et
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GameScreen(caseFile: caseFile),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // YENİ: AppBar ekliyoruz
      appBar: AppBar(
        // ESKİ: title: const Text('Midnight Confessions'),
        title: Text(AppLocalizations.of(context)!.mainMenuTitle), // YENİ
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 150,
              height: 150,
              child: RiveAnimation.asset('assets/rive/logo_animation.riv', fit: BoxFit.contain),
            ),
            const SizedBox(height: 20),
            // Text( // Başlık AppBar'a taşındığı için bu satır kaldırılabilir veya yorumlanabilir
            //   'Midnight Confessions',
            //   style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            // ),
            // const SizedBox(height: 40), // Bu da isteğe bağlı olarak ayarlanabilir
            Expanded(
              child: FutureBuilder<List<CaseInfo>>(
                future: _casesFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  if (snapshot.hasError) {
                    return Text('Vakalar yüklenemedi: ${snapshot.error}');
                  }
                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Text('Hiç vaka bulunamadı.');
                  }
                  final cases = snapshot.data!;
                  return ListView.builder(
                    itemCount: cases.length,
                    itemBuilder: (context, index) {
                      final caseInfo = cases[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: ListTile(
                          title: Text(caseInfo.title),
                          leading: const Icon(Icons.folder_special),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () => _navigateToGame(caseInfo), // GÜNCELLENDİ
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
