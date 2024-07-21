import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class ShimmerContainer extends StatefulWidget {
  const ShimmerContainer({super.key});

  @override
  State<ShimmerContainer> createState() => _ShimmerContainerState();
}

class _ShimmerContainerState extends State<ShimmerContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Colors.white70,
      margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),
      child: Shimmer.fromColors(
          direction: ShimmerDirection.ltr,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),
            child: ListTile(
              title: Text("Name"),
              subtitle: Text("Description"),
              leading: CircleAvatar(
                radius: 22,
                child: Image.network("Loading",height: 50,width: 50,),
              ),
            ),
          ),
          baseColor: Colors.white12,
          highlightColor: Colors.grey),
    );
  }
}
