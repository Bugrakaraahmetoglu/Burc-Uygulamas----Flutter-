import 'package:burc/burc_item.dart';
import 'package:burc/data/strings.dart';
import 'package:burc/model/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  
  late List<Burc> tumburclar;
   BurcListesi(){
     tumburclar = verikaynaginihazirla();
     print(tumburclar);
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Listesi"),
        centerTitle: true,
      ),
      body: Center(
        child:  ListView.builder(itemBuilder: (context,index){
          return BurcItem(lislenenBurc: tumburclar[index]);
        } , itemCount: tumburclar.length,)),
    );
  }
  
  List<Burc> verikaynaginihazirla() {
    List<Burc> gecici = [];
    for(int i = 0; i<12; i++){
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      //koc1.png değerini oluşturmak Koc --> koc --> koc1.png
      var burckucukresim = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1 }.png';
       //koc1.png değerini oluşturmak Koc --> koc --> koc1.png
       var burcbuyukresim = Strings.BURC_ADLARI[i].toLowerCase() +'_buyuk' + '${i + 1 }.png';
      Burc eklenecekBurc = Burc(burcAdi,burcTarihi,burcDetay,burckucukresim,burcbuyukresim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}