import 'package:doctorapp/model/category_model.dart';
import 'package:doctorapp/model/store_product_model.dart';
import 'package:flutter/material.dart';

class StoreProductProvider extends ChangeNotifier {
  List<StoreProductModel> _Products = _products;
  List<CategoryModel> category = _category;

  //Getter
  List<StoreProductModel> get getProduct => _products;
  List<CategoryModel> get getCategory => _category;


  
}

List<StoreProductModel> _products = [
  // ========================= SUPPLEMEN =========================
  StoreProductModel(
    id: 1,
    productImageUrl: "lib/assets/images/store/1.png",
    name: "Daily Energy Supplement",
    shortDetails: "Boosts daily energy levels",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Suplemen",

    quantity: 30,
    unit: "capsules",
    price: 1200,
    discountedPrice: 999,
    rating: 4.7,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/suplemen.png",
  ),
  StoreProductModel(
    id: 2,
    productImageUrl: "lib/assets/images/store/2.png",
    name: "Vitamin C 1000mg",
    shortDetails: "Strong immunity booster",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Nassal Care",
    quantity: 60,
    unit: "tablets",
    price: 1500,
    discountedPrice: 1300,
    rating: 4.8,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/nassal_care.png",
  ),
  StoreProductModel(
    id: 3,
    productImageUrl: "lib/assets/images/store/3.png",
    name: "Omega 3 Fish Oil",
    shortDetails: "Heart & brain support",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Femine Care",
    quantity: 90,
    unit: "softgels",
    price: 2400,
    discountedPrice: 2100,
    rating: 4.6,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/femine_care.png",
  ),
  StoreProductModel(
    id: 4,
    productImageUrl: "lib/assets/images/store/4.png",
    name: "Magnesium Complex",
    shortDetails: "Relieves stress & muscle pain",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Gastroenterol",
    quantity: 50,
    unit: "capsules",
    price: 1800,
    discountedPrice: 1500,
    rating: 4.5,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/gastroenterol.png",
  ),
  StoreProductModel(
    id: 5,
    productImageUrl: "lib/assets/images/store/5.png",
    name: "Collagen Beauty Boost",
    shortDetails: "Healthy skin & nails",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Urology",
    quantity: 40,
    unit: "sachets",
    price: 2200,
    discountedPrice: 1999,
    rating: 4.9,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/urology.png",
  ),

  // ========================= NASSAL CARE =========================
  StoreProductModel(
    id: 6,
    productImageUrl: "lib/assets/images/store/6.png",
    name: "Nasal Spray Relief",
    shortDetails: "Instant nasal blockage relief",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Dentistry",
    quantity: 20,
    unit: "ml",
    price: 900,
    discountedPrice: 750,
    rating: 4.4,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/dentistry.png",
  ),
  StoreProductModel(
    id: 7,
    productImageUrl: "lib/assets/images/store/7.png",
    name: "Cold & Flu Nasal Drops",
    shortDetails: "Effective cold relief",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Heart",
    quantity: 15,
    unit: "ml",
    price: 850,
    discountedPrice: 700,
    rating: 4.5,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/heart.png",
  ),
  StoreProductModel(
    id: 8,
    productImageUrl: "lib/assets/images/store/8.png",
    name: "Saline Nasal Rinse",
    shortDetails: "Natural sinus cleansing",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Nassal Care",
    quantity: 100,
    unit: "ml",
    price: 600,
    discountedPrice: 550,
    rating: 4.2,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/nassal_care.png",
  ),
  StoreProductModel(
    id: 9,
    productImageUrl: "lib/assets/images/store/9.png",
    name: "Allergy Nasal Mist",
    shortDetails: "Anti-allergy spray",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Nassal Care",
    quantity: 25,
    unit: "ml",
    price: 950,
    discountedPrice: 820,
    rating: 4.4,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/nassal_care.png",
  ),
  StoreProductModel(
    id: 10,
    productImageUrl: "lib/assets/images/store/10.png",
    name: "Breathing Ease Oil",
    shortDetails: "Natural nose-opening formula",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Nassal Care",
    quantity: 30,
    unit: "ml",
    price: 700,
    discountedPrice: 640,
    rating: 4.3,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/nassal_care.png",
  ),

  // ========================= FEMINE CARE =========================
  StoreProductModel(
    id: 11,
    productImageUrl: "lib/assets/images/store/1.png",
    name: "Women's Hygiene Wash",
    shortDetails: "Gentle daily hygiene",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Femine Care",
    quantity: 200,
    unit: "ml",
    price: 1100,
    discountedPrice: 950,
    rating: 4.8,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/femine_care.png",
  ),
  StoreProductModel(
    id: 12,
    productImageUrl: "lib/assets/images/store/2.png",
    name: "Menstrual Pain Relief",
    shortDetails: "Period pain controller",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Femine Care",
    quantity: 30,
    unit: "tablets",
    price: 1300,
    discountedPrice: 1150,
    rating: 4.7,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/femine_care.png",
  ),
  StoreProductModel(
    id: 13,
    productImageUrl: "lib/assets/images/store/3.png",
    name: "Iron + Folic Acid",
    shortDetails: "Supports women's health",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Femine Care",
    quantity: 60,
    unit: "tablets",
    price: 1600,
    discountedPrice: 1400,
    rating: 4.6,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/femine_care.png",
  ),
  StoreProductModel(
    id: 14,
    productImageUrl: "lib/assets/images/store/4.png",
    name: "Multivitamin for Women",
    shortDetails: "Daily wellness formula",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Femine Care",
    quantity: 30,
    unit: "tablets",
    price: 1800,
    discountedPrice: 1650,
    rating: 4.9,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/femine_care.png",
  ),
  StoreProductModel(
    id: 15,
    productImageUrl: "lib/assets/images/store/5.png",
    name: "Skin Glow Capsules",
    shortDetails: "For healthy glowing skin",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Femine Care",
    quantity: 40,
    unit: "capsules",
    price: 2000,
    discountedPrice: 1800,
    rating: 4.8,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/femine_care.png",
  ),

  // ========================= GASTROENTEROL =========================
  StoreProductModel(
    id: 16,
    productImageUrl: "lib/assets/images/store/6.png",
    name: "Digestive Enzyme Tablets",
    shortDetails: "Easy digestion",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Gastroenterol",
    quantity: 30,
    unit: "tablets",
    price: 900,
    discountedPrice: 799,
    rating: 4.5,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/gastroenterol.png",
  ),
  StoreProductModel(
    id: 17,
    productImageUrl: "lib/assets/images/store/7.png",
    name: "Acidity Relief Syrup",
    shortDetails: "Instant acid control",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Gastroenterol",
    quantity: 120,
    unit: "ml",
    price: 750,
    discountedPrice: 680,
    rating: 4.4,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/gastroenterol.png",
  ),
  StoreProductModel(
    id: 18,
    productImageUrl: "lib/assets/images/store/8.png",
    name: "Probiotic Capsules",
    shortDetails: "Gut health support",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Gastroenterol",
    quantity: 20,
    unit: "capsules",
    price: 1300,
    discountedPrice: 1150,
    rating: 4.6,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/gastroenterol.png",
  ),
  StoreProductModel(
    id: 19,
    productImageUrl: "lib/assets/images/store/9.png",
    name: "Gas Relief Tablets",
    shortDetails: "Reduces bloating",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Gastroenterol",
    quantity: 24,
    unit: "tablets",
    price: 900,
    discountedPrice: 780,
    rating: 4.3,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/gastroenterol.png",
  ),
  StoreProductModel(
    id: 20,
    productImageUrl: "lib/assets/images/store/10.png",
    name: "Stomach Care Syrup",
    shortDetails: "Improves digestion",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Gastroenterol",
    quantity: 150,
    unit: "ml",
    price: 850,
    discountedPrice: 790,
    rating: 4.4,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/gastroenterol.png",
  ),

  // ========================= UROLOGY =========================
  StoreProductModel(
    id: 21,
    productImageUrl: "lib/assets/images/store/1.png",
    name: "Kidney Support Capsules",
    shortDetails: "Healthy kidney function",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Urology",
    quantity: 30,
    unit: "capsules",
    price: 1700,
    discountedPrice: 1500,
    rating: 4.6,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/urology.png",
  ),
  StoreProductModel(
    id: 22,
    productImageUrl: "lib/assets/images/store/2.png",
    name: "Urinary Tract Cleanse Syrup",
    shortDetails: "UTI relief",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Urology",
    quantity: 200,
    unit: "ml",
    price: 800,
    discountedPrice: 720,
    rating: 4.4,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/urology.png",
  ),
  StoreProductModel(
    id: 23,
    productImageUrl: "lib/assets/images/store/3.png",
    name: "Prostate Support Tablets",
    shortDetails: "Men’s health formula",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Urology",
    quantity: 30,
    unit: "tablets",
    price: 2000,
    discountedPrice: 1850,
    rating: 4.7,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/urology.png",
  ),
  StoreProductModel(
    id: 24,
    productImageUrl: "lib/assets/images/store/4.png",
    name: "Bladder Control Capsules",
    shortDetails: "Improves bladder strength",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Urology",
    quantity: 20,
    unit: "capsules",
    price: 1600,
    discountedPrice: 1450,
    rating: 4.3,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/urology.png",
  ),
  StoreProductModel(
    id: 25,
    productImageUrl: "lib/assets/images/store/5.png",
    name: "Herbal Urine Cleanser",
    shortDetails: "Natural cleansing",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Urology",
    quantity: 120,
    unit: "ml",
    price: 900,
    discountedPrice: 840,
    rating: 4.2,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/urology.png",
  ),

  // ========================= DENTISTRY =========================
  StoreProductModel(
    id: 26,
    productImageUrl: "lib/assets/images/store/6.png",
    name: "Whitening Toothpaste",
    shortDetails: "Brighter smile",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Dentistry",
    quantity: 100,
    unit: "ml",
    price: 700,
    discountedPrice: 620,
    rating: 4.5,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/dentistry.png",
  ),
  StoreProductModel(
    id: 27,
    productImageUrl: "lib/assets/images/store/7.png",
    name: "Mouth Freshener Spray",
    shortDetails: "Instant freshness",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Dentistry",
    quantity: 50,
    unit: "ml",
    price: 500,
    discountedPrice: 450,
    rating: 4.3,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/dentistry.png",
  ),
  StoreProductModel(
    id: 28,
    productImageUrl: "lib/assets/images/store/8.png",
    name: "Dental Care Floss",
    shortDetails: "Removes plaque",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Dentistry",
    quantity: 1,
    unit: "pack",
    price: 300,
    discountedPrice: 250,
    rating: 4.6,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/dentistry.png",
  ),
  StoreProductModel(
    id: 29,
    productImageUrl: "lib/assets/images/store/9.png",
    name: "Sensitive Teeth Gel",
    shortDetails: "For sensitive teeth",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Dentistry",
    quantity: 80,
    unit: "ml",
    price: 900,
    discountedPrice: 820,
    rating: 4.4,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/dentistry.png",
  ),
  StoreProductModel(
    id: 30,
    productImageUrl: "lib/assets/images/store/10.png",
    name: "Gum Care Mouthwash",
    shortDetails: "Healthy gums",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Dentistry",
    quantity: 250,
    unit: "ml",
    price: 750,
    discountedPrice: 690,
    rating: 4.5,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/dentistry.png",
  ),

  // ========================= HEART =========================
  StoreProductModel(
    id: 31,
    productImageUrl: "lib/assets/images/store/1.png",
    name: "Heart Health Tablets",
    shortDetails: "Cardio support",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Heart",
    quantity: 30,
    unit: "tablets",
    price: 2000,
    discountedPrice: 1800,
    rating: 4.7,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/heart.png",
  ),
  StoreProductModel(
    id: 32,
    productImageUrl: "lib/assets/images/store/2.png",
    name: "Cholesterol Control",
    shortDetails: "Reduces bad cholesterol",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Heart",
    quantity: 60,
    unit: "capsules",
    price: 2300,
    discountedPrice: 2100,
    rating: 4.8,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/heart.png",
  ),
  StoreProductModel(
    id: 33,
    productImageUrl: "lib/assets/images/store/3.png",
    name: "Blood Pressure Support",
    shortDetails: "Maintains healthy BP",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Heart",
    quantity: 30,
    unit: "tablets",
    price: 1500,
    discountedPrice: 1350,
    rating: 4.6,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/heart.png",
  ),
  StoreProductModel(
    id: 34,
    productImageUrl: "lib/assets/images/store/4.png",
    name: "Cardio Omega Plus",
    shortDetails: "Heart & brain care",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Heart",
    quantity: 90,
    unit: "softgels",
    price: 2600,
    discountedPrice: 2399,
    rating: 4.9,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/heart.png",
  ),
  StoreProductModel(
    id: 35,
    productImageUrl: "lib/assets/images/store/5.png",
    name: "Healthy Blood Flow Capsules",
    shortDetails: "Improves blood circulation",
    longDetails:
        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''',
    category: "Heart",
    quantity: 40,
    unit: "capsules",
    price: 2100,
    discountedPrice: 1900,
    rating: 4.6,
    isFavorite: false,
    categoryImage: "lib/assets/images/store_images/heart.png",
  ),
  // -------------------- SUPLEMEN --------------------
  StoreProductModel(
    id: 35,
    productImageUrl: 'lib/assets/images/store/1.png',
    name: 'Energy Booster Supplement',
    shortDetails: 'Daily energy & immunity support.',
    longDetails: '''This supplement boosts daily energy levels.
        'It supports immune health naturally.
        'Made with premium herbal extracts.
        'Enhances stamina and reduces tiredness.
        'Perfect for people with active lifestyles.''',
    category: 'Suplemen',
    quantity: 30,
    unit: 'Tablets',
    price: 1200,
    discountedPrice: 999,
    rating: 4.5,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/suplemen.png',
  ),

  StoreProductModel(
    id: 36,
    productImageUrl: 'lib/assets/images/store/2.png',
    name: 'Vitamin C 1000mg',
    shortDetails: 'High-strength vitamin for immunity.',
    longDetails: '''Vitamin C helps strengthen your immune system.
        'It reduces tiredness and boosts recovery.
        'Helps protect cells from oxidative stress.
        'Daily intake improves skin brightness.
        'Suitable for all adults.''',
    category: 'Suplemen',
    quantity: 60,
    unit: 'Tablets',
    price: 1500,
    discountedPrice: 1299,
    rating: 4.7,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/suplemen.png',
  ),

  StoreProductModel(
    id: 37,
    productImageUrl: 'lib/assets/images/store/3.png',
    name: 'Multivitamin Advanced',
    shortDetails: 'Complete nutrition formula.',
    longDetails: '''A complete blend of essential vitamins.
        'Improves overall health and strength.
        'Boosts metabolism and energy.
        'Supports heart and brain function.
        'Perfect for daily health maintenance.''',
    category: 'Suplemen',
    quantity: 90,
    unit: 'Capsules',
    price: 1800,
    discountedPrice: 1450,
    rating: 4.8,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/suplemen.png',
  ),

  StoreProductModel(
    id: 38,
    productImageUrl: 'lib/assets/images/store/4.png',
    name: 'Omega 3 Fish Oil',
    shortDetails: 'Heart & brain support.',
    longDetails: '''Rich in EPA and DHA.
        'Supports brain and eye health.
        'Improves heart function.
        'Reduces inflammation naturally.
        'Highly purified and safe.''',
    category: 'Suplemen',
    quantity: 60,
    unit: 'Softgels',
    price: 2000,
    discountedPrice: 1700,
    rating: 4.6,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/suplemen.png',
  ),

  StoreProductModel(
    id: 39,
    productImageUrl: 'lib/assets/images/store/5.png',
    name: 'Protein Powder – Vanilla',
    shortDetails: 'Premium whey protein.',
    longDetails: '''Supports muscle recovery and growth.
        'Made for athletes and fitness lovers.
        'High protein absorption rate.
        'Delicious vanilla flavour.
        'Low sugar and carbs.''',
    category: 'Suplemen',
    quantity: 1,
    unit: 'KG',
    price: 4500,
    discountedPrice: 3999,
    rating: 4.9,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/suplemen.png',
  ),

  // -------------------- NASSAL CARE --------------------
  StoreProductModel(
    id: 40,
    productImageUrl: 'lib/assets/images/store/6.png',
    name: 'Nasal Spray Relief',
    shortDetails: 'Instant breath comfort.',
    longDetails: '''Provides quick nasal congestion relief.
        'Helps open blocked nose.
        'Safe for daily use.
        'Ideal for allergy or flu.
        'Improves airflow and breathing.''',
    category: 'Nassal Care',
    quantity: 20,
    unit: 'ml',
    price: 600,
    discountedPrice: 499,
    rating: 4.2,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/nassal_care.png',
  ),

  StoreProductModel(
    id: 41,
    productImageUrl: 'lib/assets/images/store/7.png',
    name: 'Steam Inhaler Capsules',
    shortDetails: 'Clears sinuses fast.',
    longDetails: '''Special mint-based formula.
        'Opens sinuses for easy breathing.
        'Relieves flu and cold symptoms.
        'Perfect for home steam therapy.
        'Safe and effective remedy.''',
    category: 'Nassal Care',
    quantity: 10,
    unit: 'Capsules',
    price: 350,
    discountedPrice: 299,
    rating: 4.4,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/nassal_care.png',
  ),

  StoreProductModel(
    id: 42,
    productImageUrl: 'lib/assets/images/store/8.png',
    name: 'Allergy Nasal Gel',
    shortDetails: 'For seasonal allergies.',
    longDetails: '''Reduces irritation inside nose.
        'Helps prevent allergy reactions.
        'Keeps nasal passage moist.
        'Fast absorption formula.
        'Recommended for pollen seasons.''',
    category: 'Nassal Care',
    quantity: 15,
    unit: 'ml',
    price: 450,
    discountedPrice: 399,
    rating: 4.1,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/nassal_care.png',
  ),

  StoreProductModel(
    id: 43,
    productImageUrl: 'lib/assets/images/store/9.png',
    name: 'Herbal Nose Drops',
    shortDetails: 'Natural breathing support.',
    longDetails: '''Made with herbal extracts.
        'Clears nasal pathways.
        'Soothes irritation.
        'Safe for adults and kids.
        'Non-addictive formula.''',
    category: 'Nassal Care',
    quantity: 10,
    unit: 'ml',
    price: 300,
    discountedPrice: 250,
    rating: 4.0,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/nassal_care.png',
  ),

  StoreProductModel(
    id: 44,
    productImageUrl: 'lib/assets/images/store/10.png',
    name: 'Cold Relief Balm',
    shortDetails: 'Menthol-based nasal comfort.',
    longDetails: '''Helps open blocked nose.
        'Relieves cold and flu congestion.
        'Soothing menthol effect.
        'Easy to apply.
        'Perfect for nighttime use.''',
    category: 'Nassal Care',
    quantity: 25,
    unit: 'g',
    price: 500,
    discountedPrice: 420,
    rating: 4.3,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/nassal_care.png',
  ),

  // -------------------- FEMINE CARE --------------------
  StoreProductModel(
    id: 45,
    productImageUrl: 'lib/assets/images/store/1.png',
    name: 'Women Health Supplement',
    shortDetails: 'Daily wellness for women.',
    longDetails: '''Improves hormonal balance.
        'Boosts energy and mood.
        'Supports daily nutrition needs.
        'Made with safe herbal extracts.
        'Perfect for long-term health.''',
    category: 'Femine Care',
    quantity: 30,
    unit: 'Tablets',
    price: 1400,
    discountedPrice: 1199,
    rating: 4.6,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/femine_care.png',
  ),

  StoreProductModel(
    id: 46,
    productImageUrl: 'lib/assets/images/store/2.png',
    name: 'Feminine Wash',
    shortDetails: 'Gentle skincare wash.',
    longDetails: '''Maintains natural pH level.
        'Provides freshness all day.
        'Contains mild ingredients.
        'Suitable for sensitive skin.
        'Recommended by dermatologists.''',
    category: 'Femine Care',
    quantity: 200,
    unit: 'ml',
    price: 700,
    discountedPrice: 630,
    rating: 4.4,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/femine_care.png',
  ),

  StoreProductModel(
    id: 47,
    productImageUrl: 'lib/assets/images/store/3.png',
    name: 'Iron & Calcium Tablets',
    shortDetails: 'Strong bones & energy.',
    longDetails: '''Prevents iron deficiency.
        'Strengthens bones and muscles.
        'Perfect for daily use.
        'Recommended for women.
        'Improves overall wellbeing.''',
    category: 'Femine Care',
    quantity: 60,
    unit: 'Tablets',
    price: 950,
    discountedPrice: 799,
    rating: 4.5,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/femine_care.png',
  ),

  StoreProductModel(
    id: 48,
    productImageUrl: 'lib/assets/images/store/4.png',
    name: 'Skin Glow Capsules',
    shortDetails: 'Beauty from inside.',
    longDetails: '''Enhances natural skin glow.
        'Protects against dullness.
        'Supports healthy complexion.
        'Contains premium collagen.
        'Visible results in weeks.''',
    category: 'Femine Care',
    quantity: 30,
    unit: 'Capsules',
    price: 1800,
    discountedPrice: 1550,
    rating: 4.8,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/femine_care.png',
  ),

  StoreProductModel(
    id: 49,
    productImageUrl: 'lib/assets/images/store/5.png',
    name: 'Hair Growth Booster',
    shortDetails: 'Stronger & thicker hair.',
    longDetails: '''Reduces hair fall naturally.
        'Strengthens hair roots.
        'Improves scalp health.
        'Supports new growth.
        'Gentle and effective formula.''',
    category: 'Femine Care',
    quantity: 50,
    unit: 'ml',
    price: 1600,
    discountedPrice: 1400,
    rating: 4.7,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/femine_care.png',
  ),

  // -------------------- GASTROENTEROL --------------------
  StoreProductModel(
    id: 50,
    productImageUrl: 'lib/assets/images/store/6.png',
    name: 'Digestive Enzyme Formula',
    shortDetails: 'Improves digestion.',
    longDetails: '''Reduces stomach discomfort.
        'Helps break down food easily.
        'Ideal for heavy meals.
        'Improves nutrient absorption.
        'Supports overall gut health.''',
    category: 'Gastroenterol',
    quantity: 60,
    unit: 'Tablets',
    price: 1200,
    discountedPrice: 999,
    rating: 4.3,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/gastroenterol.png',
  ),

  StoreProductModel(
    id: 51,
    productImageUrl: 'lib/assets/images/store/7.png',
    name: 'Acid Control Tablets',
    shortDetails: 'Fast relief from acidity.',
    longDetails: '''Neutralizes stomach acid quickly.
        'Relieves heartburn discomfort.
        'Long-lasting effect for hours.
        'Perfect after spicy meals.
        'Safe for occasional use.''',
    category: 'Gastroenterol',
    quantity: 20,
    unit: 'Tablets',
    price: 350,
    discountedPrice: 299,
    rating: 4.4,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/gastroenterol.png',
  ),

  StoreProductModel(
    id: 52,
    productImageUrl: 'lib/assets/images/store/8.png',
    name: 'Anti-Gas Drops',
    shortDetails: 'For bloating & discomfort.',
    longDetails: '''Provides quick relief from gas.
        'Suitable for children and adults.
        'Works gently on stomach.
        'Reduces bloating naturally.
        'Easy to take formula.''',
    category: 'Gastroenterol',
    quantity: 15,
    unit: 'ml',
    price: 280,
    discountedPrice: 240,
    rating: 4.2,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/gastroenterol.png',
  ),

  StoreProductModel(
    id: 53,
    productImageUrl: 'lib/assets/images/store/9.png',
    name: 'Probiotic Capsules',
    shortDetails: 'Gut-friendly bacteria.',
    longDetails: '''Strengthens digestive health.
        'Improves bowel movement.
        'Supports nutrient absorption.
        'Reduces stomach irritation.
        'Recommended for daily use.''',
    category: 'Gastroenterol',
    quantity: 30,
    unit: 'Capsules',
    price: 1800,
    discountedPrice: 1600,
    rating: 4.6,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/gastroenterol.png',
  ),

  StoreProductModel(
    id: 54,
    productImageUrl: 'lib/assets/images/store/10.png',
    name: 'Oral Rehydration Salt',
    shortDetails: 'Hydration booster.',
    longDetails: '''Restores lost electrolytes.
        'Prevents dehydration.
        'Recommended for diarrhea.
        'Quick mixing formula.
        'Safe for all ages.''',
    category: 'Gastroenterol',
    quantity: 5,
    unit: 'Sachets',
    price: 150,
    discountedPrice: 120,
    rating: 4.1,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/gastroenterol.png',
  ),

  // -------------------- UROLOGY --------------------
  StoreProductModel(
    id: 55,
    productImageUrl: 'lib/assets/images/store/1.png',
    name: 'Kidney Cleanse Formula',
    shortDetails: 'Supports urinary health.',
    longDetails: '''Flushes toxins from kidneys.
        'Supports healthy urine flow.
        'Made with herbal ingredients.
        'Ideal for detox routines.
        'Safe for long-term use.''',
    category: 'Urology',
    quantity: 30,
    unit: 'Capsules',
    price: 1500,
    discountedPrice: 1300,
    rating: 4.4,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/urology.png',
  ),

  StoreProductModel(
    id: 56,
    productImageUrl: 'lib/assets/images/store/2.png',
    name: 'Urinary Pain Relief',
    shortDetails: 'Fast relief tablets.',
    longDetails: '''Reduces burning sensation.
        'Helps with urinary infections.
        'Provides quick comfort.
        'Safe temporary relief.
        'Recommended by doctors.''',
    category: 'Urology',
    quantity: 20,
    unit: 'Tablets',
    price: 900,
    discountedPrice: 780,
    rating: 4.3,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/urology.png',
  ),

  StoreProductModel(
    id: 57,
    productImageUrl: 'lib/assets/images/store/3.png',
    name: 'Prostate Support Tablets',
    shortDetails: 'Men’s health formula.',
    longDetails: '''Supports healthy prostate function.
        'Reduces frequent urination issues.
        'Contains herbal extracts.
        'Improves bladder health.
        'Recommended for men 40+.''',
    category: 'Urology',
    quantity: 60,
    unit: 'Tablets',
    price: 2200,
    discountedPrice: 1900,
    rating: 4.5,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/urology.png',
  ),

  StoreProductModel(
    id: 58,
    productImageUrl: 'lib/assets/images/store/4.png',
    name: 'UTI Relief Syrup',
    shortDetails: 'Soothes infection pain.',
    longDetails: '''Reduces urinary discomfort.
        'Helps flush bacteria.
        'Fast-acting liquid formula.
        'Safe for adults.
        'Pleasant herbal taste.''',
    category: 'Urology',
    quantity: 120,
    unit: 'ml',
    price: 750,
    discountedPrice: 650,
    rating: 4.2,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/urology.png',
  ),

  StoreProductModel(
    id: 59,
    productImageUrl: 'lib/assets/images/store/5.png',
    name: 'Urinary Cleanse Tea',
    shortDetails: 'Herbal detox tea.',
    longDetails: '''Eliminates urinary toxins.
        'Made with natural herbs.
        'Improves urine flow.
        'Supports kidney health.
        'Refreshing taste blend.''',
    category: 'Urology',
    quantity: 20,
    unit: 'Tea Bags',
    price: 500,
    discountedPrice: 420,
    rating: 4.3,
    isFavorite: false,
    categoryImage: 'lib/assets/images/store_images/urology.png',
  ),

  // -------------------- DENTISTRY --------------------
  StoreProductModel(
    id: 60,
    productImageUrl: 'lib/assets/images/store/6.png',
    name: 'Whitening Toothpaste',
    shortDetails: 'Brighter smile formula.',
    longDetails: '''Removes yellow stains.
        'Strengthens enamel naturally.
        'Fresh mint flavour.
        'Safe for daily use.
        'Recommended by dentists.''',
    category: 'Dentistry',
    quantity: 100,
    unit: 'g',
    price: 350,
    discountedPrice: 290,
    rating: 4.6,
    isFavorite: true,
    categoryImage: 'lib/assets/images/store_images/dentistry.png',
  ),
];
List<CategoryModel> _category = [
  CategoryModel(name: 'Suplemen', Image: 'lib/assets/images/store_images/suplemen.png'),
  CategoryModel(name: 'Nassal Care', Image: 'lib/assets/images/store_images/nassal_care.png'),
  CategoryModel(name: 'Femine Care', Image: 'lib/assets/images/store_images/femine_care.png'),
  CategoryModel(name: 'Gastroenterol', Image: 'lib/assets/images/store_images/gastroenterol.png'),
  CategoryModel(name: 'Urology', Image: 'lib/assets/images/store_images/urology.png'),
  CategoryModel(name: 'Dentistry', Image: 'lib/assets/images/store_images/dentistry.png'),
  CategoryModel(name: 'Heart', Image: 'lib/assets/images/store_images/heart.png'),
];