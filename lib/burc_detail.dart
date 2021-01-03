import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_lists.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';
import 'package:palette_generator/palette_generator.dart';


class BurcDetail extends StatefulWidget {

  int index;
  BurcDetail(this.index);

  @override
  _BurcDetailState createState() => _BurcDetailState();
}

class _BurcDetailState extends State<BurcDetail> {
  Burc secilenBurc;

  Color reng;

  @override
  Widget build(BuildContext context) {

    secilenBurc = BurcLists.allBurc[widget.index];

    PaletteGenerator paletteGenerator;

    Future<PaletteGenerator> futurePaletteGenerator = PaletteGenerator.fromImageProvider(AssetImage('images/${secilenBurc.burcBoyukSekil}'));

    futurePaletteGenerator.then((value) {
      paletteGenerator = value;

      setState(() {
        reng =  paletteGenerator.dominantColor.color;
      });

    });

    return Scaffold(
      primary: true,
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: reng != null ? reng : Colors.pink,
            expandedHeight: 250,
            pinned: true,
            primary: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/${secilenBurc.burcBoyukSekil}",fit: BoxFit.cover,),
              centerTitle: true,
              title: Text(secilenBurc.burcAdi),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(secilenBurc.bucrDetail, style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
            ),
          )
        ],
      ),
    );




  }
}
