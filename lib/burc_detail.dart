import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_lists.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';
import 'package:flutter_burc_rehberi/utils/settings.dart';

class BurcDetail extends StatelessWidget {

  int index;
  BurcDetail(this.index);

  Burc secilenBurc;

  @override
  Widget build(BuildContext context) {

    secilenBurc = BurcLists.allBurc[index];

    return Scaffold(
      primary: true,
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.green.shade300,
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
