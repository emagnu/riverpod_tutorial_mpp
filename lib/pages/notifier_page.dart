//   ///
//   Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//   Import FILES
import 'home_page.dart';
//  PARTS
// PROVIDERS
//  //  //   ///

// class NotifierPage extends StatelessWidget {
class NotifierPage extends ConsumerWidget {
  const NotifierPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final counter = ref.watch(counterProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Notifier Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              textAlign: TextAlign.center,
              // 'ToDo',
              'Counter:\n ${ref.watch(counterProvider)}',
              // '
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton.icon(
                onPressed: () {
                  ref.read(counterProvider.notifier).increment();
                },
                icon: const Icon(Icons.add),
                label: const Text('Add')),
            const SizedBox(height: 10.0),
            ElevatedButton.icon(
                onPressed: () {
                  ref.read(counterProvider.notifier).decrement();
                },
                icon: const Icon(Icons.remove),
                label: const Text('Remove')),
          ],
        ),
      ),
    );
  }
}
