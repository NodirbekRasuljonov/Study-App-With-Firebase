import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studyapp/provider/subjects_image_provider.dart';

class SubjectsPage extends StatelessWidget {
  const SubjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 150.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5.0,
          ),
          itemBuilder: (context, index) {
            return Image.asset(
              context.watch<SubjectsImage>().images[index],
            );
          },
          itemCount: 9,
        ),
      ),
    );
  }
}
