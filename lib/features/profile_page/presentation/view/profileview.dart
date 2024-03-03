import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ticketapp/config/const/const.dart';
import 'package:ticketapp/core/utils/button.dart';
import 'package:ticketapp/core/utils/circularprofileimage.dart';
import 'package:ticketapp/core/utils/sizebox.dart';
import 'package:ticketapp/core/utils/text.dart';
import 'package:ticketapp/core/utils/textfield.dart';
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
            
                Container(
                  width: 430.08,
                  height: 250.42,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      end: Alignment(-1.00, -0.05),
                      begin: Alignment(1, 0.05),
                      colors: [Color(0xFF0F75BC), Color(0xFF25AAE1)],
                    ),
                  ),
                  alignment: Alignment.topRight,
                  // child: Image.asset(
                  //   AppImages.topdot,
                  // ),
                ),
                Positioned(
                  top: 20,
                  child: Column(
                    children: [
                      Stack(
                        fit: StackFit.loose,
                        children: [
                          CircularProfileImage(
                            radius: 55,
                            image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                            ),
                          ),
                          Positioned(
                            top: 100,
                            left: MediaQuery.of(context).size.width / 2 - 135,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: ShapeDecoration(
                                  gradient: LinearGradient(
                                    end: Alignment(-0.97, 0.25),
                                    begin: Alignment(0.97, -0.25),
                                    colors: [
                                      Color(0xFF0F75BC),
                                      Color(0xFF25AAE1)
                                    ],
                                  ),
                                  shape: CircleBorder(),
                                ),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
            
                      SizedBox(
                        height: 10,
                      ),
            
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Basanta Adhikari",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Icon(
                                  Icons.verified,
                                  size: 18,
                                  color: Colors.green.shade600,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  size: 18,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Ktm",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone_outlined,
                                  size: 18,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                 'mobile_number',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.email_outlined,
                                  size: 18,
                                  color: Colors.black,
                                ),
            
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'email',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 60,
                              thickness: 5,
                              color: Color(0xfff4f4f4),
                            )
                          ],
                        ),
                      ),
            
                      // SizedBox(width:,),
                    ],
                  ),
                ),
                
              ],
            ),
           SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                ),
                // height: 123,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Edit Profile",style: TextStyle(fontSize: 20,color: Colors.white),),
                      leading: Icon(Icons.menu_book_sharp,size: 25,color: Colors.white,),
                      trailing: Text("",style: TextStyle(fontSize: 15,color: Colors.white)),
                    ),
                    ListTile(
                      title: Text("Notification",style: TextStyle(fontSize: 20,color: Colors.white),),
                      leading: Icon(Icons.notifications_off,size: 25,color: Colors.white,),
                      trailing: Text("ON",style: TextStyle(fontSize: 15,color: Colors.blue)),
                    ),
                    ListTile(
                      title: Text("Language",style: TextStyle(fontSize: 20,color: Colors.white),),
                      leading: Icon(Icons.transcribe_outlined,size: 25,color: Colors.white,),
                      trailing: Text("English",style: TextStyle(fontSize: 15,color: Colors.blue)),
                    ),
                  ],
                ),
                // width: 123,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                ),
                // height: 123,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Security",style: TextStyle(fontSize: 20,color: Colors.white),),
                      leading: Icon(Icons.security,size: 25,color: Colors.white,),
                      trailing: Text("",style: TextStyle(fontSize: 15,color: Colors.white)),
                    ),
                    ListTile(
                      title: Text("Theme",style: TextStyle(fontSize: 20,color: Colors.white),),
                      leading: Icon(Icons.nightlight_outlined,size: 25,color: Colors.white,),
                      trailing: Text("Light mode",style: TextStyle(fontSize: 15,color: Colors.blue)),
                    ),

                  ],
                ),
                // width: 123,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                ),
                // height: 123,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Help & Support",style: TextStyle(fontSize: 20,color: Colors.white),),
                      leading: Icon(Icons.person,size: 25,color: Colors.white,),
                      trailing: Text("",style: TextStyle(fontSize: 15,color: Colors.white)),
                    ),
                    ListTile(
                      title: Text("Contact us",style: TextStyle(fontSize: 20,color: Colors.white),),
                      leading: Icon(Icons.format_quote,size: 25,color: Colors.white,),
                      trailing: Text("",style: TextStyle(fontSize: 15,color: Colors.white)),
                    ),
                    ListTile(
                      title: Text("Privacy policy",style: TextStyle(fontSize: 20,color: Colors.white),),
                      leading: Icon(Icons.policy,size: 25,color: Colors.white,),
                      trailing: Text("",style: TextStyle(fontSize: 15,color: Colors.white)),
                    ),
                  ],
                ),
                // width: 123,
              ),
            ),
            SizedBox(height: 123,)
          ],
        ),
      ),
    );
  }
}
