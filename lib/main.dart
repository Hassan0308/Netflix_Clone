import 'package:flutter/material.dart';

class Data {
  String? url;
  String? name;
  String? description;

  Data(@required this.url, @required this.name, @required this.description);
}

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoviApp(),
    ));

class MoviApp extends StatefulWidget {
  static List _data = [
    Data(
        "https://wwwimage-us.pplusstatic.com/thumbnails/photos/w370-q80/movie_asset/59/74/33/sml_salone_poster_1400x2100.jpg",
        "Popular Movie (SMILE)",
        "Our 2023 CLASSIC Refillable Popcorn Bucket is now available! Pop into an AMC Theatres and enjoy refills all year long – only 5.29+tax. Plus, AMC Stubs® members get their 2nd same-day refill for FREE."
    ),
    Data(
        "https://static.hbo.com/2022-12/black-adam-ka-1920.jpg",
        "BLACK ADAM",
        "Our 2023 CLASSIC Refillable Popcorn Bucket is now available! Pop into an AMC Theatres and enjoy refills all year long – only 5.29+tax. Plus, AMC Stubs® members get their 2nd same-day refill for FREE."
    ),
    Data(
        "https://amc-theatres-res.cloudinary.com/image/upload/f_auto,fl_lossy,h_465,q_auto,w_310/v1669911582/amc-cdn/production/2/movies/65800/65813/PosterDynamic/146530.jpg",
        "MEGAN",
        "Our 2023 CLASSIC Refillable Popcorn Bucket is now available! Pop into an AMC Theatres and enjoy refills all year long – only 5.29+tax. Plus, AMC Stubs® members get their 2nd same-day refill for FREE."),


  ];

  const MoviApp({Key? key}) : super(key: key);

  @override
  _MoviAppState createState() => _MoviAppState();
}

class _MoviAppState extends State<MoviApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C262F),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B2C3B),
        title: Text("My Top 3 Movies"),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: MoviApp._data.length,
            itemBuilder: (context, index) {
              Data _myData = MoviApp._data[index];
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(_myData)));
                  },
                  child: Container(

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          _myData.url.toString(),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 250,


                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              _myData.name.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }

  Widget MoviCard(String Title, String Rate, String imgPath) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Card(
            elevation: 0.0,
            child: Image.network(
              imgPath,
              fit: BoxFit.fill,
              width: 130.0,
              height: 160.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            Title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            Rate,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Data _data;

  DetailPage(this._data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C262F),
      appBar: AppBar(
        title: Text("Detail Page"),
        centerTitle: true,
        backgroundColor: Color(0xFF1B2C3B),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
         child: Column(
           children: [
             Image.network(
               _data.url.toString(),
               fit: BoxFit.cover,
               width: double.infinity,
               height: 300,


             ),
             SizedBox(height: 16,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   _data.name.toString(),
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 24,
                   ),
                 ),
                 SizedBox(height: 10,),
                 Text(
                   _data.description.toString(),
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 16,
                   ),
                 ),

               ],
             ),
SizedBox(height: 16,),

ElevatedButton(onPressed: (){}, child: Text("WATCH NOW!"),style: ElevatedButton.styleFrom(
  backgroundColor: Colors.orange
),)
           ],
         ),
        ),
      ),
    );
  }
}
