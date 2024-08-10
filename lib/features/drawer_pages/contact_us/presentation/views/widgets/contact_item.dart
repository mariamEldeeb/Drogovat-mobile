import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_text_form_field.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.label,
    this.maxLines,
    this.controller,
    this.validate,
  });

  final String label;
  final int? maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            label,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: CustomTextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: maxLines,
            controller: controller,
            validate: validate,
          ),
        ),
      ],
    );
  }
}
