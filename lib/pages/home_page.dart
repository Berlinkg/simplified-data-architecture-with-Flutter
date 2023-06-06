import 'package:api_2/constant.dart';
import 'package:api_2/data/notifierss/notifiers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: he10),
            const Text(
              'spontaneous',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 4.0,
              ),
            ),
            ValueListenableBuilder(
                valueListenable: isConnectedNotifier,
                builder: (context, isConnected, child) {
                  return Image.asset(isConnected
                      ? 'assets/images/g.png'
                      : "assets/images/w.png");
                }),
            const SizedBox(height: he10),
            // Image.asset('assets/images/g.png'),
            ValueListenableBuilder(
              valueListenable: dataNofier,
              builder: (context, data, child) {
                return Padding(
                  padding: const EdgeInsets.all(he10),
                  child: Column(
                    children: [
                      const SizedBox(height: he10),
                      Text(data.activity,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 4.0),
                          textAlign: TextAlign.center),
                      const SizedBox(height: he20),
                      Text('this is a  ${data.type} type type activity',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            // letterSpacing: 4.0,
                          ),
                          textAlign: TextAlign.center),
                      ListTile(
                        title: Text(data.participants.toString()),
                        leading: const Text('participants'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton.icon(
            onPressed: () async {
              await dataNofier.value.reset();
            },
            icon: const Icon(Icons.add),
            label: const Text('New activity'),
          ),
          const SizedBox(height: he10),
          TextButton(
            onPressed: () {
              dataNofier.value.logData();
              //add the onpressed funtction
            },
            child: const Text('logo dataa'),
          ),
          const SizedBox(height: he10),
        ],
      ),
    );
  }
}
