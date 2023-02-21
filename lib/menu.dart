import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widgetmenu extends StatelessWidget {
  const Widgetmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Center(
              child: (Text(
            'Develop\'s Pizzas',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ))),
          actions: const [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(child: _PizzaDetails()),
            Container(height: 100, child: _PizzaSizeButtons()),
            Container(height: 100, child: _PizzaIngredientsButtons()),
            Container(
              height: 80,
              width: 300,
              child: _ButtonBuy(),
            ),
          ],
        ));
  }
}

class _PizzaDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Stack(children: [
          Container(
              margin: const EdgeInsets.all(20),
              height: 400,
              width: 350,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromRGBO(231, 241, 236, 1)),
              child: Expanded(
                  child: Column(
                children: [
                  const Text("Pepperoni Pizza",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  const Text("Hot pizza with peper",
                      style: TextStyle(
                          color: Color.fromARGB(255, 126, 126, 126),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        'lib/assets/pizza.png',
                        height: 200,
                        width: 200,
                        fit: BoxFit.fitWidth,
                      )),
                  const Text("MADE BY",
                      style: TextStyle(
                          color: Color.fromARGB(255, 126, 126, 126),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  const Text("Lizeth Nayeli Estrada Gallardo",
                      style: TextStyle(
                          color: Color.fromARGB(255, 126, 126, 126),
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              )))
        ]))
      ],
    );
  }
}

class _PizzaSizeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Stack(children: [
          Container(
            child: Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Sizes",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          // Content of my Row

                          //Item 1/4
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("S", textAlign: TextAlign.center),
                              )),

                          //Item 2/4
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(255, 193, 7, 1),
                                    width: 2.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(255, 193, 7, 1),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("M", textAlign: TextAlign.center),
                              )),

                          //Item 3/4
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("X", textAlign: TextAlign.center),
                              )),

                          //Item 4/4
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("XL", textAlign: TextAlign.center),
                              )),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    ]);
  }
}

class _PizzaIngredientsButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: Stack(children: [
        Container(
            child: Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              const Text("Ingredients",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      // Content of my Row

                      //Item 1/4
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              'lib/assets/ingredient1.png',
                              fit: BoxFit.fitHeight,
                            )),
                      ),

                      //Item 2/4
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              'lib/assets/ingredient2.png',
                              fit: BoxFit.fitHeight,
                            )),
                      ),

                      //Item 3/4
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(255, 193, 7, 1),
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(255, 193, 7, 1),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              'lib/assets/ingredient3.png',
                              fit: BoxFit.fitHeight,
                            )),
                      ),

                      //Item 4/4
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              'lib/assets/ingredient4.png',
                              fit: BoxFit.fitHeight,
                            )),
                      ),
                    ],
                  ))
            ])))
      ]))
    ]);
  }
}

class _ButtonBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
          onPressed: () {},
          child: Container(
            color: Color.fromRGBO(211, 233, 222, 1),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: const Text(
              'Buy now',
              style: TextStyle(
                  color: Color.fromRGBO(27, 75, 51, 1), fontSize: 13.0),
            ),
          )),
    );
  }
}
