import 'package:flutter/material.dart';
import 'package:todo_list_provider/shared/widgets/inputs/text_input_widget.dart';

class TitleTextInputWidget extends StatelessWidget {
  final TextEditingController titleTEC;
  final FocusNode titleFN;
  final FocusNode descriptionFN;

  const TitleTextInputWidget({
    required this.titleFN,
    required this.titleTEC,
    required this.descriptionFN,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextInputWidget(
      controller: titleTEC,
      focusNode: titleFN,
      label: 'Titulo',
      autoFocus: true,
      textCapitalization: TextCapitalization.words,
      onFieldSubmitted: (_) => descriptionFN.requestFocus(),
      validator: (String? title) {
        if (title == null || title.isEmpty) {
          return 'Você precisa adicionar um título';
        }
        return null;
      },
    );
  }
}
