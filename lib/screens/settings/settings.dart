import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tourismapp/screens/available_miles/available_miles.dart';

class Settings extends StatefulWidget {
   Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int select=0;
  late Size mediaSize;


  @override
  Widget build(BuildContext context) {
    mediaSize=MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            select=index;
          });
        },
        currentIndex: select,
        selectedItemColor: HexColor('#043082'),
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.heart,
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.category,
              ),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/Images/settings/Profile.png'),
              label: 'Account'),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AvailableMiles(),
            ),
          );
        },
        child: Icon(Icons.qr_code),
        backgroundColor: HexColor('#043082'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      appBar: AppBar(
        backgroundColor: HexColor('#043082'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/Images/settings/whatsapp.png', // Replace with the actual path to your WhatsApp image asset
              width: 30,
              height: 30,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/Images/settings/menu.png', // Replace with the actual path to your WhatsApp image asset
            width: 30,
            height: 30,
          ),
        ),
        centerTitle: true,
        title: Text('ExtraMiles',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: mediaSize.width,
              height: mediaSize.height/5 ,
              decoration: BoxDecoration(
                color: HexColor('#043082'),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),),
              child:Column(
                children: [
                  SizedBox(height: mediaSize.height/80,)
                  ,Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Available Miles',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                      SizedBox(width: mediaSize.width/35,),
                      Text('10,865',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),

                    ],),
                  SizedBox(height:  mediaSize.height/35,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...iconList,

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaSize.height/25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: mediaSize.height/13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: HexColor('#f0e9e9'),
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(
                              'assets/Images/settings/wallet.png', // Replace with the actual path to your arrow image asset
                              color: HexColor('#043082'),
                              width: 22,
                              height: 22,
                            )
                            ,
                          ),
                          Text(
                            'How to use miles',
                            style: TextStyle(
                              color: HexColor('#043082'),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: mediaSize.width/40),
                          Icon(Icons.arrow_forward_ios, color: HexColor('#043082'), size: 12),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: mediaSize.width/40), // Adjust the spacing between the two containers
                  Expanded(
                    child: Container(
                      height: mediaSize.height/13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: HexColor('#f0e9e9'),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(
                              'assets/Images/settings/hand.png', // Replace with the actual path to your arrow image asset
                              color: HexColor('#043082'),
                              width: 22,
                              height: 22,
                            ),
                          ),
                          Text(
                            'How to earn miles',
                            style: TextStyle(
                              color: HexColor('#043082'),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: mediaSize.width/40),
                          Icon(Icons.arrow_forward_ios, color: HexColor('#043082'), size: 12),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaSize.height/45,),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 5),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: mediaSize.height/3.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:AssetImage('assets/Images/settings/ttt.png'),
                            colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.99), BlendMode.dstATop),
                            fit: BoxFit.cover,
                            )
                        ),

                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: mediaSize.width/1.2 ,
                              height: mediaSize.height/20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: HexColor('#f0e9e9'),
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Book Now',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,top: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Resort',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                SizedBox(height: mediaSize.height/40,),
                                Text(
                                  'Habtoor Grand',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20,top: 40),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: mediaSize.width/6,
                                height: mediaSize.height/20,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('discount',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),),
                                    Text('50%',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),),

                                  ],
                                ),
                              )
                          ),

                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: mediaSize.height/45,),
            Center(
              child: Text('Partners',style: TextStyle(color: HexColor('#043082'),fontWeight: FontWeight.bold,fontSize: 16),),),
            SizedBox(height: mediaSize.height/50,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...iconListWithoutText,

                ],
              ),
            ),
            SizedBox(height: mediaSize.height/20,),


          ],),
      ),

    );
  }
}
class IconWithText extends StatelessWidget {
  final String imagePath;
  final String text;

  IconWithText({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset(
                imagePath,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class IconWithOutText extends StatelessWidget {
  final String imagePath;

  IconWithOutText({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 35,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.asset(
            imagePath,
          ),
        ),
      ),
    );
  }
}
List<Widget> iconList = [
  IconWithText(text: 'Special Offers', imagePath: 'assets/Images/settings/sale.png',),
  IconWithText(text: 'Hotels', imagePath: 'assets/Images/settings/hotels.png',),
  IconWithText(text: "Insurance", imagePath: 'assets/Images/settings/note.png',),
  IconWithText(text: 'Restaurant', imagePath: 'assets/Images/settings/restrunt.png',),
  IconWithText(text: 'Shopping', imagePath: 'assets/Images/settings/shop.png',),
  // Add more icons as needed
];
List<Widget> iconListWithoutText = [
  IconWithOutText(imagePath: 'assets/Images/settings/emflag.png'),
  IconWithOutText(imagePath: 'assets/Images/settings/isem.png'),
  IconWithOutText(imagePath: 'assets/Images/settings/book.png'),
  IconWithOutText(imagePath: 'assets/Images/settings/book.png'),
  IconWithOutText(imagePath: 'assets/Images/settings/emmm.png'),

];
