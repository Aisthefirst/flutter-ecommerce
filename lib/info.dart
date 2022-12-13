import 'package:ecommer/models/person_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ecommer/http_model.dart';
import 'package:ecommer/navbar.dart';
import 'package:get/get.dart';
import 'data.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  var controller = Get.put(HttpModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Founder Tidar`s Patisseries',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.amber,
        ),
        endDrawer: NavDrawer(),
        body: Obx(() => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: controller.model!.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  final Datashop shop = datashop[index];
                  return ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text('${controller.model!.data![index].firstName}'),
                    subtitle: Text(shop.price),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          controller.model!.data![index].avatar.toString()),
                    ),
                  );
                },
              )));
  }
}
