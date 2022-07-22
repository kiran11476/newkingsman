import 'package:flutter/material.dart';

import '../product/widget/bottomsheet.dart';

class ScreenWishList extends StatelessWidget {
  const ScreenWishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomSheet: const Bottomsheeet(),
    );
  }
}
