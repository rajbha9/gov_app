import 'package:flutter/material.dart';
import 'package:gov_app/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gov. Service App"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          children: GlobalGovData.allGovData
              .map(
                (e) => InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('detail', arguments: e);
                  },
                  child: Card(
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: e.appcolors,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(e.image),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Chip(
                                label: Text(
                                  e.name,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
