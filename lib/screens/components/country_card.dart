import 'package:ana_clock/utils/size_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key key,
    @required this.country,
    @required this.timeZone,
    @required this.iconSrc,
    @required this.time,
    @required this.peroid,
  }) : super(key: key);
  final country, timeZone, iconSrc, time, peroid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: getProportionateScreenWidth(223),
        child: AspectRatio(
          aspectRatio: 1.32,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(20.0)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border:
                  Border.all(color: Theme.of(context).primaryIconTheme.color),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: getProportionateScreenWidth(16.0)),
                ),
                SizedBox(height: 5),
                Text(timeZone),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      iconSrc,
                      width: getProportionateScreenWidth(40.0),
                      color: Theme.of(context).accentIconTheme.color,
                    ),
                    Spacer(),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(peroid),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
