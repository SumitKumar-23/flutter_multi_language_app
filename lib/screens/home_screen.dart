import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'second_screen.dart';

class HomeScreen extends StatelessWidget {
  final void Function(Locale) onLocaleChange;

  const HomeScreen({super.key, required this.onLocaleChange});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    final currentLocale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localization.appTitle),
        centerTitle: true,
        elevation: 4,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Container(
            padding: const EdgeInsets.all(20),
            constraints: const BoxConstraints(maxWidth: 400),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 12,
                  offset: Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  localization.welcomeMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<Locale>(
                  value: currentLocale,
                  decoration: InputDecoration(
                    labelText: localization.selectLanguage,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onChanged: (locale) {
                    if (locale != null) onLocaleChange(locale);
                  },
                  items: const [
                    DropdownMenuItem(value: Locale('en'), child: Text("English")),
                    DropdownMenuItem(value: Locale('hi'), child: Text("हिन्दी")),
                    DropdownMenuItem(value: Locale('bn'), child: Text("বাংলা")),
                    DropdownMenuItem(value: Locale('ar'), child: Text("العربية")),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SecondScreen()),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: Text(localization.continueButton),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.blueAccent,
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

