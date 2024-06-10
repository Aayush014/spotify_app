import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../Utils/global_list.dart';
import '../../Provider/choice_chip_provider.dart';


class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ChoiceChipProvider>(
      builder: (context, model, child) {
        return Wrap(
          children: List<Widget>.generate(contentList.length, (int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 7),
              child: ChoiceChip(
                label: Text(contentList[index]),
                selected: model.selectedIndex == index,
                selectedColor: Colors.green,
                backgroundColor: Colors.white12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                autofocus: true,
                showCheckmark: false,
                labelStyle: const TextStyle(fontSize: 15),
                side: BorderSide.none,
                onSelected: (bool selected) {
                  if (selected) {
                    model.selectIndex(index);
                  }
                },
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
