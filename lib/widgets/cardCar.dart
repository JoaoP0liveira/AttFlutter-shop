import 'package:flutter/material.dart';

class MyCarCard extends StatefulWidget {
  const MyCarCard({Key? key}) : super(key: key);

  @override
  _MyCarCardState createState() => _MyCarCardState();
}

class _MyCarCardState extends State<MyCarCard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 550,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: const Color.fromARGB(166, 129, 129, 129),
          ),
          bottom: BorderSide(
            color: const Color.fromARGB(166, 129, 129, 129),
          ),
        ),
      ),
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "assets/img/banana.png",
            width: 125,
            height: 125,
          ),
          Padding(padding: EdgeInsets.only(left: 5)),
          SizedBox(width: 20),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Banana",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              Text("1kg Price"),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  // Botão para decrementar
                  FloatingActionButton(
                    onPressed: _decrementCounter,
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: const Color.fromARGB(255, 167, 167, 167),
                    elevation: 0,
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(width: 15),
                  // Botão para incrementar
                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    backgroundColor: const Color.fromARGB(255, 253, 253, 253),
                    foregroundColor: const Color.fromARGB(255, 116, 255, 103),
                    elevation: 0,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 162,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 70,
                  child: IconButton(
                    icon: Icon(Icons.close, size: 25, color: Colors.grey),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  bottom: 3,
                  left: 40,
                  child: Text(
                    'RS 10,99',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
