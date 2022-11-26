import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui_shopping_apps/core.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          size: 24.0,
        ),
        backgroundColor: const Color(0xff06AB8D),
        title: Text(
          "Home",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        actions: [
          const Icon(
            Icons.message,
            size: 24.0,
            color: Colors.white,
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
                  color: Colors.white,
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
                  color: Colors.white,
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
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 129.0,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xff06AB8D),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24.3),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 24.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 15.39,
                          ),
                          Text(
                            "St 394 Jackson, New york  United Status",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.23,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 12.0,
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[400]!,
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 21.0,
                          ),
                          Expanded(
                            child: TextFormField(
                              initialValue: null,
                              decoration: InputDecoration.collapsed(
                                filled: true,
                                fillColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                hintText: "Search product here",
                                hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  color: const Color(0xff5F6E7C),
                                ),
                              ),
                              onFieldSubmitted: (value) {},
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.search),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1800.0,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 19.26,
                    ),
                    SizedBox(
                      height: 80.0,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: SizedBox(
                          height: 80.0,
                          child: ListView.builder(
                            itemCount: GroceryServices.menuCategory.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              var item = GroceryServices.menuCategory[index];
                              return Container(
                                margin: const EdgeInsets.only(
                                  left: 22.27,
                                ),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                        "${item['image']}",
                                        width: 30.0,
                                        height: 30.0,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.74,
                                    ),
                                    Text("${item['name']}",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 13,
                                        )),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 19.0,
                    ),
                    SizedBox(
                      height: 120.0,
                      child: SizedBox(
                        height: 80.0,
                        child: ListView.builder(
                          itemCount: GroceryServices.banner.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var item = GroceryServices.banner[index];
                            return Container(
                              height: 120.0,
                              width: 250,
                              margin: const EdgeInsets.only(
                                left: 28.0,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "$item",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    16.0,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 26.22,
                    ),
                    Container(
                      height: 20.0,
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text(
                            "New Produck",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "See All",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff1CB069)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13.87,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 5,
                                crossAxisSpacing: 2,
                                childAspectRatio: 160.06 / 190.42),
                        itemCount: GroceryServices.products.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          var item = GroceryServices.products[index];
                          double discount = (item['price'] * 10) / 100;
                          double totalDiscount = item['price'] - discount;
                          return InkWell(
                            onTap: () {
                              print("dilik");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProductView(
                                          item: item,
                                        )),
                              );
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: const BoxDecoration(
                                color: Color(0xffFFFDFD),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 97.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "${item['photo']}",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 11.35,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 11.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("${item['product_name']}",
                                            style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            )),
                                        const SizedBox(
                                          height: 8.65,
                                        ),
                                        Row(
                                          children: [
                                            Text("${item['category']}",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      const Color(0xff8B9E9E),
                                                )),
                                            const Spacer(),
                                            const Icon(
                                              Icons.star,
                                              size: 14.0,
                                              color: Colors.orange,
                                            ),
                                            Text("4.5",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black,
                                                )),
                                            const SizedBox(
                                              width: 22.0,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 13.2,
                                        ),
                                        Row(
                                          children: [
                                            Text("${item['price']}",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      const Color(0xff02A88A),
                                                )),
                                            const SizedBox(
                                              width: 6.66,
                                            ),
                                            Text("$totalDiscount",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color:
                                                      const Color(0xffF25822),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
        ],
      ),
    );
  }
}
