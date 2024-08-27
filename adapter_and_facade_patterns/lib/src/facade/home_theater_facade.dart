import 'sub_system/amplifier.dart';
import 'sub_system/cd_player.dart';
import 'sub_system/dvd_player.dart';
import 'sub_system/popcorn_popper.dart';
import 'sub_system/projector.dart';
import 'sub_system/screen.dart';
import 'sub_system/theater_lights.dart';
import 'sub_system/tuner.dart';

class HomeTheaterFacade {
  // Here’s the composition; these are all the components of the subsystem we are going to use.
  Amplifier amp;
  Tuner tuner;
  DvdPlayer dvd;
  CdPlayer cd;
  Projector projector;
  TheaterLights lights;
  Screen screen;
  PopcornPopper popper;

  // The facade is passed a reference to each component of the subsystem in its constructor.
  // The facade then assigns each to the corresponding instance variable.
  HomeTheaterFacade(
    this.amp,
    this.tuner,
    this.dvd,
    this.cd,
    this.projector,
    this.lights,
    this.screen,
    this.popper,
  );

  void watchMovie(String movie) {
    print("Get ready to watch a movie...");
    popper.on();
    popper.pop();
    lights.dim(10);
    screen.down();
    projector.on();
    projector.wideScreenMode();
    amp.on();
    amp.setDvd(dvd);
    amp.setVolume(5);
    dvd.on();
    dvd.play(movie);
  }

  void endMovie() {
    print("Shutting movie theater down...");
    popper.off();
    lights.on();
    screen.up();
    projector.off();
    amp.off();
    dvd.stop();
    dvd.eject();
    dvd.off();
  }

  void listenToCd() {}

  void endCd() {}

  void listenToRadio() {}

  void endRadio() {}
}
