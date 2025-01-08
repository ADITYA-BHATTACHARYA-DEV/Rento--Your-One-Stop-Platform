import  'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:task5/data/categories.dart';
import 'package:task5/data/products.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context)
  {
          final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xff151617),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff151617),
        foregroundColor: Colors.white,
        leading: IconButton(onPressed:() {},
         icon: const Icon(IconlyLight.search)),
         title: ActionChip(label: Text("Lucknow"),
         shape: StadiumBorder(),
         backgroundColor: Color(0xff272b30),
         labelStyle: TextStyle(color: Colors.white),

         avatar: Icon(IconlyLight.location, color: Colors.white),
         side:const BorderSide(width: 0),
         onPressed: () {},),
        actions: [
          IconButton(onPressed: () {}, 
            icon: Badge(
              backgroundColor: theme.colorScheme.primary,
              alignment: Alignment(1, -1.5),
              child: const Icon(IconlyLight.notification)             
          ),
          ),
          
        ],

      ),

    body: ListView(

      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Find the Best to Rent",
              style: theme.textTheme.headlineMedium?.copyWith(color:Colors.white),
              
              ),
            ],
          ),
        ),


        SizedBox(
          height: 90,
          child:ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              final category=categories[index];
              return Container(
                height:double.maxFinite,
                width: 90,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color:Colors.orange,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                
                
                 children: [
                  Image.asset(category.image,

                  width: 50,
                  ),

                       Text(      
                category.name,
               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),

                ),
                ],
         
              ),
              );
            }, 
            separatorBuilder: (context,index)=> const SizedBox(width: 15),
             itemCount:5) 
             ,),
        Container(
          margin:const EdgeInsets.only(top:10),
       constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height*0.7),
       decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top:Radius.circular(20)),
       ),

       child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(
              "Lease again",
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold
              )
            ),
            TextButton.icon(onPressed: () {}, 
            icon: const Text("View all"),
           label:
                 const Icon(IconlyLight.arrow_left_2),
            ),
            
          ],
        ),
        ),
     SizedBox(
        height:220,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left:16),
          itemBuilder:(context,index){
            final product =products[index];
return SizedBox(
width: 130,
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

Container(
  margin:const
   EdgeInsets.only(bottom: 10),
  width: double.maxFinite,
  height: 130,
  decoration: BoxDecoration(
    color: Colors.grey.shade100,
    borderRadius: BorderRadius.circular(20),
    image: DecorationImage(image: AssetImage(product.image),



  )
),
child: 
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(

    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 30,
        height: 30,
        child: IconButton.filledTonal(onPressed: () {},
         icon:Icon(
              Icons.favorite,
        ),
        padding: EdgeInsets.zero,
        iconSize: 18,
        ),
      ),



    const Row(
mainAxisSize: MainAxisSize.min,
children: [Icon(
  IconlyLight.star,
  size: 16,
  color: Colors.deepOrange,

),
SizedBox(
  width: 4,
),
Text("4.9"),
],

    )

      // Icon(IconlyLight.heart),
    ],
  ),
)
,
),

Padding(
  padding: const EdgeInsets.only(bottom: 5.0),
  child: Text(
    product.name,
    style: theme.textTheme.titleMedium
    ?.copyWith(
      fontWeight:FontWeight.bold, 
    ),
    maxLines: 2,
    overflow:TextOverflow.ellipsis,
  ),
),
//Location
//Price
Text.rich(
TextSpan(
  children:[ 
TextSpan(
  style: theme.textTheme.bodySmall?.copyWith(
    fontWeight: FontWeight.bold),
    text:"\Rs${product.price}",
),
    TextSpan(
      style: theme.textTheme.bodySmall?.copyWith(
        color: Colors.grey.shade600),
      text: " / hr ",
    )
  ],
  ),
),
  ],
),

);

          },
            separatorBuilder:(
          context, index
        )=>SizedBox(
          width: 15,
        ),
        itemCount:products.length,)

     ),

    Text("Available Now" ,

    style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    ),

Container(
margin: EdgeInsets.only(top:10),
padding: EdgeInsets.all(14),
decoration: BoxDecoration(
  color: theme.colorScheme.secondaryContainer.withOpacity(0.5),
  borderRadius: BorderRadius.circular(10),
),
child: Row(
  crossAxisAlignment:CrossAxisAlignment.start,
  
  children: [
Container(
  width:50,
  height: 50,
  margin: EdgeInsets.only(right: 15),
  padding: EdgeInsets.all(8),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
),
child: Image.asset(""),
),

Flexible(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text("Craftsman Cordless Drill ",
      style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      
      ),
    ),
    Row(children: [
      Icon(IconlyBold.location, size:16),
      Text("4.0km"),
      Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
      child:Text("\$5.00 /hr"),
      ),
      Icon(IconlyBold.star,
      size: 16, color: theme.colorScheme.primary),
      Text(
        "4.9",
        style: TextStyle(color: theme.colorScheme.primary),
      )
    ],
    )
  
  
  
  
  ]
  ,),
),
IconButton(onPressed: () {},icon: Icon(Icons.favorite)),


],)


)

  ],
),
        ),
      ],
),
    bottomNavigationBar: BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,

      type: BottomNavigationBarType.fixed,
      items: 
    [
      BottomNavigationBarItem(icon: Icon(IconlyLight.category),
      label: "Home",),

       BottomNavigationBarItem(icon: Icon(Icons.favorite),
      label: "Search"),
       BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_outlined),
      label: "Chat"),
       BottomNavigationBarItem(icon: Icon(IconlyLight.profile),
      label: "Home",),
    ],
    ),

   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   floatingActionButton: DecoratedBox(
    decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),

      boxShadow: [
        BoxShadow(
          color: theme.colorScheme.primary.withOpacity(0.5),
          spreadRadius: 5,
        ),
      ],
    ),
   child: FloatingActionButton(onPressed: () {},
   elevation:0,
   backgroundColor: theme.colorScheme.primary,
   foregroundColor: theme.colorScheme.onPrimary,
   child: Icon(Icons.add),
   )
   ),
     );

  }
}


