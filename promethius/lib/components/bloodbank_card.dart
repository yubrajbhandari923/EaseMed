import 'package:flutter/material.dart';
import 'package:promethius/constants.dart';

class BloodbankCard extends StatelessWidget {
  var hospitamname;
  var hospitallocation;
  var number;

  BloodbankCard(
    this.hospitamname,
    this.hospitallocation,
    this.number,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hospitamname,
                          style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          hospitallocation,
                          style: TextStyle(
                            color: kTitleTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          number,
                          style: TextStyle(
                            color: kTitleTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/phone.png',
                      height: 35,
                      width: 35,
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.red.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text('SEE ON GOOGLE MAP',style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
