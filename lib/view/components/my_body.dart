import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.amber,
            child: Text(
                        "Apodos:",
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                        ),
            ),
          Expanded(
      
            child: Container(
      
              width: double.infinity,
              margin: EdgeInsets.symmetric(),
              padding: EdgeInsets.all(8.0),
              
              decoration: BoxDecoration(
                                        border: Border.all(),
                                        color: Colors.purple[800],
                                        borderRadius: BorderRadius.vertical(),
                                        shape: BoxShape.rectangle,
                                        ),
            
            ),
          ),
        ],
      ),
    );
  }
}