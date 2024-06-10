import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:spotify_app/Screens/Sign%20In/View/components/same_appbar.dart';
import 'package:spotify_app/Screens/Sign%20In/View/gender_selecting.dart';

class BirthDatePicker extends StatelessWidget {
  const BirthDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: sameAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.08,
            ),
            Text(
              "What's your date of birth?",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: screenHeight * 0.05,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.09,
            ),
            const MyDatePicker(),
            SizedBox(
              height: screenHeight * 0.12,
            ),
            Align(
              alignment: Alignment.center,
              child: CupertinoButton(
                borderRadius: BorderRadius.circular(screenWidth * 0.08),
                padding: EdgeInsets.zero,
                color: Colors.green,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const GenderSelecting(),
                )),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.025,
                    horizontal: screenWidth * 0.1,
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: screenHeight * 0.02,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDatePicker extends StatelessWidget {
  const MyDatePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;

    return DatePickerWidget(
      dateFormat: "dd/MMMM/yyyy",
      looping: false,
      firstDate: DateTime(1970),
      initialDate: DateTime.now(),
      pickerTheme: DateTimePickerTheme(
        backgroundColor: Colors.transparent,
        itemHeight: screenHeight * 0.04,
        itemTextStyle: const TextStyle(color: Colors.white),
        dividerColor: Colors.white,
      ),
      lastDate: DateTime.now(),
    );
  }
}
