import 'package:flutter/material.dart';
import 'package:resp_adpt/view/widgets/custom/custom_drawer.dart';
import '../widgets/platform/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        appBar: MediaQuery.sizeOf(context).width -32 < 900 ? AppBar(
          leading: GestureDetector(
            onTap: (){
              scaffoldKey.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ) : null,
        backgroundColor: Color(0xffDBDBDB),
        body: HomeBody(),
      ),
    );
  }
}
