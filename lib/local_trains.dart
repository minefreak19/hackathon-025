import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const List<List<String>> fromStations = <List<String>>[
  // Western Line
  [
    "Andheri",
    "Bandra",
    "Bhayandar",
    "Boisar",
    "Borivali",
    "Charni Road",
    "Church Gate",
    "Dadar",
    "Dahisar",
    "Dahanu Road",
    "Elphinstone Road",
    "Goregaon",
    "Grant Road",
    "Jogeshwari",
    "Kandivali",
    "Khar Road",
    "Lower Parel",
    "Mahalaxmi",
    "Mahim Jn",
    "Malad",
    "Marine Lines",
    "Matunga Road",
    "Mira Road",
    "Mumbai Central",
    "Naigaon",
    "Nallasopara",
    "Santacruz",
    "Vasai Road",
    "Vile Parle",
    "Virar"
  ],
  // Central Line
  [
    "Ambernath",
    "Badlapur",
    "Bhandup",
    "Byculla",
    "Chhatrapati Shivaji Maharaj Terminus (CSMT)",
    "Chinchpokli",
    "Currey Road",
    "Dadar",
    "Diva",
    "Dombivli",
    "Ghatkopar",
    "Kalva",
    "Kalyan",
    "Kanjurmarg",
    "Karjat",
    "Kelavli",
    "Khopoli",
    "Kurla",
    "Lowjee",
    "Mumbra",
    "Mulund",
    "Nahur",
    "Palasdari",
    "Parel",
    "Shelu",
    "Sion",
    "Thakurli",
    "Thane",
    "Ulhasnagar",
    "Vidyavihar",
    "Vikhroli",
    "Vithalwadi"
  ],
  // Harbour Line
  [
    "Belapur CBD",
    "Chembur",
    "Chunabhatti",
    "Cotton Green",
    "Dockyard Road",
    "Ghansoli",
    "Govandi",
    "GTB Nagar",
    "Juinagar",
    "Khandeshwar",
    "Kurla",
    "Mankhurd",
    "Mansarovar",
    "Masjid",
    "Nerul",
    "Panvel",
    "Reay Road",
    "Sanpada",
    "Sewri",
    "Tilak Nagar",
    "Vashi",
    "Wadala Road"
  ],
];
const List<List<String>> toStations = <List<String>>[
  // Western Line
  [
    "Andheri",
    "Bandra",
    "Bhayandar",
    "Boisar",
    "Borivali",
    "Charni Road",
    "Church Gate",
    "Dadar",
    "Dahisar",
    "Dahanu Road",
    "Elphinstone Road",
    "Goregaon",
    "Grant Road",
    "Jogeshwari",
    "Kandivali",
    "Khar Road",
    "Lower Parel",
    "Mahalaxmi",
    "Mahim Jn",
    "Malad",
    "Marine Lines",
    "Matunga Road",
    "Mira Road",
    "Mumbai Central",
    "Naigaon",
    "Nallasopara",
    "Santacruz",
    "Vasai Road",
    "Vile Parle",
    "Virar"
  ],
  // Central Line
  [
    "Ambernath",
    "Badlapur",
    "Bhandup",
    "Byculla",
    "Chhatrapati Shivaji Maharaj Terminus (CSMT)",
    "Chinchpokli",
    "Currey Road",
    "Dadar",
    "Diva",
    "Dombivli",
    "Ghatkopar",
    "Kalva",
    "Kalyan",
    "Kanjurmarg",
    "Karjat",
    "Kelavli",
    "Khopoli",
    "Kurla",
    "Lowjee",
    "Mumbra",
    "Mulund",
    "Nahur",
    "Palasdari",
    "Parel",
    "Shelu",
    "Sion",
    "Thakurli",
    "Thane",
    "Ulhasnagar",
    "Vidyavihar",
    "Vikhroli",
    "Vithalwadi"
  ],
  // Harbour Line
  [
    "Belapur CBD",
    "Chembur",
    "Chunabhatti",
    "Cotton Green",
    "Dockyard Road",
    "Ghansoli",
    "Govandi",
    "GTB Nagar",
    "Juinagar",
    "Khandeshwar",
    "Kurla",
    "Mankhurd",
    "Mansarovar",
    "Masjid",
    "Nerul",
    "Panvel",
    "Reay Road",
    "Sanpada",
    "Sewri",
    "Tilak Nagar",
    "Vashi",
    "Wadala Road"
  ],
];
const List<String> lines = <String>[
  "Western Line",
  "Central Line",
  "Harbour Line",
];

class LocalTrains extends StatefulWidget {
  const LocalTrains({super.key});

  @override
  State<LocalTrains> createState() => _LocalTrainsState();
}
List<int> catIndexes = <int>[0, 1, 2];
String fromStation = "";
String toStation = "";
class _LocalTrainsState extends State<LocalTrains> {
  String dropdownValue = fromStations[catIndexes[0]].first;
  int findIndex(List<String> l, String? toFind) {
    for (int i = 0; i < l.length; i++) {
      if (l[i].compareTo(toFind!) == 0) {
        return i;
      }
    }
    return -1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 104, 74, 1),
      appBar: AppBar(title: Text("Local Trains", style: TextStyle(color: Colors.white),), backgroundColor: Color.fromRGBO(35, 104, 74, 1),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("Select the line you wish to travel on", style: TextStyle(color: Colors.white),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(188, 179, 121, 1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: DropdownMenu<String>(
                  width: MediaQuery.of(context).size.width / (8 / 7),
                  menuStyle: const MenuStyle(alignment: Alignment.center,),
                  initialSelection: lines[0],
                  onSelected: (String? value) {
                    setState(() {
                      if (value != "Custom") {
                        dropdownValue = value!;
                        catIndexes[0] = findIndex(lines, value);
                      } else {
                        dropdownValue = value!;
                      }
                    });
                  },
                  dropdownMenuEntries: lines
                      .map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Select the station you wish to travel from", style: TextStyle(color: Colors.white),),
              SizedBox(height: 3,),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(188, 179, 121, 1),
                  borderRadius: BorderRadius.circular(8.0),
                  ),
                child: DropdownMenu<String>(
                  width: MediaQuery.of(context).size.width / (8 / 7),
                  menuStyle: const MenuStyle(alignment: Alignment.center),
                  initialSelection: fromStations[catIndexes[0]].first,
                  onSelected: (String? value) {
                    setState(() {
                        dropdownValue = value!;
                        fromStation = value;
                    });
                  },
                  dropdownMenuEntries: fromStations[catIndexes[0]]
                      .map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Select the station you wish to travel to", style: TextStyle(color: Colors.white),),
              SizedBox(height: 3,),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(188, 179, 121, 1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: DropdownMenu<String>(
                  width: MediaQuery.of(context).size.width / (8 / 7),
                  menuStyle: const MenuStyle(alignment: Alignment.center),
                  initialSelection: fromStations[catIndexes[0]][1],
                  onSelected: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                      toStation = value;
                    });
                  },
                  dropdownMenuEntries: fromStations[catIndexes[0]]
                      .map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
