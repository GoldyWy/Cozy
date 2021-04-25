import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            // NOTE : TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge, top: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE : PUPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/city1.png')),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/images/city2.png',
                        isPopular: true),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/city3.png')),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE : RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  SpaceCard(Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/images/space1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Germany',
                      rating: 4)),
                  SpaceCard(Space(
                      id: 2,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/images/space2.png',
                      price: 11,
                      city: 'Seattle',
                      country: 'Bogor',
                      rating: 5)),
                  SpaceCard(Space(
                      id: 3,
                      name: 'Darrling How',
                      imageUrl: 'assets/images/space3.png',
                      price: 20,
                      city: 'Jakarta',
                      country: 'Indonesia',
                      rating: 3))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
