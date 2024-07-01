import 'package:flutter/material.dart';
import '../widget/widget.dart';
import 'screen.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var category = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants'
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PostScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 160,
                                  padding: const EdgeInsets.all(20),
                                  margin: const EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "image/city${index + 1}.jpg"),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topRight,
                                        child: const Icon(
                                          Icons.bookmark_outline_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        child: const Text(
                                          "City Name",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for (int i = 0; i < 6; i++)
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26, blurRadius: 4),
                                ]),
                            child: Text(
                              category[i],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PostScreen(),
                                ),
                              );
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image:
                                      AssetImage("image/city${index + 1}.jpg"),
                                  fit: BoxFit.cover,
                                  opacity: 0.8,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'City Name',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.more_vert,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: const HomeBottomBar(),
    );
  }
}
