import 'package:finance_app/Theme/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 20, 28, 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/iconMenu.png'),
                        width: 34,
                        height: 34,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image(
                          image: AssetImage('assets/profile.jpg'),
                          width: 34,
                          height: 34,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    'Welcome back,',
                    style: TextStyle(
                      color: wsubtitle,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Afiv Dicky Efendy',
                    style: TextStyle(
                      color: wtitle,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    width: 319,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Color(0xffF1C4A4),
                      image: DecorationImage(
                        image: AssetImage('assets/BG.png'),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Balance',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Rp1.000.000,00',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 48,
                          ),
                          Text('111 222 333 444')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    'Transaction History',
                    style: TextStyle(
                        fontSize: 14,
                        color: wtitle,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  DefaultTabController(
                    length: 2,
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff21252F)),
                        borderRadius: BorderRadius.circular(35),
                        color: Color(0xff2B303C),
                      ),
                      child: TabBar(
                          labelColor: Colors.black,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white),
                          unselectedLabelColor: Colors.white,
                          tabs: [
                            Tab(text: "Expense"),
                            Tab(text: "Income"),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.35,
              minChildSize: 0.35,
              builder: (context, scrollController) => Container(
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/md.png'),
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'McDonald\'s',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '- Rp124.000,00',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Spacer(),
                            Text(
                              '10.00 am',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: wsubtitle),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
