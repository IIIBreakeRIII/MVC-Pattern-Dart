import 'package:flutter/material.dart';
import 'package:mvc_exercise/controller/number_controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class NumberView2 extends StatefulWidget {
	const NumberView2({Key? key}) : super(key: key);

	@override
		State createState() => _NumberView2State();
}

class _NumberView2State extends StateMVC<NumberView2> {
	_NumberView2State() : super(NumberController()) {
		numberController = controller as NumberController;
	}

	late NumberController numberController;

	@override
		Widget build(BuildContext context) {
			return Scaffold(
					body: SafeArea(
						child: Center(
							child: Column(
								)
							)
						)
					);
		}
}
