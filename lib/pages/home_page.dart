//   ///
//   Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/models/counter_notifier.dart';

import 'notifier_page.dart';
import 'state_provider_page.dart';

//   Import FILES
//  PARTS
// PROVIDERS
final easyProvider = StateProvider<int>((ref) {
  return 0;
});
final counterProvider =
    NotifierProvider<CounterNotifier, int>(CounterNotifier.new);
//  //   ///

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StateProviderPage()),
                    );
                  },
                  child: const Text('State Provider')),
              const SizedBox(height: 10.0),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotifierPage()),
                    );
                  },
                  child: const Text('Notifier Provider')),
              const SizedBox(height: 10.0),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotifierPage()),
                    );
                  },
                  child: const Text('Impossible')),
            ],
          ),
        ));
  }
}
