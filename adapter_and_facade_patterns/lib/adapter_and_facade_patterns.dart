library adapter_and_facade_patterns;

export 'src/adapter/duck.dart';
export 'src/adapter/mallard_duck.dart';
export 'src/adapter/turkey_adapter.dart';
export 'src/adapter/wild_turkey.dart';
export 'src/facade/home_theater_facade.dart';
export 'src/facade/sub_system/amplifier.dart';
export 'src/facade/sub_system/cd_player.dart';
export 'src/facade/sub_system/dvd_player.dart';
export 'src/facade/sub_system/popcorn_popper.dart';
export 'src/facade/sub_system/projector.dart';
export 'src/facade/sub_system/screen.dart';
export 'src/facade/sub_system/theater_lights.dart';
export 'src/facade/sub_system/tuner.dart';

// import 'src/facade/home_theater_facade.dart';
// import 'src/facade/sub_system/amplifier.dart';
// import 'src/facade/sub_system/cd_player.dart';
// import 'src/facade/sub_system/dvd_player.dart';
// import 'src/facade/sub_system/popcorn_popper.dart';
// import 'src/facade/sub_system/projector.dart';
// import 'src/facade/sub_system/screen.dart';
// import 'src/facade/sub_system/theater_lights.dart';
// import 'src/facade/sub_system/tuner.dart';
//
// void main() {
//   Amplifier amp = Amplifier();
//   Tuner tuner = Tuner();
//   DvdPlayer dvd = DvdPlayer();
//   CdPlayer cd = CdPlayer();
//   Projector projector = Projector();
//   TheaterLights lights = TheaterLights();
//   Screen screen = Screen();
//   PopcornPopper popper = PopcornPopper();
//
//   HomeTheaterFacade homeTheater = HomeTheaterFacade(
//     amp,
//     tuner,
//     dvd,
//     cd,
//     projector,
//     lights,
//     screen,
//     popper,
//   );
//
//   homeTheater.watchMovie("Raiders of the Lost Ark");
//   homeTheater.endMovie();
// }

// import 'src/adapter/wild_turkey.dart';
//
// import 'src/adapter/duck.dart';
// import 'src/adapter/mallard_duck.dart';
// import 'src/adapter/turkey_adapter.dart';

// // Client
// void main() {
//   MallardDuck duck = MallardDuck();
//
//   WildTurkey turkey = WildTurkey();
//   Duck turkeyAdapter = TurkeyAdapter(turkey);
//
//   print("The turkey says...");
//   turkey.gobble();
//   turkey.fly();
//
//   print("\nThe Duck says...");
//   testDuck(duck);
//
//   print("\nThe TurkeyAdapter says...");
//   testDuck(turkeyAdapter);
// }
//
// void testDuck(Duck duck) {
//   duck.quack();
//   duck.fly();
// }
