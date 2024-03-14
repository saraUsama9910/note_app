import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hint;
  int maxLines;
  final void Function(String?)? onSaved;
  final  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        onSaved: onSaved,
        onChanged: onChanged,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is Empty';
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        decoration: InputDecoration(
            hintText: hint,
            border: buildborder(),
            enabledBorder: buildborder()),
      ),
    );
  }

  OutlineInputBorder buildborder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white));
}
