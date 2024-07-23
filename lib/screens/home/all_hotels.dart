import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';
import 'package:ticket_book/base/utils/all_json.dart';
import 'package:ticket_book/base/utils/app_routes.dart';

class AllHotels extends StatefulWidget {
  const AllHotels({super.key});

  @override
  State<AllHotels> createState() => _AllHotelsState();
}

class _AllHotelsState extends State<AllHotels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        appBar: AppBar(
          title: const Text("All Hotels"),
          backgroundColor: AppStyles.bgColor,
        ),
        body: Container(
          margin: const EdgeInsets.only(
            left: 8
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.9),
                itemCount: hotelList.length,
                itemBuilder: (context, index) {
                  var singleHotel = hotelList[index];
                  return HotelGridView(hotel: singleHotel);
                }),
          ),
        ));
  }
}

class HotelGridView extends StatelessWidget {
  const HotelGridView({super.key, required this.hotel});

  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutes.hotelDetail);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(right: 8),
        height: 350,
        // width: size.width * 0.6,
        decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/${hotel["image"]}"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0,top: 2),
              child: Text(
                hotel["place"],
                style:
                    AppStyles.headlineStyle3.copyWith(color: AppStyles.kakiColor,overflow: TextOverflow.ellipsis),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    hotel["destination"],
                    style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "\$${hotel["price"]}/N",
                    style:
                    AppStyles.headlineStyle4.copyWith(color: AppStyles.kakiColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
