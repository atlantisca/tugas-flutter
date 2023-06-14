import 'package:flutter/material.dart';


const bgColor = Color(0xff232227);
var btnColor = Color.fromARGB(255, 244, 67, 54);
var shadowColor = Colors.black.withOpacity(0.4);

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          leading: const Icon(Icons.sort_rounded, color: Colors.white),
          actions: const [
            Icon(Icons.search, color: Colors.white),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),

        bottomNavigationBar: Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(5,(index) {
              var iconList =[Icons.email, Icons.favorite, Icons.home, Icons.notifications, Icons.person];
              return Transform.scale(
                scale: 1.2,
                child: CircleAvatar(
                  backgroundColor: btnColor = Colors.transparent,
                  radius: index == 2 ? 30 : 20 ,
                  child: Icon(
                    iconList[index],
                    color: Colors.white, 
                  ),
                )
              );
            }),
          ),
        ),
    
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              textWidget(text: "Atlantis Online Shop", size: 32, color: Colors.white),
              textWidget(text: "Bayar ditempat", size: 18, color: Colors.white.withOpacity(0.5)),
              const SizedBox(height: 12),
              TabBar(
                indicatorColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                tabs: [
                  Tab(text: "Kaos"),
                  Tab(text: "Sepatu"),
                  Tab(text: "Jaket"),
                  Tab(text: "Celana"),
                ],
              ),
              Expanded(
                  child: TabBarView(children: [
                Padding( //kaos
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, 
                        childAspectRatio: 0.78, 
                        mainAxisExtent: 220,
                        crossAxisSpacing: 12, 
                        mainAxisSpacing: 12
                      ),
                      itemCount: 4,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: bgColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4), blurRadius: 8, spreadRadius: 1),
                            ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/kaos$index.jpeg', 
                                width: 120, 
                                height: 120,
                              ),
                              textWidget(size: 16, text: "Kaos Vintage", color: Colors.white),
                              const SizedBox(height: 10),
                              textWidget(size: 16, text: "Rare Item", color: Colors.white.withOpacity(0.5)),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  textWidget(size: 16, text: "Rp 150.000", color: Colors.white),
                                  const Icon(Icons.shopping_cart_checkout_rounded, color: Colors.white,)
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                ),
                Padding( //sepatu
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, 
                        childAspectRatio: 0.78, 
                        mainAxisExtent: 220,
                        crossAxisSpacing: 12, 
                        mainAxisSpacing: 12
                      ),
                      itemCount: 4,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: bgColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4), blurRadius: 8, spreadRadius: 1),
                            ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/sepatu$index.jpeg', 
                                width: 120, 
                                height: 120,
                              ),
                              textWidget(size: 16, text: "Sepatu Adidas", color: Colors.white),
                              const SizedBox(height: 10),
                              textWidget(size: 16, text: "Rare Item", color: Colors.white.withOpacity(0.5)),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  textWidget(size: 16, text: "Rp 1.500.000", color: Colors.white),
                                  const Icon(Icons.shopping_cart_checkout_rounded, color: Colors.white,)
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                ),
                Padding( //jaket
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, 
                        childAspectRatio: 0.78, 
                        mainAxisExtent: 220,
                        crossAxisSpacing: 12, 
                        mainAxisSpacing: 12
                      ),
                      itemCount: 4,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: bgColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4), blurRadius: 8, spreadRadius: 1),
                            ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/jaket$index.jpeg', 
                                width: 120, 
                                height: 120,
                              ),
                              textWidget(size: 16, text: "Jaket Outdoor", color: Colors.white),
                              const SizedBox(height: 10),
                              textWidget(size: 16, text: "Rare Item", color: Colors.white.withOpacity(0.5)),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  textWidget(size: 16, text: "Rp 450.000", color: Colors.white),
                                  const Icon(Icons.shopping_cart_checkout_rounded, color: Colors.white,)
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                ),
                Padding(  //celana
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, 
                        childAspectRatio: 0.78, 
                        mainAxisExtent: 220,
                        crossAxisSpacing: 12, 
                        mainAxisSpacing: 12
                      ),
                      itemCount: 4,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: bgColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4), blurRadius: 8, spreadRadius: 1),
                            ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/celana$index.jpeg', 
                                width: 120, 
                                height: 120,
                              ),
                              textWidget(size: 16, text: "Celana Jeans", color: Colors.white),
                              textWidget(size: 16, text: "Rare Item", color: Colors.white.withOpacity(0.5)),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  textWidget(size: 16, text: "Rp 250.000", color: Colors.white),
                                  const Icon(Icons.shopping_cart_checkout_rounded, color: Colors.white,)
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                ),
              ])),
            ],
          ),
        ),
      ),
    );
  }

  Widget textWidget({text, required double size, color}){
      return Text(
        "$text", 
        style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}