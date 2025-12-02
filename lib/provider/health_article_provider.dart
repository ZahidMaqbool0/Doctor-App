
import 'package:doctorapp/model/health_article_model.dart';
import 'package:flutter/material.dart';

class HealthArticleProvider extends ChangeNotifier {

  //Controller
  TextEditingController searchController = TextEditingController();

  //Variable

  // Data List
  List<HealthArticleModel> _healthArtical = _allhealthArtical;
  List<HealthArticleModel> _filteredArticles  = [];

  // Constructor
  HealthArticleProvider() {
    _filteredArticles = List.from(_healthArtical)..shuffle();
  }


  //Gattar Data
  List<HealthArticleModel> get getHealthArticale => _healthArtical;
  List<HealthArticleModel> get getFilteredArticles  => _filteredArticles ;

  //Function
  void toggleBookmark(int index) {
    _filteredArticles[index].isBookmarked = !_filteredArticles[index].isBookmarked;
    notifyListeners();
  }

  //Searching the Data Base on Author Name, Articale Title, and Articale Description/Details
  void searchDataHealthArticale(String searchText) {
    String queryIs = searchText.toLowerCase();

    if(queryIs.isEmpty){
      _filteredArticles = List.from(_healthArtical)..shuffle();
    }else{
      _filteredArticles = _healthArtical.where((listData){
        final searchNameArtical = queryIs.isEmpty ? true : listData.nameArtical.toLowerCase().contains(queryIs);
        final searchDescriptionArticale = queryIs.isEmpty ? true : listData.description.toLowerCase().contains(queryIs);
        final searchNameAuthor = queryIs.isEmpty ? true : listData.nameAuthor.toLowerCase().contains(queryIs);
        return searchNameArtical || searchDescriptionArticale || searchNameAuthor;
      }).toList();
    }

    notifyListeners();
  }
} // End Provider

