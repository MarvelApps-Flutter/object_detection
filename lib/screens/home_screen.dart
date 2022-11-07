import 'package:flutter/material.dart';
import 'package:object_detection/constants/app_constants.dart';
import '../models/list_model.dart';
import 'object_detector_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Image.asset(
                    AppConstants.imgString,
                    width: 100,
                    height: 70,
                  ),
                  Text(
                   AppConstants.objects,
                    style: TextStyle(
                        fontFamily: AppConstants.inter,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  SizedBox(height: 40,),
                  Text(AppConstants.knowObjects,
                   style: TextStyle(
                        fontFamily: AppConstants.inter,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black)
                  ),
                  SizedBox(height: 20,),
                  Text(AppConstants.objectName,
                   style: TextStyle(
                        fontFamily: AppConstants.inter,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black)
                  ),
                  SizedBox(height: 5,),
                  Text(AppConstants.covered),
                  SizedBox(height: 20,),
                  ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Image.asset(listItems[index].imageUrl!),
                          title: Text(listItems[index].title!,
                           style: TextStyle(
                        fontFamily: AppConstants.inter,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black)
                          ),
                          subtitle: Text(listItems[index].subTitle!,
                           style: TextStyle(
                        fontFamily: AppConstants.inter,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.grey)
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      );
                    },
                    itemCount: listItems.length,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ObjectDetectorView()));
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            shape: StadiumBorder(),
                            backgroundColor: Color(0xff411DFB)),
                        child: Text(AppConstants.getStarted)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
