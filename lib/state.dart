import 'package:event_bus/event_bus.dart';

EventBus eventBus = new EventBus();

class StateData {
  static int counter = 0;

  static void incrementCounter() {
    counter++;
    eventBus.fire(new CounterData(counter));
  }

  static void subtractCounter() {
    counter--;
    eventBus.fire(new CounterData(counter));
  }
}

class CounterData {
  int count;
  CounterData(int val) {
    count = val;
  }

  int getCount() {
    return count;
  }

}