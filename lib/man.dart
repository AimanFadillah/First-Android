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
              child: IconButton(
                icon: Icon(Icons.account_circle_outlined,size: 32,color: Colors.white),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => min(),
                    ),
                  );
                },
              ),
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
                  Expanded(
                      child:Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                          margin: const EdgeInsets.fromLTRB(1,0,5,0),
                          decoration:const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child:const Text("Mingguan",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.start),
                      )
                  ),
                  Expanded(
                      child:Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                          margin: const EdgeInsets.fromLTRB(5,0,1,0),
                          decoration:const BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child:const Text("Penting",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.start)
                      )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(1,5,5,5),
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Text("Public", style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.start),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      margin: const EdgeInsets.fromLTRB(5,5,1,5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Text("Buku", style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.start),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}
