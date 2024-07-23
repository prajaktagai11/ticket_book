import 'package:flutter/material.dart';
import 'package:ticket_book/base/res/styles/app_styles.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hotel Title"),
              background: Image.network("https://via.placeholder.com/600x400"),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  "jhfuihfjfhsjhgdfbkjfjbuizdfhjnkjdjf xcnbhxfnfisfjksfjshjsnfdjknsjkfnsjnfjksnsjdfjsfjfjfjbjkfbjfkjsnkjdkxcnbfjbk bjkfbc"),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "More Images",
                style: AppStyles.headlineStyle2.copyWith(fontSize: 20),
              ),
            ),
                Container(
                  height: 200,
                  child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                      itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.all(16),
                        child: Image.network("https://via.placeholder.com/200x200"));
                  }),
                )
          ]))
        ],
      ),
    );
  }
}
