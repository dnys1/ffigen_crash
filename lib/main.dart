import 'dart:ffi';

import 'package:ffigen_crash/macos_bindings.g.dart';

void main() {
  final lib = NativeMacOsFramework(DynamicLibrary.process());
  final screen = NSScreen.getMainScreen(lib);
  print(screen!.visibleFrame);
}
