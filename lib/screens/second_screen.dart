import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(localization.secondScreenTitle),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(16),
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
          child: Text(
            localization.secondScreenMessage,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.deepPurple,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

