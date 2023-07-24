import 'package:__bloc__/Bloc/counterBloc.dart';
import 'package:__bloc__/Views/homeView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(child: const MyApp(), providers: [
    BlocProvider(create: (Context) => CounterBloc(0)),
  ]));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {'/': (context) => const HomeView()},
    );
  }
}
