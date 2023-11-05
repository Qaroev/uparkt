import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController date = TextEditingController();
  bool tiltGesturesEnabled = true;
  bool zoomGesturesEnabled = true;
  bool rotateGesturesEnabled = true;
  bool scrollGesturesEnabled = true;
  bool modelsEnabled = true;
  bool nightModeEnabled = false;
  bool fastTapEnabled = false;
  bool mode2DEnabled = false;
  bool indoorEnabled = false;
  bool liteModeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/location.svg',
                  width: 32.77,
                  height: 32.77,
                ),
                const Text(
                  'Санкт-Петербург',
                  style: TextStyle(
                    color: Color(0xFF32174A),
                    fontSize: 23.21,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              'assets/svg/notification.svg',
              width: 32.77,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                'Привет, Константин!',
                style: TextStyle(
                  color: Color(0xFF270F3C),
                  fontSize: 35.50,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.37,
                ),
              ),
              const SizedBox(height: 33),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 57.97,
                      decoration: ShapeDecoration(
                        color: const Color(0x598E85EA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.65),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Авто',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19.11,
                          fontFamily: 'Actor',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 57.97,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1.33, color: Color(0x7F8E85EA)),
                          borderRadius: BorderRadius.circular(13.32),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Мотоцикл /вело',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.11,
                          fontFamily: 'Actor',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 58.97,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1.33, color: Color(0x7F8E85EA)),
                          borderRadius: BorderRadius.circular(13.32),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Кладовка',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.65,
                          fontFamily: 'Actor',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 28),
              Container(
                width: 468.31,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFCFCFC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.65),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 13.65,
                      offset: Offset(0, 1.37),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 28),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1.37, color: Color(0x7F6F23D1)),
                          borderRadius: BorderRadius.circular(6.83),
                        ),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Страна, город или отель",
                          labelStyle: TextStyle(color: Color(0x993C3C43)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1.37, color: Color(0x7F6F23D1)),
                          borderRadius: BorderRadius.circular(6.83),
                        ),
                      ),
                      child: TextFormField(
                        onTap: () async {
                          DateTime? dateTime = DateTime(1900);
                          FocusScope.of(context).requestFocus(FocusNode());

                          dateTime = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          date.text = dateTime!.toIso8601String();
                        },
                        controller: date,
                        decoration: InputDecoration(
                            labelText: "Даты заезда и выезда",
                            labelStyle:
                                const TextStyle(color: Color(0x993C3C43)),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            suffixIcon: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1.37, color: Color(0x7F8E85EA)),
                                  borderRadius: BorderRadius.circular(13.65),
                                ),
                              ),
                              padding: const EdgeInsets.all(13),
                              child: SvgPicture.asset('assets/svg/filter.svg'),
                            )),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 57.97,
                            decoration: ShapeDecoration(
                              color: const Color(0x598E85EA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.65),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Бокс',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19.11,
                                fontFamily: 'Actor',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 57.97,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1.33, color: Color(0x7F8E85EA)),
                                borderRadius: BorderRadius.circular(13.32),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Открытая',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.11,
                                fontFamily: 'Actor',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 58.97,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1.33, color: Color(0x7F8E85EA)),
                                borderRadius: BorderRadius.circular(13.32),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Паркинг',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.65,
                                fontFamily: 'Actor',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 38),
                    Text(
                      'Стоимость общая',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.58,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0.05,
                        letterSpacing: -0.68,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Image.asset('assets/svg/img.png')
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 57.97,
                      decoration: ShapeDecoration(
                        color: Color(0xFF4F0FA0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.92),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'На Карте',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.11,
                          fontFamily: 'Actor',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 57.97,
                      decoration: ShapeDecoration(
                        color: Color(0x7F8E85EA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.92),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Списком',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.11,
                          fontFamily: 'Actor',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Image.asset('assets/svg/img_1.png'),
              // YandexMap(
              //   nightModeEnabled: true,
              //   mapType: MapType.vector,
              //   tiltGesturesEnabled: tiltGesturesEnabled,
              //   zoomGesturesEnabled: zoomGesturesEnabled,
              //   rotateGesturesEnabled: rotateGesturesEnabled,
              //   scrollGesturesEnabled: scrollGesturesEnabled,
              //   modelsEnabled: modelsEnabled,
              //   fastTapEnabled: fastTapEnabled,
              //   mode2DEnabled: mode2DEnabled,
              //
              //   logoAlignment: const MapAlignment(
              //       horizontal: HorizontalAlignment.left,
              //       vertical: VerticalAlignment.bottom),
              //   onMapCreated: (YandexMapController controller) async {
              //     await controller.moveCamera(
              //       CameraUpdate.newCameraPosition(
              //         const CameraPosition(
              //           target: Point(
              //             latitude: 63.201805,
              //             longitude: 75.450938,
              //           ),
              //         ),
              //       ),
              //       animation: const MapAnimation(
              //           type: MapAnimationType.smooth, duration: 2.0),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }

  Widget bottomBar() {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          iconButton(
            'assets/svg/search.svg',
            'Поиск ',
          ),
          iconButton(
            'assets/svg/reserv.svg',
            'Брони ',
          ),
          iconButton(
            'assets/svg/profile.svg',
            'Профиль',
          ),
        ],
      ),
    );
  }

  iconButton(image, name) {
    return Column(
      children: [
        IconButton(
          enableFeedback: false,
          onPressed: () {},
          icon: SvgPicture.asset(
            image,
            width: 50,
            height: 50,
          ),
        ),
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF2F0B09),
            fontSize: 11,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0.12,
          ),
        )
      ],
    );
  }
}
