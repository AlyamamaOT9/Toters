
import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';

import 'Burgers.dart';


class toters extends StatefulWidget {


  @override
  State<toters> createState() => _totersState();
}

class _totersState extends State<toters> {
  final List<String> listImages = [
    "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/processed-food700-350-e6d0f0f.jpg",
    "https://images.everydayhealth.com/images/diet-nutrition/34da4c4e-82c3-47d7-953d-121945eada1e00-giveitup-unhealthyfood.jpg",
    "https://cdn.tasteatlas.com//images/toplistarticles/fc20fbcfe5cd4690ba0cb9614192303a.jpg?w=375&h=280",
    "https://www.arhavirestaurantbatumi.com/wp-content/uploads/2021/05/classic-homemade-pizza-dough-close.jpg",
    "https://sahhawhana.com/mwfiles/thumbs/fit630x300/3368/1588486314/%D9%81%D8%B7%D8%A7%D8%A6%D8%B1_%D8%A7%D9%84%D8%B5%D8%A7%D8%AC_%D8%A8%D8%A7%D9%84%D8%AF%D8%AC%D8%A7%D8%AC.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: Icon(Icons.settings_input_component_outlined,color: Colors.grey,),
        actions: [
          Text("توصيل الى \n بيروت لبنان",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("سجل الدخول باستخدام تطبيق توترز و استمتع بمزايا حصريا",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_back,color: Colors.green,),
                  ],
                ),
                SizedBox(height: 5,),
                CarouselImages(
                  scaleFactor: 0.7,
                  listImages: listImages,
                  height: 300.0,
                  borderRadius: 30.0,
                  cachedNetworkImage: true,
                  verticalAlignment: Alignment.bottomCenter,
                  onTap: (index) {
                    print('Tapped on page $index');
                  },
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    post(
                      "https://cdn0.iconfinder.com/data/icons/commerce-line-1/512/comerce_delivery_shop_business-04-256.png",
                      "البقالة",
                    ),
                    post(
                      "https://cdn4.iconfinder.com/data/icons/restaurant-134/32/Restaurant_restaurant_food_dinner_lunch_knife_fork-256.png",
                      "المطاعم",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    post(
                      "https://cdn4.iconfinder.com/data/icons/basic-ui-2-line/32/shopping-bag-shop-paper-tote-256.png",
                      "متاجر",
                    ),
                    post(
                      "https://cdn1.iconfinder.com/data/icons/financial-45/23/coin-256.png",
                      "الرصيد",
                    ),
                    post(
                      "https://cdn2.iconfinder.com/data/icons/miscellaneous-31/60/truck-256.png",
                      "المندوب",
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      post3(
                        "https://www.gardengourmet.com/sites/default/files/recipes/aeead5804e79ff6fb98b2039619c5230_200828_MEDIAMONKS_GG_Spicytarian.jpg",
                        "Fire Fire",
                        "Fan of spicy dishes? Try this vegan Mexican inspired burger with jalapenos and our plant-based Garden Gourmet Sensational Burger. You will love it!",
                        "4.8",
                        "الطعم رائع جودة ممتازة و توصيل سريع",
                      ),
                      post3(
                        "https://www.foodtodayeg.com/Content/Upload/large/1202222132918847675546.jpg",
                        "chiken express",
                        "spicy,delicious and crunchy",
                        "4",
                        "سرعة التوصيل جيدة",
                      ),
                      post3(
                        "https://www.arhavirestaurantbatumi.com/wp-content/uploads/2021/05/classic-homemade-pizza-dough-close.jpg",
                        "Pizza Hot",
                        "just one pice , takeing your heart away ",
                        "4.9",
                        "متقنة الصنع و الجودة رائعة ",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Container post(String url ,String text){
    return Container(
      height: 150,
      width: 130,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage(url),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(text ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
  Container post3(String url ,String name, String desc,String rate ,String comment){
    return Container(
      padding: EdgeInsets.only(top: 10,left: 10,right: 10),
      height: 300,
      width: MediaQuery.of(context).size.width,
      //color: Colors.greenAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> burgerpage( url: url,restname: name , descrept:desc,
                    rate: rate, comment: comment),));
                },
                child:Container(
                  height: 150,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                    image: DecorationImage(image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 40,
                child:
                Icon(Icons.favorite_border,color: Colors.white,size: 35,),
              ),
              Positioned(
                bottom: -10,
                left: 40,
                child:
                Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey.withOpacity(0.4),
                  child:Center(
                    child: Text("1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(name,style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("\$ جميع الاوقات",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(width: 15,),
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.withOpacity(0.3),
                ),

                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("اكسب نقاط",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                    Icon(Icons.add_circle_outline,color: Colors.blue,),
                  ],
                ),
              ),
              SizedBox(width: 15,),
              Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.3),
                ),

                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(rate,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Icon(Icons.star,color: Colors.blue,),
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }

}
