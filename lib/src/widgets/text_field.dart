import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintMessege;
  const TextFieldWidget({super.key, required this.hintMessege});

  @override
  Widget build(BuildContext context) {
    return TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    )
                  ),
                  filled: true,
                  label:  Text(hintMessege, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  labelStyle: const TextStyle(color: Color(0xff999999)),
                  fillColor: const Color(0xffFFFFFF)

                ),
              );
  }
}