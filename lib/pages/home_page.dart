import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/utils/my_button.dart';
import 'package:wallet_ui/utils/my_card.dart';
import 'package:wallet_ui/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 32,
                color: Colors.blue[200],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                size: 32,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //AppBar
                  Row(
                    children: const [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            //cards
            SizedBox(
              height: 180,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 1532.15,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 23,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 5250.20,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 23,
                    color: Colors.green[300],
                  ),
                  MyCard(
                    balance: 5250.20,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 23,
                    color: Colors.pink[300],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),

            const SizedBox(height: 20),

            //3 buttons => send, pay, bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyButton(
                    iconImagePath: "lib/icons/send.png",
                    buttonText: "Send",
                  ),
                  MyButton(
                    iconImagePath: "lib/icons/pay.png",
                    buttonText: "Pay",
                  ),
                  MyButton(
                    iconImagePath: "lib/icons/bill.png",
                    buttonText: "Bills",
                  ),
                ],
              ),
            ),

            Column(
              children: const [
                //statistics
                MyListTile(
                  iconImagePath: "lib/icons/statistics.png",
                  titleName: "Statistics",
                  titleSubName: "Payments and Income",
                ),

                //transactions
                MyListTile(
                  iconImagePath: "lib/icons/transaction.png",
                  titleName: "Trancations",
                  titleSubName: "Transaction History",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
