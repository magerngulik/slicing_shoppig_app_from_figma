import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../core.dart';

class DetailProductView extends StatefulWidget {
  Map? item;
  DetailProductView({this.item, Key? key}) : super(key: key);

  @override
  State<DetailProductView> createState() => _DetailProductViewState();
}

class _DetailProductViewState extends State<DetailProductView> {
  var selected = 0;
  Map item = {
    "photo":
        "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "product_name": "Frenzy Pizza",
    "price": 25,
    "category": "Food",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  };

  List selectColor = [
    "Green",
    "Black",
    "Silver",
    "Blue",
  ];

  String selectedColor = "";

  @override
  Widget build(BuildContext context) {
    var menu = ["Details", "Review"];

    double discount = (widget.item!['price'] * 10) / 100;
    double totalDiscount = widget.item!['price'] - discount;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Dashboard"),
        leading: const Icon(
          Icons.arrow_back,
          size: 24.0,
          color: Colors.black,
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
          Stack(
            children: const [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.shopping_cart_outlined,
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
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 265.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "${widget.item!['photo']}",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 27.12,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25.0,
              ),
              child: Text(
                "${widget.item!['product_name']}",
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "\$$discount",
                  style: GoogleFonts.poppins(
                      color: const Color(0xff02A88A),
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 28.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 24.0,
                ),
                Text(
                  "${widget.item!['category']}",
                  style: GoogleFonts.poppins(
                      fontSize: 11, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 11.0,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.orange,
                    ),
                    const Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.orange,
                    ),
                    const Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.orange,
                    ),
                    const Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.orange,
                    ),
                    const Icon(
                      Icons.star,
                      size: 15.0,
                      color: Colors.orange,
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      "5.0",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  "\$${widget.item!['price']}",
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: const Color(0xffF25822),
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.lineThrough),
                ),
                const SizedBox(
                  width: 28.0,
                ),
              ],
            ),
            const SizedBox(
              height: 33.0,
            ),
            Container(
              height: 40,
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(menu.length, (index) {
                  var item = menu[index];
                  return InkWell(
                    onTap: () {
                      selected = index;

                      setState(() {});
                    },
                    child: Container(
                      height: 100.0,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(item,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 12)),
                          const Spacer(),
                          (selected == index)
                              ? Container(
                                  height: 2.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff01A688),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            Container(
              height: 250.0,
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              decoration: const BoxDecoration(),
              child: IndexedStack(index: selected, children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 22.0,
                      ),
                      const SizedBox(
                        height: 128,
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "),
                      ),
                      SizedBox(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Color",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            SizedBox(
                              height: 40.0,
                              child: ListView.builder(
                                itemCount: selectColor.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  var itemColor = selectColor[index];
                                  return Container(
                                    width: 66.0,
                                    height: 36,
                                    padding: const EdgeInsets.all(10.0),
                                    margin: const EdgeInsets.only(right: 5.0),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                      border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xffC0C8C7),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "$itemColor",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 11.0,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var item = {};
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                                ),
                              ),
                              const SizedBox(
                                width: 13.0,
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Arnold Cuan",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          size: 14.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.0,
                                          color: Colors.orange,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    SizedBox(
                                      height: 32,
                                      width: 288,
                                      child: Expanded(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 93.85,
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              height: 27.0,
              width: 88,
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    width: 27.51,
                    height: 27.51,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          9.0,
                        ),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xffC0C8C7),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "-",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 27.51,
                    height: 27.51,
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  Container(
                    width: 27.51,
                    height: 27.51,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          9.0,
                        ),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xffC0C8C7),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CardScreenView()),
                  );
                },
                child: const Text("Add to cart"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
