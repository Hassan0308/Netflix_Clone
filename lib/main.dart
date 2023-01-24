import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoviApp(),
    ));

class MoviApp extends StatefulWidget {
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
        elevation: 0.0,
        title: Text("Niche Movies"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: ListView(
          children: [
            //child 1
            Container(
              height: 40.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "Action",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.blueGrey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "Adventure",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.blueGrey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "Comedy",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Top Trending",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MoviCard("The Outside War", "8.5/10",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5vgalDqbwc_eCLUntHbBNwTjHBgiHg4zfunzziKr0RA&s"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MoviCard("The Outside War", "8.5/10",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0BteRF7tYFK6E1E9iO_-m8Qk9j33Iqd4MKKNjzsy3x3Pt8iz-d7GyIx89oOZpvR2ywe0&usqp=CAU"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MoviCard("The Outside War", "8.5/10",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5vgalDqbwc_eCLUntHbBNwTjHBgiHg4zfunzziKr0RA&s"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MoviCard("The Outside War", "8.5/10",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0BteRF7tYFK6E1E9iO_-m8Qk9j33Iqd4MKKNjzsy3x3Pt8iz-d7GyIx89oOZpvR2ywe0&usqp=CAU"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Recommended Movies",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MoviCard("Joker", "8.5/10",
                        'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MoviCard("Joker", "8.5/10",
                        'https://cdn.pixabay.com/animation/2022/12/05/15/23/15-23-06-837_512.gif'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MoviCard("Joker", "8.5/10",
                        'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MoviCard("Joker", "8.5/10",
                        'https://cdn.pixabay.com/animation/2022/12/05/15/23/15-23-06-837_512.gif'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1B2C3B) ,
        fixedColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
            icon: Icon(Icons.home,),
            onPressed: () {},
          ),
            label: "HOME",

          ),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              label:  "SEARCH",

          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.download),
              onPressed: () {},
            ),
            label:  "DOWNLOAD",

          ),



        ],
      ),
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
