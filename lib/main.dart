import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
void main() async {
   WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();

  WindowOptions windowOptions = WindowOptions(
    title: 'Ficha Tormenta20', 
    center: true,
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const FichaApp());
}

class FichaApp extends StatelessWidget {
  const FichaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ficha Tormenta 20',
      theme: ThemeData.dark(), 
      home: const MenuInicial(),
    );
  }
}

class MenuInicial extends StatelessWidget {
  const MenuInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 800, 
              height: 150,
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                
              },
              icon: const Icon(Icons.people),
              label: const Text('Ver Personagens'),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                
              },
              icon: const Icon(Icons.add),
              label: const Text('Criar Novo Personagem'),
            ),
          ],
        ),
      ),
    );
  }
}