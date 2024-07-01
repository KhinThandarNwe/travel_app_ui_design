import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: const BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'City Name, Country',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 25,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Patreon is the best place for creators to build community with their biggest fans, share exclusive work, and turn their passions into lasting creative businesses. Starting a Patreon is free for creators and their fans. If they want to start earning an income, they can choose to launch their own digital shop or run a paid membership. Here, creators get a direct line to their communities. That means they never have to worry about ads or algorithms getting in between them and the people who matter most.Patreon is the best place for creators to build community with their biggest fans, share exclusive work, and turn their passions into lasting creative businesses. Starting a Patreon is free for creators and their fans. If they want to start earning an income, they can choose to launch their own digital shop or run a paid membership. Here, creators get a direct line to their communities. That means they never have to worry about ads or algorithms getting in between them and the people who matter most.',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'image/city2.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 98,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'image/city4.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 98,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'image/city4.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 98,
                            //opacity: 0.4
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      '10+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              )
                            ]),
                        child: const Icon(Icons.bookmark_outline, size: 40),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: const Text(
                          "Bool Note",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
