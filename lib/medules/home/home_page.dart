import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Row(
          children:const [
            SizedBox(width: 5,) ,
            Text('share' , style: TextStyle(color: Colors.black, fontSize: 20),),
          ],
        ),
        actions: const [ Center(child: Text('back  ',style: TextStyle(color: Colors.black , fontSize: 20),))],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
           const Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text('Flutter News Flutter News Flutter News Flutter News Flutter News' ,
              style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold),),
            ),
             Row(
              children: const[
                Spacer(),
                Text('29 sep 2022', style: TextStyle(color: Colors.grey),),
              ],
            ) ,
            const SizedBox(height: 20,) ,
            const Image(image: AssetImage('assets/images/background.jpg')) ,
            const SizedBox(height: 20,) ,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child:Icon(Icons.share , color: Colors.grey[600],),
                  ),
                ) ,
                const SizedBox(width: 10,),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      'twitter sharing' ,
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
               const SizedBox(width: 10,),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.indigo
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      'facebook sharing' ,
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ) ,
           const SizedBox(height: 10,) ,
           const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text('Israel brutal crackdowns on Palestinians living under its occupation dominate the news, but other longer-term trends are equally worrying. The Palestinian Authority is confiscating more and more land from Palestinian farmers in order to build industrial zones, which strips farmers of their right to grow their own food and further increases Palestinian dependency on Israel. Al-Shabaka Guest Author Vivien Sansour and Al-Shabaka Program Director Alaa Tartir argue that sustained community efforts are needed to preserve one of the most important elements of resistance that Palestinians have.' ,
              style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
