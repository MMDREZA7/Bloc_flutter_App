import 'package:__bloc__/Bloc/counterBloc.dart';
import 'package:__bloc__/Views/aboutView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Bloc',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const aboutView(),
                    ),
                  );
                },
                child: const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 100),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context)
                      .add(CounterEvent.increment);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(
              //     15,
              //   ),
              //   color: Colors.blue,
              // ),
              //   child: FloatingActionButton(
              //     backgroundColor: Colors.blue,
              //     onPressed: () {
              //       BlocProvider.of<CounterBloc>(context)
              //           .add(CounterEvent.increment);
              //     },
              //     child: const Text(
              //       '+',
              //       style: TextStyle(fontSize: 20),
              //     ),
              //   ),
              // ),
              const Padding(
                padding: const EdgeInsets.only(left: 10),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context)
                      .add(CounterEvent.incrementTwice);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '+2',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                  // child: FloatingActionButton(
                  //   backgroundColor: Colors.blue,
                  //   onPressed: () {
                  //     BlocProvider.of<CounterBloc>(context)
                  //         .add(CounterEvent.incrementTwice);
                  //   },
                  //   child: const Text(
                  //     '+2',
                  //     style: TextStyle(fontSize: 20),
                  //   ),
                  // ),
                  ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context)
                      .add(CounterEvent.incrementR);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'R',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                  // child: FloatingActionButton(
                  //   backgroundColor: Colors.blue,
                  //   onPressed: () {
                  //     BlocProvider.of<CounterBloc>(context)
                  //         .add(CounterEvent.incrementR);
                  //   },
                  //   child: const Text(
                  //     'R',
                  //     style: TextStyle(fontSize: 20),
                  //   ),
                  // ),
                  ),
            ],
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 10),
          ),
          const Text(
            'Current Number :',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          // Conection__1__
          BlocBuilder<CounterBloc, int>(
            builder: (context, state) => Text(
              '$state',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      // ),
    );
  }
}
