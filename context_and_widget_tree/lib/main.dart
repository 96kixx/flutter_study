import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onAdd() {
    setState(() {
      counter = counter + 1;
    });
  }

  void onRemove() {
    setState(() {
      counter = counter - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TItle(),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: onAdd,
                    icon: const Icon(
                      Icons.add,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  IconButton(
                    iconSize: 40,
                    onPressed: onRemove,
                    icon: const Icon(
                      Icons.remove,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// context를 활용하여 상위 위젯트리의 데이터 사용가능
class TItle extends StatefulWidget {
  const TItle({
    super.key,
  });

  @override
  State<TItle> createState() => _TItleState();
}

class _TItleState extends State<TItle> {
  // 상태초기화 메서드
  // 부모 요소에 의존하는 데이터를 초기화 할 때 사용됨.
  // 사용 시, build 메서드보다 항상 먼저 호출되어야됨.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // widget이 화면에서 제거될 때 호출되는 메서드
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  // build 메서드
  // widget에서 UI를 만듬.
  @override
  Widget build(BuildContext context) {
    return Text(
      'Click Counter',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
