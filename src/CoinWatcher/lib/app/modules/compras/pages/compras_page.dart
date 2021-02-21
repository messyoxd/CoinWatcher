import 'package:flutter/material.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:adobe_xd/pinned.dart';
import './compras_add.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Compras extends StatelessWidget {
  Compras({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffffffff),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xffffffff),
          flexibleSpace: Stack(
            children: [
              BlendMask(
                blendMode: BlendMode.multiply,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.26),
                      colors: [
                        const Color(0xfff38282),
                        const Color(0xffffffff)
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Compras',
                  style: TextStyle(
                    fontFamily: 'Yu Gothic',
                    fontSize: 64,
                    color: const Color(0xffffffff),
                    height: 1.21875,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(

        backgroundColor: const Color(0xffffffff),
        child: Stack(
            children: [
              BlendMask(
                blendMode: BlendMode.multiply,
                child: Container(
                  
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(width: 0.5),
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.26),
                      colors: [
                        const Color(0xfff38282),
                        const Color(0xffffffff)
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
              ),
              Center(child: Icon(Icons.add))
            ],
          ), onPressed: (){},
        ),
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nenhuma\ncompra...',
              style: TextStyle(
                fontFamily: 'Yu Gothic',
                fontSize: 22,
                color: const Color(0xff000000),
                height: 1.0909090909090908,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                SizedBox(
                  width: 47.0,
                  height: 53.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 47.0, 53.0),
                        size: Size(47.0, 53.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Container(
                          decoration: BoxDecoration(),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(2.0, 1.6, 42.6, 47.1),
                        size: Size(47.0, 53.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 42.6, 47.1),
                              size: Size(42.6, 47.1),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: SvgPicture.string(
                                _svg_rt6q15,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(50, 0),
                  child: Transform.rotate(
                    angle: 0.4363,
                    child: SizedBox(
                      width: 5.0,
                      height: 81.0,
                      child: Text(
                        '?',
                        style: TextStyle(
                          fontFamily: 'Yu Gothic',
                          fontSize: 45,
                          color: const Color(0xff000000),
                          height: 1.7333333333333334,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      )
      
          ),
    );
  }
}

const String _svg_rt6q15 =
    '<svg viewBox="0.0 0.0 42.6 47.1" ><path transform="translate(-2.0, -2.0)" d="M 39.96723937988281 15.62950325012207 L 35.13349533081055 10.00423622131348 C 35.28255081176758 8.963437080383301 35.51678848266602 7.996981143951416 35.81490325927734 7.15442943572998 C 35.98525619506836 6.7083740234375 36.0704345703125 6.237536430358887 36.0704345703125 5.717136859893799 C 36.0704345703125 3.660321712493896 34.64373016357422 2 32.87632751464844 2 C 29.38411140441895 2 26.29647636413574 3.957692384719849 24.35872077941895 6.956182956695557 L 13.71171092987061 6.956182956695557 C 7.238329887390137 6.956182956695557 2 13.05228805541992 2 20.58568572998047 C 2 28.11908340454102 7.323505401611328 49.083740234375 7.323505401611328 49.083740234375 L 19.03521728515625 49.083740234375 L 19.03521728515625 44.1275520324707 L 23.29401969909668 44.1275520324707 L 23.29401969909668 49.083740234375 L 35.00573348999023 49.083740234375 L 38.58312606811523 35.23120880126953 L 44.58804321289063 32.90180206298828 L 44.58804321289063 15.62950325012207 L 39.96723937988281 15.62950325012207 Z M 25.42342185974121 19.34664154052734 L 14.77641201019287 19.34664154052734 L 14.77641201019287 14.39045810699463 L 25.42342185974121 14.39045810699463 L 25.42342185974121 19.34664154052734 Z M 31.81163024902344 24.30282211303711 C 30.64045906066895 24.30282211303711 29.68222808837891 23.18768119812012 29.68222808837891 21.82473182678223 C 29.68222808837891 20.4617805480957 30.64045906066895 19.34664154052734 31.81163024902344 19.34664154052734 C 32.9827995300293 19.34664154052734 33.94103240966797 20.4617805480957 33.94103240966797 21.82473182678223 C 33.94103240966797 23.18768119812012 32.9827995300293 24.30282211303711 31.81163024902344 24.30282211303711 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';