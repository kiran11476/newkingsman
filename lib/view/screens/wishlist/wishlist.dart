import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenWish extends StatelessWidget {
  const ScreenWish({Key? key}) : super(key: key);

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
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    color: Colors.green,
                    height: 50,
                    width: 50,
                  ),
                  title: Text('$index sheep'),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete_outline)),
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
