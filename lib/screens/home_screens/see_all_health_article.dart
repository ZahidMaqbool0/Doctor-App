import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/health_article_provider.dart';
import 'package:doctorapp/screens/home_screens/health_article_detiled_screen.dart';
import 'package:doctorapp/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SeeAllHealthArticle extends StatefulWidget {
  const SeeAllHealthArticle({super.key});

  @override
  State<SeeAllHealthArticle> createState() => _SeeAllHealthArticleState();
}

class _SeeAllHealthArticleState extends State<SeeAllHealthArticle> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        title: const Text('Article'),
        titleTextStyle: TextStyle(
          color: MyColors.textHeadingColor,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios, size: 20, color: MyColors.textHeadingColor,)),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Consumer<HealthArticleProvider>(
            builder: (context, providerHealtArticale, child) {
              return Column(
                children: [
                  SizedBox(height: 10),
                  SearchWidget(
                    keyboardType: TextInputType.text,
                    hintText: 'Search article',
                    textEditingController:
                        providerHealtArticale.searchController,
                    onChanged: (valueIs) {
                      providerHealtArticale.searchDataHealthArticale(valueIs);
                    },
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount:
                          providerHealtArticale.getFilteredArticles.length,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        var item =
                            providerHealtArticale.getFilteredArticles[index];
                        return Padding(padding: EdgeInsets.only(bottom: 10), child: InkWell(
                          onTap: () {
                            Navigator.push(
                              (context),
                              MaterialPageRoute(
                                builder: (context) =>
                                    HealthArticleDetiledScreen(
                                      articalName: item.nameArtical,
                                      articaleDetiled: item.description,
                                      nameAuthor: item.nameAuthor,
                                      date: item.date,
                                      authorImage: item.imageAuthor,
                                      articalImage: item.imageUrlArtical,
                                    ),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: MyColors.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.graylightColor,
                                  spreadRadius: 0.5,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 12,
                              ),
                              child: Row(
                                spacing: 8,
                                children: [
                                  Container(
                                    width: 55,
                                    height: 55,
                                    child: Image.asset(
                                      item.imageUrlArtical,
                                      width: double.infinity,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      // important for left alignment
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          item.nameArtical,
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            color: Colors.black,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              item.date,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              item.readTime,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      providerHealtArticale.toggleBookmark(
                                        index,
                                      );
                                    },
                                    child: Icon(
                                      Icons.bookmark,
                                      size: 20,
                                      color: item.isBookmarked
                                          ? MyColors.basePrimaryColor
                                          : MyColors.graylightColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ));
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
