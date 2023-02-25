import 'package:flutter/material.dart';
import 'package:cart2/controller/shoppingcontroller.dart';
import 'package:get/get.dart';
import 'package:cart2/controller/cartController.dart';


 class shoppingPage extends StatelessWidget {
   // const shoppingPage({Key? key}) : super(key: key);
   final Shopcontroller= Get.put(shopController()) ;
   final cartController = Get.put(CartController());

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
         children: [
           Expanded(
             child: GetX<shopController>(

               builder: (controller){
                 return ListView.builder(
                   itemCount: controller.products.length,
                   itemBuilder: (context,index){

                     return Card(
                       margin: EdgeInsets.all(12),
                       child: Padding(
                         padding: EdgeInsets.all(16),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Text('${controller.products[index].productName}',
                                       style: TextStyle(fontSize:24 ),
                                       
                                     ),



                                   ]


                                 ),
                                 Text('${controller.products[index].price}',
                                   style: TextStyle(fontSize: 24),
                                 )

                               ],
                             ),
                             TextButton(onPressed: (){
                               cartController.addToCart(
                                   controller.products[index]
                                    );
                             },
                                 child: Text("add to cart"))

                           ],
                         ),
                       ),
                     );
                   },

                 );
               }



             )


           ),
         ],
       ),
       floatingActionButton: FloatingActionButton.extended(
           onPressed: (){},
           backgroundColor: Colors.deepPurple,
           icon: Icon(Icons.shopping_cart),
           label: GetX<CartController>(
             builder: (controller)=> Text(controller.count.toString(),
                 style: TextStyle(
                   fontSize: 24
                 ),
               ),
           )),
     );
   }
 }
 