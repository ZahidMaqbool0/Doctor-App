import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:flutter/material.dart';

class HealthArticleDetiledScreen extends StatelessWidget {
  final String articalName;
  final String articalImage;
  final String articaleDetiled;
  final String nameAuthor;
  final String date;
  final String authorImage;

  const HealthArticleDetiledScreen({
    super.key,
    required this.articalName,
    required this.articalImage,
    required this.articaleDetiled,
    required this.nameAuthor,
    required this.date,
    required this.authorImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artical Detail'),
        titleTextStyle: TextStyle(
          color: MyColors.fontHeadingColor,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 17,
            color: MyColors.blackColor,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  articalName,
                  style: TextStyle(
                    color: MyColors.fontHeadingColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.hardEdge,
                child:   Image.asset(
                  articalImage,
                  width: double.infinity,
                  height: 186,
                  fit: BoxFit.cover,
                ),
              ),
                SizedBox(height: 20),
                ListTile(
                  title: Text(nameAuthor),
                  subtitle: Text(date),
                  leading: Image.asset(authorImage, width: 40,),
                  trailing: SizedBox(
                    width: 60,
                    height: 40,
                    child: Material(
                      color: MyColors.basePrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(10),
                        //hoverColor: MyColors.blackColor,
                        splashColor: Colors.white.withAlpha(100),
                        highlightColor: Colors.white.withAlpha(60),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Follow',
                            style: TextStyle(
                              color: MyColors.whiteColor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  articaleDetiled,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: MyColors.fontHeadingColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: MyColors.whiteColor,
              borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: MyColors.graylightColor,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.favorite_border),
                ),
                SizedBox(width: 5,),
                Text('6.7k'),
                SizedBox(width: 10,),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.comment),
                ),
                SizedBox(width: 5,),
                Text('6.7k'),
              ]),
        ),
      ),
    );
  }
}
