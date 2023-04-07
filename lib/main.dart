import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      home: TimeTable(),
    ),
  );
}

const List<String> groups = <String>[
  "G1",
  "G2",
  "G3",
  "G4",
  "G5",
  "G6",
  "G7",
  "G8",
  "G9",
  "G10",
  "G11",
  "G12",
  "G13",
  "G14",
  "G15",
  "G16",
  "G17",
  "G18",
  "G19",
  "G20",
  "G21",
  "G22",
  "G23",
  "G24",
  "G25",
  "G26",
  "G27",
  "G28"
];

class TimeTable extends StatefulWidget {
  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  var currValue = groups[0];

  @override
  static const snackBar = SnackBar(
    content: Text('Success !!'),
    duration: Duration(seconds:1),
  );

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
        appBar: AppBar(
          title: Text('StudyPlan'),
          backgroundColor: Colors.yellowAccent,
          foregroundColor: Colors.black,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Choose a group from the dropdown menu',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      filled: true,
                      fillColor: Colors.yellowAccent,
                    ),
                    items: groups.map((String dropDownValue) {
                      return DropdownMenuItem(
                        child: Center(child: Text(dropDownValue)),
                        value: dropDownValue,
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        this.currValue = newValue!;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    value: currValue,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: 100),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.black, border: Border.all(width: 0.5)),
                  child: currValue == "G1"
                      ? Image.asset('assets/g1.png')
                      : currValue == "G2"
                          ? Image.asset('assets/g2.png')
                          : currValue == "G3"
                              ? Image.asset('assets/g3.png')
                              : currValue == "G4"
                                  ? Image.asset('assets/g4.png')
                                  : currValue == "G5"
                                      ? Image.asset('assets/g5.png')
                                      : currValue == "G6"
                                          ? Image.asset('assets/g6.png')
                                          : currValue == "G7"
                                              ? Image.asset('assets/g7.png')
                                              : currValue == "G8"
                                                  ? Image.asset('assets/g8.png')
                                                  : currValue == "G9"
                                                      ? Image.asset(
                                                          'assets/g9.png')
                                                      : currValue == "G10"
                                                          ? Image.asset(
                                                              'assets/g10.png')
                                                          : currValue == "G11"
                                                              ? Image.asset(
                                                                  'assets/g11.png')
                                                              : currValue ==
                                                                      "G12"
                                                                  ? Image.asset(
                                                                      'assets/g12.png')
                                                                  : currValue ==
                                                                          "G13"
                                                                      ? Image.asset(
                                                                          'assets/g13.png')
                                                                      : currValue ==
                                                                              "G14"
                                                                          ? Image.asset(
                                                                              'assets/g14.png')
                                                                          : currValue == "G15"
                                                                              ? Image.asset('assets/g15.png')
                                                                              : currValue == "G16"
                                                                                  ? Image.asset('assets/g16.png')
                                                                                  : currValue == "G17"
                                                                                      ? Image.asset('assets/g17.png')
                                                                                      : currValue == "G18"
                                                                                          ? Image.asset('assets/g18.png')
                                                                                          : currValue == "G19"
                                                                                              ? Image.asset('assets/g19.png')
                                                                                              : currValue == "G20"
                                                                                                  ? Image.asset('assets/g20.png')
                                                                                                  : currValue == "G21"
                                                                                                      ? Image.asset('assets/g21.png')
                                                                                                      : currValue == "G22"
                                                                                                          ? Image.asset('assets/g22.png')
                                                                                                          : currValue == "G23"
                                                                                                              ? Image.asset('assets/g23.png')
                                                                                                              : currValue == "G24"
                                                                                                                  ? Image.asset('assets/g24.png')
                                                                                                                  : currValue == "G25"
                                                                                                                      ? Image.asset('assets/g25.png')
                                                                                                                      : currValue == "G26"
                                                                                                                          ? Image.asset('assets/g26.png')
                                                                                                                          : currValue == "G27"
                                                                                                                              ? Image.asset('assets/g27.png')
                                                                                                                              : currValue == "G28"
                                                                                                                                  ? Image.asset('assets/g28.png')
                                                                                                                                  : null)
            ],
          ),
        ),
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '© app made for gdsc. All rights reserved',
                style: TextStyle(color: Colors.black87),
              )
            ],
          )
        ]);
  }
}
