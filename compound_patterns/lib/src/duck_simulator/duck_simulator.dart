library compound_patterns;

import 'composite/flock.dart';
import 'decorator/quack_counter.dart';
import 'factory/abstract_factory/abstract_duck_factory.dart';
import 'factory/abstract_factory/counting_duck_factory.dart';
import 'factory/abstract_factory/duck_factory.dart';
import 'observer/quackologist.dart';
import 'quackable.dart';

void main() {
  // We create a polymorphic method that takes a factory and uses it to create objects.
  // By passing in different factories, we get to use different product families in the method.
  AbstractDuckFactory duckFactory = CountingDuckFactory();
  simulate(duckFactory);
}

void simulate(AbstractDuckFactory duckFactory) {
  Flock flockOfDucks = Flock();
  Flock flockOfMallards = Flock();

  Quackable redheadDuck = duckFactory.createRedheadDuck();
  Quackable duckCall = duckFactory.createDuckCall();
  Quackable rubberDuck = duckFactory.createRubberDuck();
  Quackable gooseDuck = DuckFactory().createGooseDuck();
  print("Duck Simulator: With Composite - Flocks");
  flockOfDucks.add(redheadDuck);
  flockOfDucks.add(duckCall);
  flockOfDucks.add(rubberDuck);
  flockOfDucks.add(gooseDuck);

  Quackable mallardOne = duckFactory.createMallardDuck();
  Quackable mallardTwo = duckFactory.createMallardDuck();
  Quackable mallardThree = duckFactory.createMallardDuck();
  Quackable mallardFour = duckFactory.createMallardDuck();
  flockOfMallards.add(mallardOne);
  flockOfMallards.add(mallardTwo);
  flockOfMallards.add(mallardThree);
  flockOfMallards.add(mallardFour);

  // We add the Flock of mallards to the main flock.
  flockOfDucks.add(flockOfMallards);

  print("\nDuck Simulator: With Observer");
  // All we do here is create a Quackologist and set him as an observer of the flock.
  Quackologist quackologist = Quackologist();
  flockOfDucks.registerObserver(quackologist);

  simulateQuack(flockOfDucks);

  // Finally, let’s give the Quackologist the data.
  print("\nThe ducks quacked: ${QuackCounter.getQuacks} times");
}

void simulateQuack(Quackable duck) {
  duck.quack();
}
