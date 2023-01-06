import 'package:first_app/store/counter.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final Counter counter = Counter();

class Mobx_page extends StatefulWidget{
  const Mobx_page({Key? key}) : super(key: key);
  @override
  State<Mobx_page> createState() => _MobxPageState();

}

class _MobxPageState extends State<Mobx_page>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        fontFamily: 'Plus Jakarta Sans'
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(
                builder: (context) => Text(counter.value.toString(),
                  style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700
                  ),),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(onPressed: (){
                    counter.decrement();
                  },
                  child: Icon(Icons.arrow_downward),),
                  SizedBox(width: 40,),
                  FloatingActionButton(onPressed: (){
                    counter.increment();
                  },
                  child: Icon(Icons.arrow_upward),)
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}