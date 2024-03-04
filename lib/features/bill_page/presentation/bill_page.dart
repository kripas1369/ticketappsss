import 'package:flutter/material.dart';
import 'package:ticketapp/core/utils/button.dart';
import 'package:ticketapp/features/seats_page/data/booking_service.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

class BillPage extends StatefulWidget {
  String title;
  String desc;
  String image;

  String price;
   BillPage({super.key,required this.title,required this.desc, required this.price, required this.image});

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  String referenceId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black12,),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage:NetworkImage("${widget.image}"),
              radius: 100,
            ),
          ),
          SizedBox(height: 80,),
          Card(
            child: Container(
              width: 350,
              height: 120,
              color: Colors.black12,
              child:Column(
                children: [
                  Text("Title: ${widget.title}",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                  Text("Desc: ${widget.desc}"),
                  Text("Price: Rs.${widget.price}"),
                ],
              ),
            ),
          ),
          SizedBox(height: 50,),
          DefaultButton(
            text: "Submit",
            press: (){
              payWithKhaltiInApp();
              createMovie(context, name:widget.title, price: widget.price, details: widget.desc, time:widget.desc);
            },
          )
        ],
      ),
    );
  }
  payWithKhaltiInApp() {
    KhaltiScope.of(context).pay(
      config: PaymentConfig(
        amount: 1000, //in paisa
        productIdentity: 'Product Id',
        productName: 'Product Name',
        mobileReadOnly: false,
      ),
      preferences: [
        PaymentPreference.khalti,

      ],
      onSuccess: onSuccess,
      onFailure: onFailure,
      onCancel: onCancel,
    );
  }

  void onSuccess(PaymentSuccessModel success) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Payment Successful'),

          actions: [
            SimpleDialogOption(
                child: const Text('OK'),
                onPressed: () {
                  setState(() {
                    referenceId = success.idx;
                  });

                  Navigator.pop(context);
                })
          ],
        );
      },
    );
  }

  void onFailure(PaymentFailureModel failure) {
    debugPrint(
      failure.toString(),
    );
  }

  void onCancel() {
    debugPrint('Cancelled');
  }
}