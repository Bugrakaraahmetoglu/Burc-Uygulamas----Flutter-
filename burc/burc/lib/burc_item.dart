import 'package:burc/burc_detay.dart';
import 'package:burc/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:burc/model/burc.dart';

class BurcItem extends StatelessWidget {
final Burc lislenenBurc;
  const BurcItem({required this.lislenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>BurcDetay(secilenBurc:lislenenBurc)
                  ),
                  );
            },
            leading: Image.asset("images/"+lislenenBurc.burcKucukResim,) ,
            title: Text(lislenenBurc.burcAdi,style:myTextStyle.headline5),
            subtitle: Text(lislenenBurc.burcTarihi,style: myTextStyle.subtitle1,),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink,),
          ),
        ),
      ),
    );
  }
}