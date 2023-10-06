import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({
    super.key,
  });

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: const Text("New").tr(),
        actions: [
          IconButton(
              onPressed: () async {
                if (context.locale == const Locale('en', 'US')) {
                  context.setLocale(const Locale('en'));
                } else {
                  context.setLocale(const Locale('en', 'US'));
                }
                setState(() {});
              },
              icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: const Text("da").tr()),
        ],
      ),
    );
  }
}
