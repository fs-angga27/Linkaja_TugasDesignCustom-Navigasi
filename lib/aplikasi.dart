import 'package:bikin_apl/botnav.dart';
import 'package:flutter/material.dart';

class Aplicationn extends StatelessWidget {
  const Aplicationn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi"),
        backgroundColor: Colors.grey[90], // Adjusted to match dark color
      ),

      // body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(25),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Hi, user",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              "Your Balance",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            Text(
                              "Rp10.000.000",
                              
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              "Bonus Balance",
                              
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            Text(
                              "0",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // button topup
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // TopUp Icon and Label
                      Column(
                        children: const [
                          Icon(
                            Icons.add_circle_outline,
                          ),
                          Text("TopUp", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      // CashOut Icon and Label
                      Column(
                        children: const [
                          Icon(
                            Icons.download_outlined,
                          ),
                          SizedBox(height: 5),
                          Text("CashOut", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      // Send Money Icon and Label
                      Column(
                        children: const [
                          Icon(Icons.send, color: Colors.black),
                          SizedBox(height: 5),
                          Text("Send Money", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      // See All Icon and Label
                      Column(
                        children: const [
                          Icon(Icons.grid_view),
                          Text("See All", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Grid of icons (Pulsa/Data, Electricity, etc.)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                physics:
                    const NeverScrollableScrollPhysics(), // Disable scrolling inside GridView
                shrinkWrap: true, // Allows GridView to be inside a Column
                crossAxisCount: 4, // Number of items per row
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: const [
                  // Pulsa/Data
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone_iphone, size: 40, color: Colors.red),
                      SizedBox(height: 5),
                      Text("Pulsa/Data",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  // Electricity
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.flash_on, size: 40, color: Colors.red),
                      SizedBox(height: 5),
                      Text("Electricity",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  // Cable TV & Internet
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.tv, size: 40, color: Colors.red),
                      SizedBox(height: 5),
                      Text("Cable TV & Internet",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  // Mosque
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mosque, size: 40, color: Colors.red),
                      SizedBox(height: 5),
                      Text("Mosque",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  // Church
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.church, size: 40, color: Colors.red),
                      SizedBox(height: 5),
                      Text("Church",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  // Zakat
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.account_balance_wallet,
                          size: 40, color: Colors.red),
                      SizedBox(height: 5),
                      Text("Zakat",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  // Infaq
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.volunteer_activism,
                          size: 40, color: Colors.red),
                      SizedBox(height: 5),
                      Text("Infaq",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  // See All
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.more_horiz, size: 40, color: Colors.red),
                      SizedBox(height: 5),
                      Text("See All",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // botnavbar
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.blue,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.description_outlined), label: "History"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.qr_code_scanner), label: "Pay"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.email_outlined), label: "Inbox"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.account_box_outlined), label: "Profile"),
      //   ],
      // ),
      bottomNavigationBar: BottomNavbar(currentIndex: 0),
    );
  }
}
