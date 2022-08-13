import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:statemanagement/getx/counter_controller.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({required this.count, Key? key}) : super(key: key);
  int count;
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
          child: GetBuilder<CounterController>(
        builder: (_) => Text(
          '${counterController.count}',
          style: const TextStyle(fontSize: 30),
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () async {
              await counterController.decrementCounter();
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () async {
              await counterController.incrementCounter();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.to(() => const SecondScreen());
      //   },
      //   child: const Text('Next'),
      // ),
    );
  }
}
