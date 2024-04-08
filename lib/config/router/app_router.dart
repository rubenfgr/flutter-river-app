import 'package:go_router/go_router.dart';
import 'package:river_app/presentation/screens/screens.dart';
import 'package:river_app/presentation/screens/state_notifier_provider/todos_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen(),
    ),
    GoRoute(
      path: '/future-provider',
      builder: (context, state) => const FutureProviderScreen(),
    ),
    GoRoute(
      path: '/stream-provider',
      builder: (context, state) => const StreamProviderScreen(),
    ),
    GoRoute(
      path: '/state-notifier-provider',
      builder: (context, state) => const TodosScreen(),
    ),
  ],
);
