import 'package:mobile_app/features/crossroad/view.dart';
import '../features/loading/view/view.dart';
import '../features/registration/view/view.dart';
import '../features/login/view/view.dart';
import '../features/home/view/view.dart';
import '../features/shop/view/view.dart';
import '../features/profile/view/view.dart';
import '../features/league/view/view.dart';
import '../features/settings/view/view.dart';


final routes = {
  //Страница с ссылками на все остальные страницы
  '/crossroad': (context) => const Crossroad(),

  //Загрузка
  '/': (context) => const LoadingScreen(),

  //Авторизация
  '/registration': (context) => const RegistrationScreen(),
  '/login': (context) => const LoginScreen(),

  //Основные экраны
  '/shop': (context) => const ShopScreen(),
  '/league': (context) => const LeagueScreen(),
  '/home': (context) => const HomeScreen(),
  '/profile': (context) => const ProfileScreen(),
  //Экраны настроек
  '/settings': (context) => const SettingsScreen(),

  //Экраны режимов
};

