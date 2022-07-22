import 'package:flutter/material.dart';

class TextandFormFieldWidget extends StatelessWidget {
  final headingText;
  final hintText;
  const TextandFormFieldWidget(
      {Key? key, required this.headingText, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(headingText),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                labelText: hintText,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
