import 'package:aaroha/components/app_bar.dart';
import 'package:aaroha/components/app_drawer1.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({super.key});

  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  late Razorpay _razorpay;
  TextEditingController amtController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }

  void openCheckout(int amount) async {
    amount = amount * 100; // Convert to paise
    var options = {
      'key': 'rzp_test_1DP5mmOlF5G5ag',
      'amount': amount,
      'name': 'Geeks for Geeks',
      'prefill': {
        'contact': '8839253625',
        'email': 'rakshithinduja@gmail.com'
      },
      'external': {
        'wallets': ['paytm']
      }
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  void handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
      msg: "Payment Successful: ${response.paymentId}",
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  void handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
      msg: "Payment Failed: ${response.code}",
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  void handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
      msg: "External Wallet: ${response.walletName}",
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  @override
  void dispose() {
    _razorpay.clear();
    amtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.setpibX2H3TqF96kuefOsQAAAA&pid=Api&P=0&h=180'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withAlpha(230), // Adjust opacity for faded effect
              BlendMode.darken,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: "Donate",
                titleTheme: Theme.of(context).textTheme.titleLarge,
                iconColor: Theme.of(context).colorScheme.primary,
              ),
              Padding(
                padding: EdgeInsets.all(16.0), // Increased padding for better spacing
                child: TextFormField(
                  cursorColor: Colors.black,
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Enter Amount to be paid',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder( // Added focused border style
                      borderSide: BorderSide(color: Colors.green, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder( // Added enabled border style
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                  ),
                  controller: amtController,
                ),
              ),
              SizedBox(height: 20), // Added space between text field and button
              ElevatedButton(
                onPressed: () {
                  if (amtController.text.isNotEmpty) {
                    try {
                      int amount = int.parse(amtController.text);
                      openCheckout(amount);
                    } catch (e) {
                      Fluttertoast.showToast(
                        msg: "Invalid amount entered",
                        toastLength: Toast.LENGTH_SHORT,
                      );
                    }
                  }
                },
                child: Text('Make Payment'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Increased button padding
                  textStyle: TextStyle(fontSize: 18), // Increased font size
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

