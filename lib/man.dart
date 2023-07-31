import 'package:android1/min.dart';
import 'package:flutter/material.dart';

class Man extends StatelessWidget {
  const Man({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Aiman",style: TextStyle(color:Colors.white),),
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
           Padding(
            padding:const EdgeInsets.symmetric(horizontal: 12.0),
            child: Center(
              child: Icon(Icons.account_circle_outlined,size: 32,color: Colors.white,),
            ),
          )
        ],
      ),


      body: Container(
          padding: EdgeInsets.all(10),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0,20,0,0),
                padding:const EdgeInsets.all(5),
                width:MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.blueAccent
                ),
                child:const Text("Fitur Catan",style: TextStyle(fontSize: 23,color: Colors.white),textAlign: TextAlign.center),
              ),
              Container(
                margin:const EdgeInsets.symmetric(vertical: 10),
                padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                width:MediaQuery.of(context).size.width,
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.deepOrange,
                ),
                child:const Text("Cepat",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.start),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 235,
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    decoration:const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child:const Text("Penting",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.start),
                  ),
                  Container(
                    padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    width: 235,
                    decoration:const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child:const Text("Mingguan",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.start),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 235,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius:  BorderRadius.all(Radius.circular(5))
                    ),
                    child:const  Text("Public",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.start),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    width: 235,
                    decoration:const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: const Text("Buku",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.start),
                  )
                ],
              ),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => min(),
                ),
              );}, child: const Text("Masuk Cuy")),
            ],
          )
      ),
    );
  }
}
