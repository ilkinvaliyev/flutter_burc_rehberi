import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';
import 'package:flutter_burc_rehberi/utils/settings.dart';

class BurcLists extends StatelessWidget {
  static List<Burc> allBurc;

  @override
  Widget build(BuildContext context) {
    allBurc = createData();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.APP_NAME,
          style: TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ),
      ),
      body: createdLists(),
    );
  }

  List<Burc> createData() {
    List<Burc> burcler = [];

    for (int i = 0; i < 12; i++) {
      String kicikSekil = Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      String boyukSekil =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}" + ".png";

      Burc addedBurc = Burc(Strings.BURC_ADLARI[i], Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i], kicikSekil, boyukSekil);

      burcler.add(addedBurc);
    }

    return burcler;
  }

  Widget createdLists() {
    return ListView.builder(
      primary: false,
      itemBuilder: (context, index) {
        return TekSetirBurc(context, index);
      },
      itemCount: allBurc.length,
    );
  }

  Widget TekSetirBurc(context, index) {
    Burc burcData = allBurc[index];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Card(
        elevation: 4,
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, '/burcDetail/${index}'),
          leading: Image.asset(
            "images/${burcData.burcKicikSekil}",
            width: 64,
            height: 64,
          ),
          title: Text(
            burcData.burcAdi,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.pink.shade500),
          ),
          subtitle: Text(
            burcData.burcTarixi,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black54),
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
        ),
      ),
    );
  }
}
