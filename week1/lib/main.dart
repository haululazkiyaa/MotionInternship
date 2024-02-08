import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      size: 40,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Icon(
                      Icons.favorite,
                      size: 40,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 380,
                  height: 400,
                  child: Image.asset("assets/images/coffee.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Chocolate Frappuccino",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Text(
                      "\$20.00",
                      style: TextStyle(
                        color: Color(0xFF00623B),
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                  style: TextStyle(
                    color: Color(0xFF6D6D6D),
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                  style: TextStyle(
                    color: Color(0xFF6D6D6D),
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondRoute(),
                      ),
                    );
                  },
                  child: Text(
                    'Add to bag',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 46),
                    backgroundColor: Color(0xFF00623B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     color: Color(0xFF00623B),
                //   ),
                //   padding: EdgeInsets.symmetric(vertical: 16),
                //   width: double.infinity,
                //   child: Center(
                //     child: Text(
                //       "Add To Bag",
                //     style: TextStyle(
                //       color: Color(0xFFFFFFFF),
                //       fontSize: 22,
                //     ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      size: 40,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Icon(
                      Icons.ios_share,
                      size: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFAAAAAA).withOpacity(0.2),
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: Image.asset("assets/images/ic-success.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Transaksi Berhasil',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Rp. 58,000',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 1.0,
                          width: double.infinity,
                          color: Color(0xFFAAAAAA).withOpacity(0.2),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Invoice Number",
                              style: TextStyle(
                                color: Color(0xFF000000).withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "000085752257",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tanggal Transaski",
                              style: TextStyle(
                                color: Color(0xFF000000).withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "16 Juni 2023",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jenis Pembayaran",
                              style: TextStyle(
                                color: Color(0xFF000000).withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "QRIS",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFAAAAAA).withOpacity(0.2),
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Detail Pesanan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jenis Pesanan",
                              style: TextStyle(
                                color: Color(0xFF000000).withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "2x Frappucino - Monte",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nama Pemesan",
                              style: TextStyle(
                                color: Color(0xFF000000).withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Asep Knalpot",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Pesanan",
                              style: TextStyle(
                                color: Color(0xFF000000).withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Rp. 58,000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Download E - Ticket',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 46),
                    backgroundColor: Color(0xFF00623B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
