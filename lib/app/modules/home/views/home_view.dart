import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hai, Fauzi Rizky Mauladani",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "0203161046 - Teknik Informatika",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(controller.imageUser),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Indeks Prestasi ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        const Text("Semester 5  ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            )),
                        Row(
                          children: [
                            Obx(
                              () => controller.isIPK == false
                                  ? const Text("3.51",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                                  : const Text(
                                      "*,**",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                            ),
                            Obx(
                              () => IconButton(
                                  onPressed: () {
                                    controller.isIPK.value =
                                        !controller.isIPK.value;
                                  },
                                  icon: controller.isIPK.value == true
                                      ? const Icon(
                                          Icons.remove_red_eye_sharp,
                                          color: Colors.white,
                                          size: 20,
                                        )
                                      : const Icon(
                                          Icons.remove_red_eye_sharp,
                                          color: Colors.white,
                                          size: 20,
                                        )),
                            )
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Seluruh Semster >",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_none,
                                color: Colors.blueGrey,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Notifikasi",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.qr_code_2,
                                color: Colors.blueGrey,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Scan QR",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Wrap(
                spacing: 40,
                runSpacing: 20,
                children: [
                  menuCenter(
                    Icon(Icons.today),
                    "Home",
                  ),
                  menuCenter(
                    Icon(Icons.email),
                    "Pesan",
                  ),
                  menuCenter(
                    Icon(Icons.book_rounded),
                    "Repositori",
                  ),
                  menuCenter(
                    Icon(Icons.shield),
                    "Presensi",
                  ),
                  menuCenter(
                    Icon(Icons.account_balance_wallet),
                    "UKT",
                  ),
                  menuCenter(
                    Icon(Icons.file_copy),
                    "Catatan",
                  ),
                  menuCenter(
                    Icon(Icons.show_chart_rounded),
                    "Transkrip",
                  ),
                  menuCenter(
                    Icon(Icons.more_horiz),
                    "Lainnya",
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jadwal Hari Ini ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: () {}, child: Text("Lihat Semua"))
                  ],
                )),
            Container(
              height: 150,
              child: PageView.builder(
                controller: controller.scoll,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blueGrey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 7, color: Colors.blueGrey),
                                shape: BoxShape.circle),
                            child: const Text(
                              "8.20",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sistem Informasi",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "Ruangan B.3.1 ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Dosen : Fauzi Rizky Mauladani S.Kom",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: controller.scoll,
              count: 6,
              axisDirection: Axis.horizontal,
              effect: WormEffect(
                  spacing: 8.0,
                  radius: 10.0,
                  dotWidth: 20.0,
                  dotHeight: 10.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.blueGrey),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Informasi Kuliah ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Flexible(
                        child: Text(
                      "Beasiswa Magang Bersertifikat di Perusahan BUMN",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
                    Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios)),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

Widget menuCenter(Icon icon, String name) {
  return Column(
    children: [
      Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.blueGrey, borderRadius: BorderRadius.circular(15)),
          child: IconButton(onPressed: () {}, icon: icon)),
      SizedBox(height: 5),
      Text(name)
    ],
  );
}
