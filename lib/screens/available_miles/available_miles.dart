import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:tourismapp/screens/change_password/change_password.dart';

class AvailableMiles extends StatefulWidget {
  const AvailableMiles({super.key});

  @override
  State<AvailableMiles> createState() => _AvailableMilesState();

}

class _AvailableMilesState extends State<AvailableMiles> {
  late Size mediaSize;

  @override
  Widget build(BuildContext context) {
    mediaSize=MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(onPressed: (){
            Navigator.of(context).pop(); // Navigate back to the previous screen

          }, icon: Icon(Icons.arrow_back,color: HexColor('#043082'),)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(onPressed: (){}, icon: Icon(BoxIcons.bxl_whatsapp,color: Colors.green,size: 30,)),
          ),
        ],
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.white,
                  width:mediaSize.width,
                  height: mediaSize.height/5,
                  child: Center(
                      child: Image.asset('assets/Images/emr.png')),
                ),
              ),
              SizedBox(height: mediaSize.height/40,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Membership No',style: TextStyle(color: HexColor('#043082')),),
                    Text('2134124134',style: TextStyle(color: HexColor('#043082'),fontWeight: FontWeight.bold),)

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Available Miles',style: TextStyle(color: HexColor('#043082')),),
                    Text('3000',style: TextStyle(color: HexColor('#043082'),fontWeight: FontWeight.bold),)

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles available after transfer',style: TextStyle(color: HexColor('#043082')),),
                    Text('2000',style: TextStyle(color: HexColor('#043082'),fontWeight: FontWeight.bold),)

                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 15)
                ,child:
                Container(
                  width: mediaSize.width,
                  height: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),),
              Padding(padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 15)
                ,child: Text('Enter the total miles you wish to transfer',style: TextStyle(color: HexColor('#043082'),fontWeight: FontWeight.bold),)
),
              Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 15)
                  ,child: Text('from',style: TextStyle(color: HexColor('#043082'),fontSize: 12),
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: mediaSize.height/15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Image.asset(
                                'assets/Images/available_miles/smile.png',
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text(
                                '1000',
                                style: TextStyle(
                                  color: HexColor('#043082'),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(Icons.currency_exchange,color: HexColor('#043082'),),
                    ),

                    Expanded(
                      child: Container(
                        height: mediaSize.height/15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Image.asset(
                                'assets/Images/available_miles/emrr.png', // Replace 'your_image.png' with the actual path to your image asset
                                width: 50,
                                height: 30,
                                fit: BoxFit.cover,
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text(
                                '1000',
                                style: TextStyle(
                                  color: HexColor('#043082'),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 25)
                  ,child: Text('terms of use',style: TextStyle(color: HexColor('#043082'),fontWeight: FontWeight.bold),)
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10,top: 15),
                child: Text('Please note thar once the transfer is approved, Miles will no longer be available or refundable.',style: TextStyle(color: HexColor('#043082'),
                height: 2,),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10,top: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.circle_outlined, size: 10, color: HexColor('#043082')),
                    ),
                    Text(
                      'I have carefully read and agreed to the terms and conditions.',
                      style: TextStyle(
                        color: HexColor('#043082'),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
                child: Container(
                  width: mediaSize.width ,
                  height: mediaSize.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#043082'),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangePassword(),
                        ),
                      );
                    },
                    child: Text(
                      'Transfer',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),









            ],
          ),
        ),
      ),
    );
  }
}
