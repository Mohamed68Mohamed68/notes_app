import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_bottom.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButtom(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
