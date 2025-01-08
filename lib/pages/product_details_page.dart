import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task5/data/products.dart';

class ProductDetailsPage extends StatefulWidget{

const ProductDetailsPage({
  super.key, required this. product
});
    final Product product;
@override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
  }

  class _ProductDetailsPageState extends State<ProductDetailsPage>{

    int activeIndex=0;
    @override
    Widget build (BuildContext context)
    {
      final theme =Theme.of(context);
      return  Scaffold(
          appBar: AppBar(
              title: Text(widget.product.name),
              titleTextStyle: theme.textTheme.titleLarge?.
              copyWith(fontWeight: FontWeight.bold),
              centerTitle: true,
              actions: [
                Padding(padding: 
                const EdgeInsets.only(right: 8.0),
                child: IconButton.filledTonal(onPressed: () {},icon: Icon(Icons.favorite),
                style: IconButton.styleFrom(foregroundColor: theme.colorScheme.primary),
                ),
                ),
              ],
         ),
         body: ListView(
          padding: EdgeInsets.only(top:15),
          children: [
            SizedBox(
              height: 250,
              child: PageView.builder(
                itemCount:3,
                onPageChanged: (value){

                    setState(() {
                      activeIndex=value;
                    });
                },
                itemBuilder: 
             ( context, index)
            
            {
              return Container(
                height: 250,
                margin:const EdgeInsets.symmetric(horizontal: 16),
                width: double.maxFinite,
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                 color: Colors.grey.shade100,
                 borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(
                 image: AssetImage(widget.product.image),
                                   
                 ),
                ),

              child: 
               Row(children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                     borderRadius: BorderRadius.circular(10)),
                  
                  child:
                  
            const Row(children: [
                   Icon(

                    IconlyLight.location,
                    size: 16,
                    color: Colors.white,
                   ),
           Text(
            "4.0 km",
            style: TextStyle(color:Colors.white),
           ),
                  ],
                  ),
                   
                  ),

                Container(

                  margin:  const EdgeInsets.symmetric(horizontal:10),
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(10)),

                    child: Text("Available", style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  ),
              Icon(
                IconlyBold.star,
                size: 18,
                color: theme.colorScheme.primary,
              ),
              SizedBox(width:4),
              Text(
                "4.9",
                style: TextStyle(
                  color: theme.colorScheme.primary, fontWeight:FontWeight.bold),
                )
              ]         
              )
              );
            },
            ),
            ),

      SizedBox(height:10),
        Center(
        child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: 3,
            effect: WormEffect(dotHeight: 10,dotWidth: 10, dotColor: Colors.grey.shade300,


        )

        )
        ),
    




          ],
         ),
      );
    }
  }