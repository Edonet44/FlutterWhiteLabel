import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:goodgo/flavors.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final _controller = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        body: Stack(children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      //recupero l'immagine del logo
                      children: [
                        //LOGO
                        Image.asset(F.splashString()[index]['logo']!,
                            width: 70, height: 70),
                        //Immagine
                        Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 10),
                            child: AspectRatio(
                                aspectRatio: 12 / 9,
                                child: Image.asset(
                                  F.splashString()[index]['immagine']!,
                                  fit: BoxFit.contain,
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            //Titolo
                            child: Text(
                              F.splashString()[index]['titolo']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27,
                                  fontFamily: "Sofia",
                                  color: Color(0xFF424242)),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            //SottoTitolo
                            child: Text(
                              F.splashString()[index]['sottotitolo']!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Sofia",
                                  color: Colors.grey.shade400,
                                  height: 1.5),
                            )),
                      ],
                    );
                  },
                  onPageChanged: (value) => setState(() {
                    _currentPage = value;
                  }),
                  itemCount: F.splashString().length,
                  controller: _controller,
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //verso il login
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => NextScreen()),
                          // );
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Sofia",
                            color: Colors.grey.shade400,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // Generazione dei puntini animati tramite il metodo Animated_buildDots()
                            children: List.generate(
                                F.splashString().length,
                                (int index) =>
                                    Animated_buildDots(index: index)),
                          )),
                      const Spacer(),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: SizedBox(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                            child: FloatingActionButton(
                                onPressed: () {
                                  _controller.nextPage(
                                      duration: const Duration(
                                        milliseconds: 200,
                                      ),
                                      curve: Curves.easeIn);
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                focusColor: const Color(0xFF68B684),
                                child: Text(
                                  _currentPage + 1 == F.splashString().length
                                      ? 'Go to app'
                                      : 'Next',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Sofia",
                                      color: Colors.grey.shade400,
                                      height: 1.5),
                                )),
                          )),
                      const Spacer()
                    ],
                  ))
            ],
          ),
        ]));
  }

  Animated_buildDots({required int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Color(0xFF293241)),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }
}