List<HealthArticleModel> _allhealthArtical = [
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_1.png',
    nameArtical: 'Common Blood Tests and What They Reveal About Your Health',
    nameAuthor: 'John Doe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 30,
    totalComment: 200,
    date: 'Jun 10, 2021 ',
    readTime: '5min read',
    categares: 'Blood Test',
    isBookmarked: false,
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_2.png',
    isBookmarked: false,
    nameArtical: 'How to Prepare for a Blood Test: Tips for Accurate Results',
    nameAuthor: 'John Doe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 60,
    totalComment: 500,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Blood Test',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_3.png',
    isBookmarked: false,
    nameArtical: 'Understanding Your Blood Test Report: A Beginner’s Guide',
    nameAuthor: 'John Doe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 60,
    totalComment: 300,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Blood Test',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_4.png',
    isBookmarked: false,
    nameArtical: 'The Role of Blood Tests in Detecting Chronic Diseases Early',
    nameAuthor: 'John Doe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 60,
    totalComment: 300,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Blood Test',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    isBookmarked: false,
    nameArtical: 'When Should You Get a Blood Test? Signs You Shouldn’t Ignore',
    nameAuthor: 'John Doe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 60,
    totalComment: 300,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Blood Test',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_1.png',
    isBookmarked: false,
    nameArtical: 'What to Expect During an Ultrasound Scan: A Complete Guide',
    nameAuthor: 'Smith jhon',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '5min read',
    categares: 'Ultra Sound',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_2.png',
    isBookmarked: false,
    nameArtical: 'Different Types of Ultrasound and Their Medical Uses',
    nameAuthor: 'Smith jhon',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Ultra Sound',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_3.png',
    isBookmarked: false,
    nameArtical: 'How Ultrasound Helps in Diagnosing Pregnancy Complications',
    nameAuthor: 'Smith jhon',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Ultra Sound',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_4.png',
    isBookmarked: false,
    nameArtical: 'The Safety of Ultrasound Scans: What You Need to Know',
    nameAuthor: 'Smith jhon',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Ultra Sound',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    isBookmarked: false,
    nameArtical: 'Ultrasound vs. MRI: When Is Each Test Appropriate?',
    nameAuthor: 'Smith jhon',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Ultra Sound',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_1.png',
    nameArtical: 'How X-Rays Work and What They Can Diagnose',
    isBookmarked: false,
    nameAuthor: 'Smith Bear',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 600,
    date: 'Jun 10, 2021 ',
    readTime: '5min read',
    categares: 'X-Ray',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_2.png',
    nameArtical: 'Common Reasons Your Doctor Might Recommend an X-Ray',
    isBookmarked: false,
    nameAuthor: 'Smith Bear',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'X-Ray',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_3.png',
    nameArtical: 'Are X-Rays Safe? Understanding Radiation Exposure',
    nameAuthor: 'Smith Bear',
    isBookmarked: false,
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'X-Ray',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_4.png',
    nameArtical: 'Interpreting Your X-Ray Results: What Patients Should Know',
    nameAuthor: 'Smith Bear',
    isBookmarked: false,
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Blood Test',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'Advances in X-Ray Technology: From Traditional to Digital Imaging',
    isBookmarked: false,
    nameAuthor: 'Smith Bear',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'X-Ray',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'What Is a Pap Smear and Why Is It Important?',
    isBookmarked: false,
    nameAuthor: 'james jo',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Pap Smear',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'When Should You Start Getting Pap Smears? Guidelines for Women',
    isBookmarked: false,
    nameAuthor: 'james jo',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Pap Smear',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    isBookmarked: false,
    nameArtical: 'Understanding Pap Smear Results: What Does It Mean?',
    nameAuthor: 'james jo',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Pap Smear',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'How Often Should You Get a Pap Smear? Recommendations and Tips',
    nameAuthor: 'james jo',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Pap Smear',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'Common Myths About Pap Smears Debunked',
    nameAuthor: 'james jo',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Pap Smear',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'Top 10 Essential Medicines You Should Always Have in Your Home Pharmacy',
    nameAuthor: 'meth joe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Pharmacy',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'How to Properly Store Your Medicines to Ensure Maximum Effectiveness',
    nameAuthor: 'meth joe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Pharmacy',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'Understanding Common Over-the-Counter Medications and Their Uses',
    nameAuthor: 'meth joe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Pharmacy',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'The Role of Pharmacists in Ensuring Safe Medication Practices',
    nameAuthor: 'meth joe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Pharmacy',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'How to Read Medicine Labels: A Guide to Dosage and Side Effects',
    nameAuthor: 'meth joe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 90,
    totalComment: 800,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Pharmacy',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'Different Types of Covid-19 Tests: PCR, Rapid Antigen, and Antibody Explained',
    nameAuthor: 'jeme joe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 50,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Covid Test',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'When and How to Get Tested for Covid-19: A Step-by-Step Guide',
    nameAuthor: 'jeme joe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 50,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Covid Test',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'Understanding Covid Test Results: What Does Positive, Negative, and Inconclusive Mean?',
    nameAuthor: 'jeme joe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 50,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Covid Test',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'The Importance of Regular Covid Testing During the Pandemic',
    nameAuthor: 'jeme joe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 50,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Covid Test',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'How Accurate Are Home Covid Testing Kits Compared to Laboratory Tests?',
    nameAuthor: 'jeme joe',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 50,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Covid Test',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'Why Vaccinations Are Essential for Public Health',
    nameAuthor: 'bari jone',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 50,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Vaccinations',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'Common Childhood Vaccinations and Their Benefits',
    nameAuthor: 'bari jone',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 50,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Vaccinations',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'How Vaccines Work: The Science Behind Immunization',
    nameAuthor: 'bari jone',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 50,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Vaccinations',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'The Role of Vaccinations in Preventing Epidemics',
    nameAuthor: 'bari jone',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 50,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Vaccinations',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'Addressing Vaccine Hesitancy: Facts vs. Myths',
    nameAuthor: 'bari jone',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 50,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Vaccinations',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'What to Expect from Minor Surgical Procedures',
    nameAuthor: 'tom ge',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 900,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Minor Surgery',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'Common Types of Minor Surgeries and Their Uses',
    nameAuthor: 'tom ge',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 900,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Minor Surgery',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'Preparing for Minor Surgery: Tips and Precautions',
    nameAuthor: 'tom ge',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 900,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Minor Surgery',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'Recovery Tips After Minor Surgery: What You Need to Know',
    nameAuthor: 'tom ge',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 900,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Minor Surgery',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'Risks and Benefits of Minor Surgery: Making an Informed Decision',
    nameAuthor: 'tom ge',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 900,
    totalComment: 100,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'Minor Surgery',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical:
        'What Is an ECG and How Does It Help Diagnose Heart Conditions?',
    nameAuthor: 'jary',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 890,
    totalComment: 480,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'ECG',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'Advances in ECG Technology: Portable and Wireless Devices',
    nameAuthor: 'jary',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 890,
    totalComment: 480,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'ECG',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'When Should You Get an ECG? Recognizing Symptoms',
    nameAuthor: 'jary',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 890,
    totalComment: 480,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'ECG',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'Understanding Your ECG Results: What the Lines Mean',
    nameAuthor: 'jary',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 890,
    totalComment: 480,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'ECG',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
  HealthArticleModel(
    isBookmarked: false,
    imageUrlArtical: 'lib/assets/images/health_article_images/1_image_5.png',
    nameArtical: 'How to Prepare for an ECG Test: A Simple Guide',
    nameAuthor: 'jary',
    imageAuthor: 'lib/assets/images/health_article_images/author_1.png',
    totalLike: 890,
    totalComment: 480,
    date: 'Jun 10, 2021 ',
    readTime: '10min read',
    categares: 'ECG',
    description:
        ''' Researchers at the West Virginia University Rockefeller Neuroscience Institute have publis a study in the journal Science Translational Medicine that shows promise for treating Alzheimer's disease with ultrasound technology. \n The study, which was conducted on mice, involved using ultrasound technology to stimulate the brain's microglia cells. These cells act as the brain's immune system, and are responsible for removing waste and fighting off infections. In Alzheimer's disease, the microglia cells become less active. ''',
  ),
];
