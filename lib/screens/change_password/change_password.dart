import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tourismapp/screens/settings/settings.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}
late Size mediaSize;

class _ChangePasswordState extends State<ChangePassword> {

  @override
  Widget build(BuildContext context) {
    mediaSize=MediaQuery.of(context).size;
    return  Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage
          (image: const AssetImage("assets/Images/change_password/phone.png")
        ,fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.9), BlendMode.dstATop),
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Positioned(child: buildBottom(context),bottom: 0,)
        ],),
      ),
    );
  }
}
Widget buildBottom(context){
  return  SizedBox(
    width: mediaSize.width,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )
      ),
      child: buildForm(context),
    ),
  );

}

Widget buildForm(context){
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: mediaSize.height/15,),
      Text(
        'Change password',
        style: TextStyle(fontSize: 14,
          color:HexColor('#043082'),fontWeight: FontWeight.bold),
      ),
      SizedBox(height:  mediaSize.height/20,),
      Text(
        'Please enter the code we just sent to your',
        style: TextStyle(fontSize: 14,
            color:HexColor('#043082'),fontWeight: FontWeight.w600),
      ),
      SizedBox(height: mediaSize.height/90,),
      Text(
        'WhatsApp number...',
        style: TextStyle(fontSize: 14,
            color:HexColor('#043082'),fontWeight: FontWeight.w600),
      ),
      SizedBox(height: mediaSize.height/45,),
      Text(
        '+963*******68',
        style: TextStyle(fontSize: 14,
            color:HexColor('#043082'),fontWeight: FontWeight.bold),
      ),
      SizedBox(height: mediaSize.height/30,),
      Form(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: mediaSize.height/11.5,width: mediaSize.width/6,
            child: Container(
              height: mediaSize.height/15,
              width:  mediaSize.width/12,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.8),
                    width: 0.5
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),),
            SizedBox(height: mediaSize.height/11.5,width: mediaSize.width/6,
              child: Container(
                height: mediaSize.height/15,
                width:  mediaSize.width/12,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.8),
                        width: 0.5
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),),
            SizedBox(height: mediaSize.height/11.5,width: mediaSize.width/6,
              child: Container(
                height: mediaSize.height/15,
                width:  mediaSize.width/12,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.8),
                        width: 0.5
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),),
            SizedBox(height: mediaSize.height/11.5,width: mediaSize.width/6,
              child: Container(
                height: mediaSize.height/15,
                width:  mediaSize.width/12,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.8),
                        width: 0.5
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),),
          ],
        ),
      )),
      SizedBox(height: mediaSize.height/15,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Didn\'nt receive any message?',
            style: TextStyle(fontSize: 14,
                color:HexColor('#043082'),fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              'Resend',
              style: TextStyle(fontSize: 14,
                  color:HexColor('#043082'),fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      SizedBox(height: mediaSize.height/40,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: mediaSize.width/3,
                height: mediaSize.height/15.5,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color:HexColor('#5094f2'),
                ),
                child: MaterialButton(onPressed: (){},
                  child: Text('Back',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                )),
            SizedBox(width: mediaSize.width/80,),
            Container(
              width: mediaSize.width / 2,
              height: mediaSize.height / 15.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor('#043082'),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settings(),
                    ),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: mediaSize.height/20,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Stack(
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                height: mediaSize.height/15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.green, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: mediaSize.height/15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white, // Set your background color here
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Images/settings/whatsapp.png', // Replace with the actual path to your WhatsApp image asset
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(width: mediaSize.width/15),
                    Text('For help via WhatsApp', style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),


      SizedBox(height: mediaSize.height/20,),

      

    ],);

}
