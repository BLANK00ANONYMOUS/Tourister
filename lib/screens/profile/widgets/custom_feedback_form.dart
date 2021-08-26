import 'package:flutter/material.dart';

class CustomFeedbackForm extends StatefulWidget {
  const CustomFeedbackForm({Key? key}) : super(key: key);

  @override
  _CustomFeedbackFormState createState() => _CustomFeedbackFormState();
}

class _CustomFeedbackFormState extends State<CustomFeedbackForm> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.multiline,
      minLines: null,
      maxLines: 5,
      maxLength: 200,
    );
  }
}
