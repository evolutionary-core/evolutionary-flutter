import 'package:flutter/material.dart';
import '../state.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _categories = ['fish', 'insect', 'mammal', 'bird','human'];

	var _currentItemSelected = 'fish';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Container(
          color: Evo.theme.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  "lib/assets/logo.png",
                  width: 100,
                ),
              ],
          ),
          constraints: BoxConstraints.expand(
          height: 250.0
        )),
        Center(child: Container(
          transform: Matrix4.translationValues(0, -40, 0),
          constraints: BoxConstraints.expand(
            height: 80,
            width: MediaQuery.of(context).size.width - 30,
          ),
          child: Card(elevation: 5,
            child: Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child:  Container(
                width: 300.0,
                child: ButtonTheme(
                
                child: DropdownButton<String>(
                  isExpanded: true,

					    items: _categories.map((String dropDownStringItem) {
					    	return DropdownMenuItem<String>(
							    value: dropDownStringItem,
							    child: Text(dropDownStringItem),
						    );
					    }).toList(),
                    hint: Text("Search Species"),

					    onChanged: (String newValueSelected) {
					    	// Your code to execute, when a menu item is selected from drop down
						    _onDropDownItemSelected(newValueSelected);
					    },

					    value: _currentItemSelected,

				    ),
                ),
              ),
            )
          ),
        )),
        Center(
          child: Text("Hot Categories",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,            
            ),
          )
        ),
        Container(
              constraints: BoxConstraints.expand(
                height: 220,
              ),
              child: categoriesBuilder(context)
          ),

        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.only(left: 5.0),
            child: Column(
              children: <Widget>[
                Text(
                  'What is Evolution?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,            
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'lib/assets/evolution.jpg',
                    width: 300,
                    height: 150,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Evolution is change in the heritable characteristics of biological populations over successive generations. These characteristics are the expressions of genes that are passed on from parent to offspring during reproduction. Different characteristics tend to exist within any given population as a result of mutation, genetic recombination and other sources of genetic variation.',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'RobotoMono',            
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.only(left: 5.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Why should we study evolution ?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,            
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'lib/assets/alien.png',
                    width: 300,
                    height: 150,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'We study evolution for the same reasons that we study any subject — the thirst for knowledge, to understand the past and predict the future, and to organize our world. But the subject of evolution also has huge relevance to our world and current issues that concern all of us. Evolution was happening 150 million years ago when dinosaurs dominated the Earth, was happening in the 1830s when Charles Darwin landed on the Galapagos Islands during the voyage of the HMS Beagle, and it is happening today. It is occurring in every living species on the planet, right now !!',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400, 
                      fontFamily: 'RobotoMono',          
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),

      ],),
    );
  }
  void _onDropDownItemSelected(String newValueSelected) {
	  setState(() {
		  this._currentItemSelected = newValueSelected;
	  });
  }
}



ListView categoriesBuilder(context) {
  return ListView.builder(
    padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
    scrollDirection: Axis.horizontal,
    itemCount: Evo.animals.length,
    itemBuilder: (context, index) {
      return Container(
          constraints: BoxConstraints.expand(
            width: 200,
            height: 500,
          ),
          child: Card(
            color: Colors.white,
            elevation: 1,
            clipBehavior: Clip.antiAlias,
            child: Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                    '${Evo.animalImages[index]}',
                    height: 150,
                    fit: BoxFit.cover
              ),
              Text('${Evo.animals[index]}'.toUpperCase(),
                textAlign: TextAlign.start,
              )
          ],)
            )
        ),
      );
    },
  );
  
}