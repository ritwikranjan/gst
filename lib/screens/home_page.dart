import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst/controllers/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(220),
          child: Container(
            padding: const EdgeInsets.all(12),
            height: 220,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: Get.back,
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'GST Profile',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'GST Number of the Tax Payer',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'GSTIN: ${controller.user.id}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          controller.user.name,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.arrow_drop_down_circle,
                                size: 8,
                                color: Colors.green,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                controller.user.status,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(24.0),
              padding: const EdgeInsets.all(12.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.green,
                      ),
                      SizedBox(width: 8),
                      Text('Place of Business'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 30),
                      Text(controller.user.address),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'State Jurisdiction',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Uttar Pradesh',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Center Jurisdiction',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'India',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tax Payer Type',
                          style: TextStyle(fontSize: 10),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 100,
                          child: Center(
                            child: Text(
                              controller.user.taxPayerType,
                              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(24.0),
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Condition of Business',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    controller.user.businessType,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(24.0),
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Date of Registration',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${controller.user.dateOfRegistration.day}/${controller.user.dateOfRegistration.month}/${controller.user.dateOfRegistration.year}',
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
