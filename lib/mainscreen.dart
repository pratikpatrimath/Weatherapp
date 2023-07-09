import 'package:flutter/material.dart';
import 'package:weather/7daysweather/weather1.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5842A9),
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff331C71),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(
                              color: Colors.white,
                              image: AssetImage('images/assets/icons/menu1.png')),
                        ),
                      ),
                      Text('Mumbai',style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17
                      ),),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff331C71),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.refresh,color: Colors.white,)
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  'Mostly sunny',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Stack(
                  children: const [
                    Text(
                      '25°',
                      style: TextStyle(
                          fontSize: 150,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Opacity(opacity: 0.7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0,top: 70.0),
                      child: Image(
                          height: 150,
                          image: AssetImage('images/assets/icons/sunny.png')),
                    ),)
                  ],
                ),
                const Text(
                  "Saturday, 21 December | 10.00 AM",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xff331C71),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 8.0),
                          child: Column(
                            children: [
                              Image(
                                   height:40,
                                  image: AssetImage('images/assets/icons/protection.png')),
                              Text('30°',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('Precipition',style: TextStyle(fontSize: 16,color: Colors.white),),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 8.0),
                          child: Column(
                            children: [
                              Image(
                                  height:40,
                                  image: AssetImage('images/assets/icons/drop.png')),
                              Text('20°',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('Humidity',style: TextStyle(fontSize: 16,color: Colors.white),),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 8.0),
                          child: Column(
                            children: [
                              Image(
                                  height:40,
                                  image: AssetImage('images/assets/icons/wind.png')),
                              Text('9 km/hr',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('Wind speed',style: TextStyle(fontSize: 16,color: Colors.white),),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Today',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17),),
                    InkWell(onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> WeatherDetail()));
                        },
                        child: Text('7- Day Forcasts',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17),)),
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xff331C71),
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Center(child: Text('10 AM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                              Image(
                                  height:40,
                                  image: AssetImage('images/assets/icons/cloud.png')),

                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Center(child: Text('23°',style: TextStyle(fontSize: 16,color: Colors.white),)),
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 13,),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xff331C71),
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Center(child: Text('11 AM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                              Image(
                                  height:40,
                                  image: AssetImage('images/assets/icons/cloudy.png')),

                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Center(child: Text('20°',style: TextStyle(fontSize: 16,color: Colors.white),)),
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 13,),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xff331C71),
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Center(child: Text('12 AM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                              Image(
                                  height:40,
                                  image: AssetImage('images/assets/icons/cloudy (1).png')),

                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Center(child: Text('29°',style: TextStyle(fontSize: 16,color: Colors.white),)),
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 13,),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xff331C71),
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Center(child: Text('1 PM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                              Image(
                                  height:40,
                                  image: AssetImage('images/assets/icons/cloudy (2).png')),

                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Center(child: Text('16°',style: TextStyle(fontSize: 16,color: Colors.white),)),
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 13,),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xff331C71),
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Center(child: Text('10 AM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                              Image(
                                  height:40,
                                  image: AssetImage('images/assets/icons/cloud.png')),

                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Center(child: Text('23°',style: TextStyle(fontSize: 16,color: Colors.white),)),
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 13,),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xff331C71),
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Center(child: Text('10 AM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                              Image(
                                  height:40,
                                  image: AssetImage('images/assets/icons/cloud.png')),

                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Center(child: Text('23°',style: TextStyle(fontSize: 16,color: Colors.white),)),
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 13,),
                      Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xff331C71),
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Center(child: Text('10 AM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                              Image(
                                  height:40,
                                  image: AssetImage('images/assets/icons/cloud.png')),

                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Center(child: Text('23°',style: TextStyle(fontSize: 16,color: Colors.white),)),
                              ),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Other cities',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17),),
                    Text('+',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color(0xff331C71),
                          borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            Image(
                                height:40,
                                image: AssetImage('images/assets/icons/cloud.png')),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const[
                                  Center(child: Text('Pune',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                                  Text('Wind',style: TextStyle(fontSize: 16,color: Colors.white),),
                                ],
                              ),
                            ),
                            Center(child: Text('20°',style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,color: Colors.white),)),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color(0xff331C71),
                          borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            Image(
                                height:40,
                                image: AssetImage('images/assets/icons/raining.png')),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const[
                                  Center(child: Text('Solapur',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                                  Text('Raining',style: TextStyle(fontSize: 16,color: Colors.white),),
                                ],
                              ),
                            ),
                            Center(child: Text('15°',style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,color: Colors.white),)),

                          ],
                        ),
                      ),
                    ),
                        ],
                      ),
                    ),
                  ],
            ),
          ),
        ),
      ),
    );
  }
}
