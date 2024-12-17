import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/models/data.dart';
import 'package:flutter_application_1/screen/shop/widgets/searchbox.dart';
import 'package:flutter_application_1/screen/shop/widgets/sort_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '/models/product.dart';

class shopscreen extends StatefulWidget {
  const shopscreen({super.key});

  @override
  State<shopscreen> createState() => _shopscreenState();
}

class _shopscreenState extends State<shopscreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Scaffold(
      appBar: PreferredSize(preferredSize:Size.fromHeight(80), child: 
      SafeArea(child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/logosft.png",fit: BoxFit.cover,
          width: 115,),
          Icon(Icons.shopping_cart_outlined,color: Colors.orange,size:30 ,)
        ],
      ))
     
      ,),
      body: Padding(padding: EdgeInsets.symmetric(horizontal:15 ),
      child: SingleChildScrollView(
        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
         
         
          children: [
            SizedBox(height: size.height*0.02,),
            Row(
              children: [
                searchbox(),
                sort_button()
              ],
            ),
            SizedBox(height:size.height*0.02,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CarouselSlider(items:  carouselImage.map((i){
              return Builder(builder:((context)=>Image.asset(i)));

            }
            ).toList(), options: CarouselOptions(
              viewportFraction: 1,

              height: size.height*0.23,
              autoPlay: true,
            
            )
            ),
            
           
            ),
             SizedBox(height:size.height*0.02,
            ),
            SizedBox(
              height: size.height*0.04,
              width:double.infinity,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                
                  var cat=categories[index];
                
                  return Card(
                    child: Container(
                      width: 90,
                      child: Padding(padding: EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Image.asset(cat.image),
                          Flexible(child: Text(cat.title))
                        ],
                      ),
                      )
                    ),
                  );
                },
              ), 
            ),
            SizedBox(
              height: size.height*0.02,
            ),
            Text("New Arrival",style: TextStyle(fontSize:20 ),),
             SizedBox(
              height: size.height*0.02,
            ),
           Flexible(child: GridView.builder(
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: size.height*0.34
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,

              itemCount:products.length,
              itemBuilder: (BuildContext context, int index) {
                var run=products[index];
                return Card(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Container(
                          color: const Color(0xFFFFF0CD),
                          height: size.height*0.2,
                          margin: EdgeInsets.all(8),
                          child: Image.asset(run.images),
                        ),
                        Text(run.name),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(run.price.toString()),
                            Text(run.oldPrice.toString(),style: TextStyle(decoration: TextDecoration.lineThrough),)
                          ],
                        )
                      ],
                    ),
                    
                  ),

                );
              },
            ), )
          ],
        ),
      ),
      ),
      
      

    );
  }
} 