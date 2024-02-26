import 'package:go_router/go_router.dart';
import 'package:visi_app/screens/historial_screen.dart';
import 'package:visi_app/screens/profile_screen.dart';
import '../../screens/home_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/history',
      builder: (context, state) => const HistorialScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
