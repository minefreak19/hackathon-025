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
  // Trans-Harbour Line
  [
    "Ambernath",
    "Badlapur",
    "Bhivpuri Road",
    "Diva",
    "Dombivli",
    "Karjat",
    "Kopar",
    "Kalyan",
    "Mumbra",
    "Neral",
    "Shelu",
    "Thakurli",
    "Ulhasnagar",
    "Vangani"
  ],
  // Vasai Road-Diva-Panvel Line
  [
    "Airoli",
    "Belapur CBD",
    "Bhiwandi Road",
    "Ghansoli",
    "Jui Nagar",
    "Juchandra",
    "Kaman Road",
    "Khandeshwar",
    "Kharghar",
    "Kopar",
    "Mumbra",
    "Nerul",
    "Panvel",
    "Rabale",
    "Sanpada",
    "Seawoods-Darave",
    "Targhar",
    "Thane",
    "Turbhe",
    "Vashi"
  ],
  // Nerul/Belapur-Kharkopar Line (Navi Mumbai Metro)
  [
    "Bamandongri",
    "Belapur CBD",
    "Kharghar",
    "Nerul",
    "Sagar Sangam",
    "Seawoods-Darave",
    "Targhar"
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
  // Trans-Harbour Line
  [
    "Ambernath",
    "Badlapur",
    "Bhivpuri Road",
    "Diva",
    "Dombivli",
    "Karjat",
    "Kopar",
    "Kalyan",
    "Mumbra",
    "Neral",
    "Shelu",
    "Thakurli",
    "Ulhasnagar",
    "Vangani"
  ],
  // Vasai Road-Diva-Panvel Line
  [
    "Airoli",
    "Belapur CBD",
    "Bhiwandi Road",
    "Ghansoli",
    "Jui Nagar",
    "Juchandra",
    "Kaman Road",
    "Khandeshwar",
    "Kharghar",
    "Kopar",
    "Mumbra",
    "Nerul",
    "Panvel",
    "Rabale",
    "Sanpada",
    "Seawoods-Darave",
    "Targhar",
    "Thane",
    "Turbhe",
    "Vashi"
  ],
  // Nerul/Belapur-Kharkopar Line (Navi Mumbai Metro)
  [
    "Bamandongri",
    "Belapur CBD",
    "Kharghar",
    "Nerul",
    "Sagar Sangam",
    "Seawoods-Darave",
    "Targhar"
  ],
];
const List<String> lines = <String>[
  "Western Line",
  "Central Line",
  "Harbour Line",
  "Trans-Harbour Line",
  "Vasai Road-Diva-Panvel Line",
  "Nerul/Belapur-Kharkopar Line (Navi Mumbai Metro)"
];

class LocalTrains extends StatefulWidget {
  const LocalTrains({super.key});

  @override
  State<LocalTrains> createState() => _LocalTrainsState();
}
List<int> catIndexes = <int>[0, 1, 2, 3, 4,5];
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("Select the line you wish to travel on"),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  // color: widgetColors[index],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: DropdownMenu<String>(
                  width: MediaQuery.of(context).size.width / (8 / 7),
                  menuStyle: const MenuStyle(alignment: Alignment.center, backgroundColor: ),
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
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  // color: widgetColors[index],
                  borderRadius: BorderRadius.circular(8.0),
                  ),
                child: DropdownMenu<String>(
                  width: MediaQuery.of(context).size.width / (8 / 7),
                  menuStyle: const MenuStyle(alignment: Alignment.center),
                  initialSelection: fromStations[catIndexes[0]].first,
                  onSelected: (String? value) {
                    setState(() {
                        dropdownValue = value!;
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
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  // color: widgetColors[index],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: DropdownMenu<String>(
                  width: MediaQuery.of(context).size.width / (8 / 7),
                  menuStyle: const MenuStyle(alignment: Alignment.center),
                  initialSelection: fromStations[catIndexes[0]].first,
                  onSelected: (String? value) {
                    setState(() {
                      dropdownValue = value!;
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
