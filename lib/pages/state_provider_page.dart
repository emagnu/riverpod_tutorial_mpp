//   ///
//   Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/pages/home_page.dart';
//   Import FILES
//  PARTS
// PROVIDERS
//  //  //   ///

// class StateProviderPage extends StatelessWidget {
class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('State Provider Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              textAlign: TextAlign.center,
              // 'ToDo',
              'Counter:\n ${ref.watch(easyProvider).toString()}',
              // '
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton.icon(
                onPressed: () {
                  ref.read(easyProvider.notifier).state++;
                },
                icon: const Icon(Icons.add),
                label: const Text('Add')),
            const SizedBox(height: 10.0),
            ElevatedButton.icon(
                onPressed: () {
                  ref.read(easyProvider.notifier).state--;
                },
                icon: const Icon(Icons.remove),
                label: const Text('Remove')),
          ],
        ),
      ),
    );
  }
}
