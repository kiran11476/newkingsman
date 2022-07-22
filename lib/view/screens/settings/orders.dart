import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenOrders extends StatelessWidget {
  const ScreenOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.black,
        title: const Text('KingsMan'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    color: Colors.green,
                    height: 50,
                    width: 50,
                  ),
                  title: const Text(' Your Orders'),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            )
          ]),
        ),
      ),
    );
  }
}
