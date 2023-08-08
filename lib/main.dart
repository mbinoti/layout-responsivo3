import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              double fontSize = constraints.maxWidth *
                  0.035; // 5% da largura total, por exemplo

              // print("---------------Largura máxima: ${constraints.maxWidth}");
              return IntrinsicHeight(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 112,
                          height: 150,
                          child: Image.asset(
                            'assets/images/img1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet",
                                style: TextStyle(fontSize: fontSize),
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: TextStyle(fontSize: fontSize),
                              ),
                              const SizedBox(height: 10.0),
                              if (constraints.maxWidth > 393)
                                newMethod(context, Colors.black),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (constraints.maxWidth <= 393)
                      newMethod(context, Colors.red)
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Container newMethod(BuildContext context, Color color) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconeText(context, color),
          iconeText(context, color),
          iconeText(context, color),
        ],
      ),
    );
  }
}

Widget iconeText(BuildContext context, Color color) {
  return Row(
    mainAxisSize: MainAxisSize.min, // para ocupar o espaço mínimo necessário

    children: <Widget>[
      Icon(Icons.star, color: color, size: 20.0),
      const SizedBox(height: 5.0), // um espaço vertical
      const Text('ipsum', style: TextStyle(fontSize: 10.0))
    ],
  );
}
