import 'package:flutter/material.dart';
import 'package:sanatcilarim_app/model/veri.dart';
import 'package:sanatcilarim_app/resource/veri_Kaynagi.dart';
import 'package:sanatcilarim_app/sanatci_item.dart';

class SanatciListem extends StatelessWidget {

  late final List<Veri> tumSanatcilar;

  SanatciListem() {
    tumSanatcilar = veriKaynaginiHazirla();
    print(tumSanatcilar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sanatçı Listem"),),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index){
          return SanatciItem(listelenenSanatci: tumSanatcilar[index]);
        }, itemCount: tumSanatcilar.length,),
      ),
    );
  }

  List<Veri> veriKaynaginiHazirla() {
    List<Veri> gecici = [];

    for(int i = 0; i < 6; i++){
      var adi = veriKaynagim.SanatciAdi[i];
      var cikisYili = veriKaynagim.SanatciCikisYili[i];
      var detay = veriKaynagim.SanatciDetay[i];
      var kucukFoto = veriKaynagim.SanatciKodu[i]+"1.jpg";
      var buyukFoto = veriKaynagim.SanatciKodu[i]+"2.jpg";

      Veri eklenecek = Veri(adi, veriKaynagim.SanatciKodu[i], cikisYili, detay, kucukFoto, buyukFoto);

      gecici.add(eklenecek);
    }
    return gecici;
  }

}

