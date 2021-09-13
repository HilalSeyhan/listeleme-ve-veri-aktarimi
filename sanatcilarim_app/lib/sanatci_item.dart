import 'package:flutter/material.dart';
import 'package:sanatcilarim_app/model/veri.dart';
import 'package:sanatcilarim_app/sanatci_detay.dart';

class SanatciItem extends StatelessWidget {
  final Veri listelenenSanatci;
  const SanatciItem({required this.listelenenSanatci, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var MyTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 4,
        child: ListTile(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SanatciDetay(tiklananSanatci: listelenenSanatci),
              ),
            );
          },
          leading: Image.asset("images/" + listelenenSanatci.sanatciKucukFoto),
          title: Text(listelenenSanatci.sanatciAdi, style: MyTextStyle.headline5,),
          subtitle: Text(listelenenSanatci.sanatciCikisYili, style: MyTextStyle.subtitle1,),
        ),
      ),
    );
  }
}
