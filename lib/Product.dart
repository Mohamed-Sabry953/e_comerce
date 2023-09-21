import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  static const String routeName = 'Product';

  Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<String> size = ['38', '39', '40', '41', '42'];
  List<Color> color = [
    Color(0xff2F2929),
    Color(0xffBC3018),
    Color(0xff0973DD),
    Color(0xff02B935),
    Color(0xff02B935)
  ];
  int selcetedSize = 0;
  int selcetedColor = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    'Product Details',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF06004E),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/images/Search.png'),
                        size: 20,
                        color:Color(0xFF06004E) ,
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      ImageIcon(
                        AssetImage('assets/images/cart.png'),
                        size: 20,
                      color:Color(0xFF06004E),),
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 16),
                width: 398,
                height: 250,
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(15),
                        child: Image(
                          image: AssetImage('assets/images/item.jpg'),
                          width: 398,
                          height: 250,
                          fit: BoxFit.fill,
                        )),
                    Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(
                            image: AssetImage('assets/images/saveicon.png'),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Spacer(),
                        Center(
                            child: Image(
                                image:
                                    AssetImage('assets/images/Category.png'))),
                        SizedBox(
                          height: 8,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 24.0, bottom: 13, right: 2, left: 2),
                child: Row(
                  children: [
                    Text('Nike Air Jordon',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF06004E),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        )),
                    Spacer(),
                    Text('EGP 3,500',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF06004E),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                      height: 34,
                      width: 102,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 0.5, color: Color(0x4C004182)),
                          borderRadius: BorderRadiusDirectional.circular(20)),
                      child: Center(
                        child: Text('3,230 Sold',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF06004E),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            )),
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFF4B400),
                    size: 20,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text('4.8 (7,500)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      )),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    width: 122,
                    height: 42,
                    decoration: BoxDecoration(
                        color: Color(0xff004182),
                        borderRadius: BorderRadiusDirectional.circular(20)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 6.0, top: 6, right: 20, left: 14),
                          child: Image(
                            image: AssetImage('assets/images/min.png'),
                          ),
                        ),
                        Text('1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 6.0, top: 6, right: 14, left: 19),
                          child: Image(
                            image: AssetImage('assets/images/plus.png'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text('Description',
                      style: TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories......Read more',
                    style: TextStyle(
                      color: Color(0x9906004E),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text('Size ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
              Container(
                margin: EdgeInsetsDirectional.all(8),
                width: double.infinity,
                height: 35,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 8,
                    );
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        selcetedSize = index;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 35,
                        height: 35,
                        decoration: ShapeDecoration(
                          color: selcetedSize == index
                              ? Color(0xff004182)
                              : Colors.white,
                          shape: OvalBorder(),
                        ),
                        child: Text(size[index]),
                      ),
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Row(
                children: [
                  Text('color ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF06004E),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsetsDirectional.all(8),
                width: double.infinity,
                height: 35,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 8,
                    );
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        selcetedColor = index;
                        setState(() {});
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: ShapeDecoration(
                          color: color[index],
                          shape: OvalBorder(),
                        ),
                        child: selcetedColor == index
                            ? Center(
                                child: Icon(
                                  Icons.done,
                                  color: Colors.white,
                                ),
                              )
                            : SizedBox(),
                      ),
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Total price',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0x9906004E),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text('EGP 3,500',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF06004E),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(onPressed: (){}, child: Row(
                    children: [
                      SizedBox(width: 10,),
                      ImageIcon(
                        AssetImage('assets/images/cart.png'),
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 24,),
                      Text(
                          'Add to cart',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,)),
                      SizedBox(width: 40,)
                    ],
                  ),style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF004182),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),)
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
