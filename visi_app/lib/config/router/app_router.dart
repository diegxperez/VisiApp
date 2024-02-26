import 'package:go_router/go_router.dart';
import 'package:visi_app/presentation/views/views.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return HomeScreen(childView: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const HomeView();
          },
        ),
        GoRoute(
          path: '/history',
          builder: (context, state) {
            return const HistoryView();
          },
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) {
            return const ProfileView();
          },
        ),
      ],
    ),
    // GoRoute(
    //   path: '/home',
    //   name: HomeView.name,
    //   builder: (context, state) => const HomeView(),
    // ),
    // GoRoute(
    //   path: '/history',
    //   name: HistorialView.name,
    //   builder: (context, state) => const HistorialView(),
    // ),
    // GoRoute(
    //   path: '/profile',
    //   name: ProfileView.name,
    //   builder: (context, state) => const ProfileView(),
    // ),
  ],
);
