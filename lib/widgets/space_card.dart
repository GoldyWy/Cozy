import 'package:cozy/models/space.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(space.imageUrl),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon_star.png'),
                          Text(
                            '${space.rating}/5',
                            style: whiteTextStyle.copyWith(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(TextSpan(
                  text: '\$${space.price}',
                  style: purpleTextStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                        text: '/ month',
                        style: greyTextStyle.copyWith(fontSize: 16))
                  ])),
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: greyTextStyle.copyWith(fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}