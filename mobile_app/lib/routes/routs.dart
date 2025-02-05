import 'package:mobile_app/features/home/view/view.dart';
import 'package:mobile_app/features/registration/view/registration_screen.dart';
import '../features/loading/view/view.dart';

final routes = {
  '/': (context) => const LoadingScreen(),
  '/registration': (context) => const RegistrationScreen(),
  '/home': (context) => const HomePage(),

};

