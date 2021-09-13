import 'package:flutter/material.dart';
import 'package:sanatcilarim_app/model/veri.dart';
import 'package:palette_generator/palette_generator.dart';

class SanatciDetay extends StatefulWidget {
  final Veri tiklananSanatci;

  const SanatciDetay({required this.tiklananSanatci, Key? key})
      : super(key: key);

  @override
  _SanatciDetayState createState() => _SanatciDetayState();
}

class _SanatciDetayState extends State<SanatciDetay> {

  Color appBarRengi = Colors.orange;
  late PaletteGenerator _generator; //late seni kullanmadan önce tanımlayacağım hata verme demek.

  @override
  void initState() {
    super.initState();
    appBarRenginiBul();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 150,
              pinned: true,
              backgroundColor: appBarRengi,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(widget.tiklananSanatci.sanatciAdi, style: Theme.of(context).textTheme.headline4,),
                background: Image.asset("images/" + widget.tiklananSanatci.sanatciBuyukFoto, fit: BoxFit.cover,),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Text(widget.tiklananSanatci.sanatciDetay, style: Theme.of(context).textTheme.headline6,),
                ),
              ),
            ),
          ],
        ));
  }

  void appBarRenginiBul() async{
    _generator = await PaletteGenerator.fromImageProvider(AssetImage("images/+${widget.tiklananSanatci.sanatciBuyukFoto}"));
    //async ve await yükleme sırasında nethodun çalışması için zaman tanımaya yarıyor.
    //iki ayrı bölümde ise değişkenlerimiz bunlara widget. diyerek ulaşabiliriz.
    appBarRengi = _generator.dominantColor!.color;
    setState(() {
      //build metodunu tetikleyerek appBarRengi'ni değiştirecek
    });
  }
}















