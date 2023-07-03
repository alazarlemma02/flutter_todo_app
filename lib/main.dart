import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/bloc/bin_bloc/bin_bloc_bloc.dart';
import 'package:todo_app/bloc/bloc/fav_bloc/todo_fav_bloc.dart';
import 'package:todo_app/bloc/bloc/todo_bloc/todo_bloc.dart';
import 'package:todo_app/data/model/todo.dart';
import 'package:todo_app/view/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodoBloc(),
        ),
        BlocProvider(
          create: (context) => TodoFavBloc(),
        ),
        BlocProvider(
          create: (context) => TodoBinBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const TaskScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
