import 'package:card_swiper/card_swiper.dart';
import 'package:eventorganizerapp/utils/export_utils.dart';
import 'package:eventorganizerapp/widgets/categoryvendor_widget.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10.0),
            Text(
              "Vendor",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0.h),
            Container(
                padding: EdgeInsets.all(3.0.h),
                height: 280.h,
                width: double.infinity,
                child: Swiper(
                  scale: 0.95,
                  control: SwiperControl(
                      color: AppColorUtils.beigeBorderColor,
                      iconNext: Icons.arrow_circle_right_outlined,
                      iconPrevious: Icons.arrow_circle_left_outlined,
                      padding: EdgeInsets.only(
                          bottom: 110.0.h, left: 5.w, right: 5.w)),
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          width: 345.w,
                          height: 170.h,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: AppColorUtils.beigeBorderColor)),
                          child: Image.asset("assets/images/notfoundimage.jpeg",
                              fit: BoxFit.cover),
                        ),
                        Positioned(
                          top: 180.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Leni Priskilia MUA",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 5.0),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: AppColorUtils.locationCardHome,
                                        border: Border.all(
                                          width: 2,
                                          color: AppColorUtils
                                              .locationCardBorderHome,
                                        )),
                                    child: Row(children: const [
                                      Icon(Icons.location_on),
                                      Text("Medan")
                                    ]),
                                  ),
                                  const SizedBox(width: 10.0),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: AppColorUtils.roleHome,
                                        border: Border.all(
                                          width: 2,
                                          color: AppColorUtils.roleHomeBorder,
                                        )),
                                    child: Row(children: const [
                                      Icon(Icons.info),
                                      Text("Make Up Artist")
                                    ]),
                                  ),
                                ],
                              ),
                              Container(
                                width: 345.w,
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "neque iste harum odio soluta fugit earum ipsa nemo numquam, repellat rerum minus quo voluptas, ex dolor!",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontSize: 15.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: 3,
                )),
            SizedBox(height: 5.0.h),
            Text("Pilih Kategori Vendor",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold)),
            SizedBox(height: 20.0.h),
            Center(
                child: Wrap(
              runSpacing: 20.h,
              spacing: 20.w,
              children: List.generate(imagesVendor.length,
                  (index) => CategoryVendorWidget(image: imagesVendor[index])),
            )),
            SizedBox(height: 30.0.h),
            Text("Acara Yang Akan Datang",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0.h),
            Container(
                height: 245.h,
                padding: EdgeInsets.symmetric(vertical: 5.h),
                width: double.infinity,
                child: Swiper(
                  viewportFraction: 0.94,
                  scale: 0.99,
                  outer: true,
                  curve: Curves.bounceInOut,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          height: 100.h,
                          width: 310.w,
                          decoration: const BoxDecoration(),
                          child: Image.asset("assets/images/notfoundimage.jpeg",
                              fit: BoxFit.cover),
                        ),
                        Positioned(
                          top: 110.h,
                          left: 4.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.date_range_rounded),
                                  const SizedBox(width: 10.0),
                                  Text(
                                    "02 Februari 2023",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(3.0.h),
                                width: 310.w,
                                child: Text(
                                    "Indonesian Wedding Festival Fiesta",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(fontWeight: FontWeight.bold)),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.location_on_rounded),
                                  Text(
                                    "Tiara Convention Center",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "RSVP",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                  const SizedBox(width: 20.0),
                                  OutlinedButton(
                                      onPressed: () {},
                                      child: const Text("Lihat Details"))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  itemCount: 3,
                )),
          ],
        ),
      ),
    ));
  }
}
