import 'package:flutter/material.dart';

class InvestorList extends StatefulWidget {
  const InvestorList({Key? key}) : super(key: key);

  @override
  State<InvestorList> createState() => _InvestorList();
}

class _InvestorList extends State<InvestorList> {
  List<String> investors = ['a', 'b', 'c', 'c', 'd', 'e'];
  List<Color> modTick = List<Color>.generate(10, (i) => Colors.green);
  List<Color> modCross = List<Color>.generate(10, (i) => Colors.red);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Text('List of potential investors')),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: investors.length,
              itemBuilder: (_, i) {
                return ListTile(
                  title: Text(investors[i]),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.check,
                            color: modTick[i],
                          ),
                          onPressed: () {
                            setState(() {
                              if(modCross[i] != Colors.grey ){
                                if(modTick[i]==Colors.grey){
                                  modTick[i] = Colors.green;
                                }
                                else{
                                  modTick[i] = Colors.grey;
                                }
                              }
                            });
                          },
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.close,
                              color: modCross[i],
                            ),
                            onPressed: () {setState(() {
                              if(modTick[i]!=Colors.grey){
                                if(modCross[i]== Colors.grey){
                                  modCross[i] = Colors.red;
                                }
                                else{
                                  modCross[i] = Colors.grey;
                                }
                              }
                            });

                            }),
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
