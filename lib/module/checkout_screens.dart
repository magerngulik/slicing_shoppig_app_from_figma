import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../core.dart';

class CheckoutScreenView extends StatefulWidget {
  const CheckoutScreenView({Key? key}) : super(key: key);

  @override
  State<CheckoutScreenView> createState() => _CheckoutScreenViewState();
}

class _CheckoutScreenViewState extends State<CheckoutScreenView> {
  List dataCheckout = [
    {
      "photo":
          "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "product_name": "Frenzy Pizza",
      "price": 25,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://i.ibb.co/mHtmhmP/photo-1521305916504-4a1121188589-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "product_name": "Beef Burger",
      "price": 22,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
  ];

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9F1F5),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Checkout",
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 24.0,
            color: Colors.black,
          ),
        ),
        actions: [
          const Icon(
            Icons.message_outlined,
            size: 24.0,
            color: Colors.black,
          ),
          const SizedBox(
            width: 23.0,
          ),
          Stack(
            children: const [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.notifications_outlined,
                  size: 30.0,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 8,
                right: 0,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 23.0,
          ),
          const SizedBox(
            width: 23.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 24.0,
              ),
              Container(
                height: 115.99,
                width: 335,
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shipping Address",
                        style: GoogleFonts.poppins(
                            fontSize: 13, fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 90.0,
                      width: 335,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Domen Tikoro Street:  825 Baker Avenue, Dallas,Texas, Zip code  75202",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.normal)),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text("Change address",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xff01A688))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 204.75,
                width: 335,
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Summary Item",
                        style: GoogleFonts.poppins(
                            fontSize: 13, fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 180.0,
                      width: 335,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            dataCheckout.length,
                            (index) {
                              var item = dataCheckout[index];
                              return ListTile(
                                leading: Container(
                                  height: 60.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "${item['photo']}",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text("${item['product_name']}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                                subtitle: Text("\$${item['price']}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xff02A88A),
                                        fontWeight: FontWeight.normal)),
                                trailing: Text("Quantity 1",
                                    style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        color: const Color(0xffBABEBF),
                                        fontWeight: FontWeight.normal)),
                              );
                            },
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 70.99,
                width: 335,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70.0,
                      width: 335,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Enter Coupon Code",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xffBABEBF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal)),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Spacer(),
                          Container(
                            width: 102,
                            height: 32,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.0,
                                  color: const Color(0xff01A688),
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                color:
                                    const Color(0xff01A688).withOpacity(0.1)),
                            child: Center(
                              child: Text("USE Coupon",
                                  style: GoogleFonts.poppins(
                                      fontSize: 9.22,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff01A688))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 180,
                width: 335,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Summary Order",
                        style: GoogleFonts.poppins(
                            fontSize: 13, fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 120.99,
                      width: 335,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text("Delivery Fee",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xff516971),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal)),
                              const Spacer(),
                              Text("\$4,00",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xff516971),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Text("Subtotal",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xff516971),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal)),
                              const Spacer(),
                              Text("\$1,468.20",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xff516971),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Text("Total",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xff516971),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal)),
                              const Spacer(),
                              Text("\$1,00",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xff516971),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 116.44,
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              32.0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Total Payment",
                    style: GoogleFonts.poppins(
                        color: const Color(0xff516971),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
                Text("\$1,480.20",
                    style: GoogleFonts.poppins(
                        color: const Color(0xff02A88A),
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 185.29,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFB039),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(62), // <-- Radius
                    ),
                  ),
                  onPressed: () async {
                    isLoading = true;
                    print(isLoading);
                    setState(() {});
                    Future.delayed(
                      const Duration(seconds: 3),
                      () async {
                        isLoading = false;
                        setState(() {});
                        print(isLoading);
                        await showDialog<void>(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              actions: <Widget>[
                                Container(
                                  height: 430.0,
                                  width: 335,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 108.0,
                                        width: 108,
                                        margin: const EdgeInsets.only(
                                            top: 61.0,
                                            left: 90,
                                            right: 90,
                                            bottom: 45),
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              16.0,
                                            ),
                                          ),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/icon-succes-transaction.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text("Your order has been successfull",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500)),
                                      const SizedBox(
                                        height: 25.0,
                                      ),
                                      Text(
                                          "we will contact the seller so that it can be sent immediately to the destination",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: const Color(0xff516971),
                                              fontWeight: FontWeight.w500)),
                                      const SizedBox(
                                        height: 35.0,
                                      ),
                                      SizedBox(
                                        width: 280,
                                        height: 50,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xffFFB039),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        50), // <-- Radius
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const HomeScreenView()),
                                              );
                                            },
                                            child: const Text("oke")),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  },
                  child: (isLoading != false)
                      ? const CircularProgressIndicator()
                      : const Text("Continue")),
            ),
          ],
        ),
      ),
    );
  }
}
