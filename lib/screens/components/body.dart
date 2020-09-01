import 'package:ana_clock/screens/components/clock.dart';
import 'package:ana_clock/screens/components/country_card.dart';
import 'package:flutter/material.dart';
import 'package:ana_clock/screens/components/time_in_hours_and_minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Mumbai, India | IST",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHoursAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "GMT-4",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: "6:56",
                    peroid: "AM",
                  ),
                  CountryCard(
                    country: "Sydney NSW, Australia",
                    timeZone: "GMT+10",
                    iconSrc: "assets/icons/Sydney.svg",
                    time: "8:56",
                    peroid: "PM",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
