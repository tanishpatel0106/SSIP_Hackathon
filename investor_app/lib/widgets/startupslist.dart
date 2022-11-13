import 'package:flutter/material.dart';
import 'package:investor_app/models/founder.dart';
import 'package:investor_app/widgets/startup_profile.dart';

class StartupsList extends StatefulWidget {
  const StartupsList({super.key});

  @override
  State<StartupsList> createState() => _StartupsListState();
}

class _StartupsListState extends State<StartupsList> {
  List<String> investors = ['a', 'b', 'c', 'c', 'd', 'e'];
  List<Color> modTick = List<Color>.generate(10, (i) => Colors.green);
  List<Color> modCross = List<Color>.generate(10, (i) => Colors.red);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                        },);

                        },),
                  ],
                ),
              ),
            );
          },),
    );
  }
}
