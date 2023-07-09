import 'package:flutter/material.dart';


class WeatherDetail extends StatefulWidget {
  const WeatherDetail({Key? key}) : super(key: key);

  @override
  State<WeatherDetail> createState() => _WeatherDetailState();
}

class _WeatherDetailState extends State<WeatherDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff331C71),
       body: SafeArea(
         child: Padding(
           padding: const EdgeInsets.only(left: 22.0,right: 22.0),
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   InkWell(
                     onTap: (){
                     Navigator.pop(context);
                     },
                     child: Container(
                       height: 40,
                       width: 40,
                       decoration: BoxDecoration(
                         color: Color(0xff5842A9),
                         borderRadius: BorderRadius.circular(12),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Icon(Icons.arrow_back,color: Colors.white,)
                       ),
                     ),
                   ),
                   Text('7 days',style: TextStyle(
                       fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17
                   ),),
                   Container(
                     height: 40,
                     width: 40,
                     decoration: BoxDecoration(
                       color: Color(0xff5842A9),
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child:Image(color: Colors.white,
                             image: AssetImage('images/assets/icons/dots (1).png')),
                     ),
                   )
                 ],
               ),
               SizedBox(
                 height: 20,
               ),
               Container(
                 height: 320,
                 width: 400,
                 decoration: BoxDecoration(
                   color: Color(0xff5842A9),
                   borderRadius: BorderRadius.circular(15),
                 ),
                 child: Column(
                   children: [
                     Stack(
                       children: [
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Image(height:150,
                                   image: AssetImage('images/assets/icons/cloudy (1).png')),
                             ),
                             Column(
                               children: [
                                 Text('Tomorrow',style: TextStyle(fontSize: 18,color: Colors.white),),
                                  SizedBox(height: 15,),
                                  Text('Mostly cloudy',style: TextStyle(fontSize: 18,color: Colors.white),)
                               ],
                             )
                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 70.0,top: 100.0),
                           child: Text('19°',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 70),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 140.0,top: 140.0),
                           child: Text('  /15°',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                         )
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 22.0,left: 13.0),
                           child: Column(
                             children: [
                               Image(
                                   height:30,
                                   image: AssetImage('images/assets/icons/protection.png')),
                               Text('30°',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                               Text('Precipition',style: TextStyle(fontSize: 16,color: Colors.white),),

                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 22.0,left: 13.0),
                           child: Column(
                             children: [
                               Image(
                                   height:30,
                                   image: AssetImage('images/assets/icons/drop.png')),
                               Text('20°',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                               Text('Humidity',style: TextStyle(fontSize: 16,color: Colors.white),),

                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 22.0,left: 13.0,right: 8),
                           child: Column(
                             children: [
                               Image(
                                   height:30,
                                   image: AssetImage('images/assets/icons/wind.png')),
                               Text('9 km/hr',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                               Text('Wind speed',style: TextStyle(fontSize: 16,color: Colors.white),),

                             ],
                           ),
                         )
                       ],
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Monday      ',style: TextStyle(color: Colors.white),),

                   Row(
                     children: [
                       Image(
                         height: 40,
                           image: AssetImage('images/assets/icons/cloudy.png')),
                       SizedBox(width: 10,),
                       Text('Windy',style: TextStyle(color: Colors.green),)
                     ],

                   ),
                   Text('+22°',style: TextStyle(color: Colors.white),),
                   Text('+18',style: TextStyle(color: Colors.white),)
                 ],
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Tuesday     ',style: TextStyle(color: Colors.white),),

                   Row(
                     children: [
                       Image(
                           height: 40,
                           image: AssetImage('images/assets/icons/cloud.png')),
                       SizedBox(width: 10,),
                       Text('Cloudy',style: TextStyle(color: Colors.green),)
                     ],

                   ),
                   Text('+25°',style: TextStyle(color: Colors.white),),
                   Text('+20',style: TextStyle(color: Colors.white),)
                 ],
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Wednesday',style: TextStyle(color: Colors.white),),

                   Row(
                     children: [
                       Image(
                           height: 40,
                           image: AssetImage('images/assets/icons/cloudy (1).png')),
                       SizedBox(width: 10,),
                       Text('Rainy',style: TextStyle(color: Colors.green),)
                     ],

                   ),
                   Text('+22°',style: TextStyle(color: Colors.white),),
                   Text('+18',style: TextStyle(color: Colors.white),)
                 ],
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Thursday    ',style: TextStyle(color: Colors.white),),

                   Row(
                     children: [
                       Image(
                           height: 40,
                           image: AssetImage('images/assets/icons/cloudy (2).png')),
                       SizedBox(width: 10,),
                       Text('Sunny',style: TextStyle(color: Colors.green),)
                     ],

                   ),
                   Text('+25°',style: TextStyle(color: Colors.white),),
                   Text('+15',style: TextStyle(color: Colors.white),)
                 ],
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Friday         ',style: TextStyle(color: Colors.white),),

                   Row(
                     children: [
                       Image(
                           height: 40,
                           image: AssetImage('images/assets/icons/sunny.png')),
                       SizedBox(width: 10,),
                       Text('Sunny',style: TextStyle(color: Colors.green),)
                     ],

                   ),
                   Text('+25°',style: TextStyle(color: Colors.white),),
                   Text('+20',style: TextStyle(color: Colors.white),)
                 ],
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Saturday    ',style: TextStyle(color: Colors.white),),

                   Row(
                     children: [
                       Image(
                           height: 40,
                           image: AssetImage('images/assets/icons/raining.png')),
                       SizedBox(width: 10,),
                       Text('Rainy',style: TextStyle(color: Colors.green),)
                     ],

                   ),
                   Text('+20°',style: TextStyle(color: Colors.white),),
                   Text('+15',style: TextStyle(color: Colors.white),)
                 ],
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Saturday    ',style: TextStyle(color: Colors.white),),

                   Row(
                     children: [
                       Image(
                           height: 40,
                           image: AssetImage('images/assets/icons/raining.png')),
                       SizedBox(width: 10,),
                       Text('Rainy',style: TextStyle(color: Colors.green),)
                     ],

                   ),
                   Text('+20°',style: TextStyle(color: Colors.white),),
                   Text('+15',style: TextStyle(color: Colors.white),)
                 ],
               ),

             ],
           ),
         ),
       ),
    );
  }
}
