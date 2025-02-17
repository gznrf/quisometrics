import 'package:mobile_app/features/crossroad/view.dart';
import 'package:mobile_app/features/registration/view/registration_screen.dart';
import '../features/loading/view/view.dart';
import '../features/login/view/view.dart';
import '../features/home/view/view.dart';

final routes = {
  '/': (context) => const LoadingScreen(),
  '/registration': (context) => const RegistrationScreen(),
  '/login': (context) => const TextFieldSwitcher(),
  '/crossroad': (context) => const Crossroad(),
  '/home': (context) => const HomeScreen(),
};

