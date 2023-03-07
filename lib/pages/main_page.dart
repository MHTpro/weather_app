import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  //animations
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      value: 0,
      duration: const Duration(
        seconds: 3,
      ),
    );
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.bounceInOut,
    );

    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  //go to next page
  int count = 5;

  Stream<int> nextPage() async* {
    final navigator = Navigator.of(context);
    while (count >= 0) {
      await Future.delayed(
        const Duration(seconds: 1),
      );
      yield count--;

      //after five seconds...
      if (count == 0) {
        navigator.pushNamed("/w");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: StreamBuilder(
        stream: nextPage(),
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            return Stack(
              children: [
                Center(
                  child: FadeTransition(
                    opacity: animation,
                    child: RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "WeLcOmE\n\n",
                            style: TextStyle(
                              fontSize: 45.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: "\t\t\t\t\t\t\t\tTo Weather",
                            style: TextStyle(
                              fontSize: 55.0,
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100.0,
                  child: Container(
                    width: 200,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 190.0,
                  right: 0,
                  child: Container(
                    width: 200,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 190.0,
                  right: 0,
                  child: Container(
                    width: 200,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100.0,
                  child: Container(
                    width: 200,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
