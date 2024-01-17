import 'package:flutter/material.dart';
import 'package:mvc_exercise/controller/number_controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class NumberView extends StatefulWidget {
  const NumberView({Key? key}) : super(key: key);

  @override
  State createState() => _NumberViewState();
}

class _NumberViewState extends StateMVC<NumberView> {
  _NumberViewState() : super(NumberController()) {
    numberController = controller as NumberController;
  }

  late NumberController numberController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(numberController.num.toString()),
              ElevatedButton(
                  onPressed: () {
                    numberController.incrementNum();
                  },
                  child: const Text('증가')),
              ElevatedButton(
                  onPressed: () {
                    numberController.decrementNum();
                  },
                  child: const Text('감소')),
              ElevatedButton(
                  onPressed: () {
                    numberController.resetNum();
                  },
                  child: const Text('초기화')),
            ],
          ),
        ),
      ),
    );
  }
}
