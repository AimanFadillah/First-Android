import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class min extends StatefulWidget {
  const min({super.key});

  @override
  State<min> createState() => _minState();
}

class _minState extends State<min> {

  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: const Text("Foto",style: TextStyle(color:Colors.white),),
          backgroundColor: Colors.deepPurpleAccent,
        ),

        body: Container(
            padding:const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration:const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 20,
                        offset: Offset(2,2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/gambar1.jpg",width:400),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child:const Text("Makmur",style: TextStyle(fontSize: 30),),
                            padding: EdgeInsets.all(10),
                          ),
                          Row(
                            children: [
                              Container(
                                // child: Icon(Icons.star,),
                                child: IconButton(
                                  icon: (_isFavorited
                                      ? const Icon(Icons.star,size:30,color: Colors.red)
                                      : const Icon(Icons.star_border,size:30,color: Colors.red)),
                                  onPressed:_toggleFavorite ,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text('$_favoriteCount',style: TextStyle(fontSize: 20),),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child:Icon(Icons.call,size:30,color: Colors.blue,),
                            padding: EdgeInsets.all(10),
                          ),
                          Container(
                            child:Icon(Icons.route,size:30,color: Colors.blue,),
                            padding: EdgeInsets.all(10),
                          ),
                          Container(
                            child:Icon(Icons.share,size:30,color: Colors.blue,),
                            padding: EdgeInsets.all(10),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text("industry. Lorem Ipsum has be jdbnasbduasbdas asdhnuoasb sdhuabsd asdioabnsd ansdobas",

                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
      ),


    );
  }

  void _toggleFavorite () {
    setState(() {
      if(_isFavorited){
        _favoriteCount -= 1 ;
        _isFavorited = false;
      }else{
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }


}


