import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../Utils/global_list.dart';
import '../../../Provider/chip_provider.dart';
import '../../personal_details.dart';

Padding genderSelectBody(
    EdgeInsets padding,
    SizedBox spacing,
    TextStyle textStyle,
    double screenHeight,
    double screenWidth,
    BuildContext context) {
  return Padding(
    padding: padding,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        spacing,
        Text(
          "What's your gender?",
          style: textStyle,
        ),
        SizedBox(height: screenHeight * 0.05),
        ...chipLabels.map((rowLabels) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: rowLabels.map((label) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: screenHeight * 0.02,
                  right: screenWidth * 0.03,
                ),
                child: ChoiceChip(
                  backgroundColor: Colors.transparent,
                  selectedColor: Colors.white24,
                  labelStyle: TextStyle(fontSize: screenHeight * 0.025),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.08),
                  ),
                  label: Text(label),
                  padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.02,
                    horizontal: screenWidth * 0.08,
                  ),
                  selected: context.watch<ChipProvider>().selectedChip == label,
                  autofocus: true,
                  showCheckmark: false,
                  side: const BorderSide(color: Colors.white),
                  onSelected: (bool selected) {
                    if (selected) {
                      context.read<ChipProvider>().selectChip(label);
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PersonalDetails(),
                      ),
                    );
                  },
                ),
              );
            }).toList(),
          );
        }),
      ],
    ),
  );
}
