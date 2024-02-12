//   ///
//   Import LIBRARIES
import 'package:flutter_riverpod/flutter_riverpod.dart';
//   Import FILES
//  PARTS
// PROVIDERS
//  //  //   ///

class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state = state + 1;
  }

  void decrement() {
    state = state - 1;
  }
}
