library command_pattern;

export 'src/commands/command.dart';
export 'src/commands/hot_tub_commands/hot_tub_off_command.dart';
export 'src/commands/hot_tub_commands/hot_tub_on_command.dart';
export 'src/commands/light_commands/light_off_command.dart';
export 'src/commands/light_commands/light_on_command.dart';
export 'src/commands/macro_command.dart';
export 'src/commands/stereo_commands/stereo_off_command.dart';
export 'src/commands/stereo_commands/stereo_on_with_cd_command.dart';
export 'src/commands/tv_commands/tv_off_command.dart';
export 'src/commands/tv_commands/tv_on_command.dart';
export 'src/devices/ceiling_fan.dart';
export 'src/devices/garage_door.dart';
export 'src/devices/hot_tub.dart';
export 'src/devices/light.dart';
export 'src/devices/stereo.dart';
export 'src/devices/tv.dart';
export 'src/remote_control.dart';

// import 'src/commands/command.dart';
// import 'src/commands/hot_tub_commands/hot_tub_off_command.dart';
// import 'src/commands/hot_tub_commands/hot_tub_on_command.dart';
// import 'src/commands/light_commands/light_off_command.dart';
// import 'src/commands/light_commands/light_on_command.dart';
// import 'src/commands/macro_command.dart';
// import 'src/commands/stereo_commands/stereo_off_command.dart';
// import 'src/commands/stereo_commands/stereo_on_with_cd_command.dart';
// import 'src/commands/tv_commands/tv_off_command.dart';
// import 'src/commands/tv_commands/tv_on_command.dart';
// import 'src/devices/ceiling_fan.dart';
// import 'src/devices/garage_door.dart';
// import 'src/devices/hot_tub.dart';
// import 'src/devices/light.dart';
// import 'src/devices/stereo.dart';
// import 'src/devices/tv.dart';
// import 'src/remote_control.dart';
//
// // Client
// void main() {
//   RemoteControl remoteControl = RemoteControl();
//
//   Light livingRoomLight = Light("Living Room");
//   Light kitchenLight = Light("Kitchen");
//   CeilingFan ceilingFan = CeilingFan("Living Room");
//   Stereo stereo = Stereo("Living Room");
//   GarageDoor garageDoor = GarageDoor();
//   TV tv = TV("Living Room");
//   HotTub hotTub = HotTub();
//
//   LightOnCommand livingRoomLightOn = LightOnCommand(livingRoomLight);
//   LightOffCommand livingRoomLightOff = LightOffCommand(livingRoomLight);
//
//   StereoOnWithCDCommand stereoOnWithCD = StereoOnWithCDCommand(stereo);
//   StereoOffCommand stereoOff = StereoOffCommand(stereo);
//
//   TVOnCommand tvOn = TVOnCommand(tv);
//   TVOffCommand tvOff = TVOffCommand(tv);
//
//   HotTubOnCommand hotTubOn = HotTubOnCommand(hotTub);
//   HotTubOffCommand hotTubOff = HotTubOffCommand(hotTub);
//
//   List<Command> partyOn = [livingRoomLightOn, stereoOnWithCD, tvOn, hotTubOn];
//   List<Command> partyOff = [livingRoomLightOff, stereoOff, tvOff, hotTubOff];
//
//   MacroCommand partyOnMacro = MacroCommand(partyOn);
//   MacroCommand partyOffMacro = MacroCommand(partyOff);
//
//   remoteControl.setCommand(
//     slot: 0,
//     onCommand: partyOnMacro,
//     offCommand: partyOffMacro,
//   );
//
//   print(remoteControl);
//   print("--- Pushing Macro On---");
//   remoteControl.onButtonWasPushed(0);
//   print("--- Undo Macro ---");
//   remoteControl.undoButtonWasPushed();
//   // print("--- Pushing Macro Off---");
//   // remoteControl.offButtonWasPushed(0);
// }
