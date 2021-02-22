import 'package:flutter/material.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:adobe_xd/pinned.dart';
import './Home.dart';
import 'package:adobe_xd/page_link.dart';
import './AdicionarCompra2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdicionarCompra1 extends StatelessWidget {
  AdicionarCompra1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(47.6, 41.0),
            child: SizedBox(
              width: 317.0,
              child: Text(
                'Compras',
                style: TextStyle(
                  fontFamily: 'Yu Gothic',
                  fontSize: 64,
                  color: const Color(0xff707070),
                  height: 1.21875,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          BlendMask(
            blendMode: BlendMode.multiply,
            child: Container(
              width: 412.0,
              height: 148.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.26),
                  colors: [const Color(0xfff38282), const Color(0xffffffff)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(72.2, 52.0),
            child: SizedBox(
              width: 346.0,
              child: Text(
                'Adicionar Compra',
                style: TextStyle(
                  fontFamily: 'Yu Gothic',
                  fontSize: 35,
                  color: const Color(0xff000000),
                  height: 2.2285714285714286,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(95.0, 343.0),
            child: Container(
              width: 284.0,
              height: 64.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(94.5, 251.0),
            child: Container(
              width: 284.0,
              height: 64.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(95.0, 433.0),
            child: Container(
              width: 284.0,
              height: 64.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(100.9, 568.3),
            child: Container(
              width: 284.0,
              height: 64.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(105.0, 360.0),
            child: Text(
              'Nome do comprador',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 23,
                color: const Color(0xfff38282),
                height: 1.9565217391304348,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(104.5, 268.0),
            child: Text(
              'Nome da compra',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 23,
                color: const Color(0xfff38282),
                height: 1.9565217391304348,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(105.0, 450.0),
            child: Text(
              'Local de compra',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 23,
                color: const Color(0xfff38282),
                height: 1.9565217391304348,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(23.6, 46.1),
            child:
                // Adobe XD layer: 'keyboard_backspace-…' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Home(),
                ),
              ],
              child: SizedBox(
                width: 33.0,
                height: 45.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 29.7, 44.5),
                      size: Size(32.7, 44.5),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: SvgPicture.string(
                        _svg_tt5tv6,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(6.9, 22.4, 25.8, 12.0),
                      size: Size(32.7, 44.5),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_mspy6k,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(95.2, 315.1),
            child: SvgPicture.string(
              _svg_964fkb,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 169.0),
            child: Container(
              width: 50.0,
              height: 47.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(39.9, 579.3),
            child: Container(
              width: 50.0,
              height: 47.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(76.7, 177.0),
            child: SizedBox(
              width: 292.0,
              child: Text(
                '1º - Dados da Compra',
                style: TextStyle(
                  fontFamily: 'Yu Gothic',
                  fontSize: 22,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(82.6, 586.3),
            child: SizedBox(
              width: 292.0,
              child: Text(
                '2º - Itens da Compra',
                style: TextStyle(
                  fontFamily: 'Yu Gothic',
                  fontSize: 22,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(59.5, 226.5),
            child: SvgPicture.string(
              _svg_skjhsq,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(295.7, 521.8),
            child:
                // Adobe XD layer: 'add-white-18dp' (group)
                SizedBox(
              width: 43.0,
              height: 47.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 43.2, 46.6),
                    size: Size(43.2, 46.6),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_ktysle,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.0, 5.0, 33.2, 36.6),
                    size: Size(43.2, 46.6),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_fbztm2,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(255.0, 522.5),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => AdicionarCompra2(),
                ),
              ],
              child: Container(
                width: 99.4,
                height: 33.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color(0xfff38282),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(272.0, 527.0),
            child: Text(
              'Avançar',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 18,
                color: const Color(0xffffffff),
                height: 2.2777777777777777,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_tt5tv6 =
    '<svg viewBox="0.0 0.0 29.7 44.5" ><path  d="M 0 0 L 29.70503234863281 0 L 29.70503234863281 44.54024505615234 L 0 44.54024505615234 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mspy6k =
    '<svg viewBox="6.9 22.4 25.8 12.0" ><path transform="translate(3.87, 16.45)" d="M 28.83382987976074 11 L 8.496865272521973 11 L 13.63492679595947 7.409999847412109 L 11.61127758026123 6 L 2.999999523162842 12 L 11.61127758026123 18 L 13.63492679595947 16.59000015258789 L 8.496865272521973 13 L 28.83382987976074 13 L 28.83382987976074 11 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_964fkb =
    '<svg viewBox="95.2 315.1 280.3 181.3" ><path transform="translate(95.75, 496.33)" d="M 279.7505798339844 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(95.75, 405.22)" d="M 279.7505798339844 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(95.25, 315.06)" d="M 279.7505798339844 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ktysle =
    '<svg viewBox="0.0 0.0 43.2 46.6" ><path  d="M 0 0 L 43.185791015625 0 L 43.185791015625 46.56280517578125 L 0 46.56280517578125 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fbztm2 =
    '<svg viewBox="5.0 5.0 33.2 36.6" ><path transform="translate(0.0, 0.0)" d="M 38.18579864501953 25.89303398132324 L 23.96331214904785 25.89303398132324 L 23.96331214904785 41.56280899047852 L 19.22248649597168 41.56280899047852 L 19.22248649597168 25.89303398132324 L 5.000000953674316 25.89303398132324 L 5.000000953674316 20.66977500915527 L 19.22248649597168 20.66977500915527 L 19.22248649597168 4.999999046325684 L 23.96331214904785 4.999999046325684 L 23.96331214904785 20.66977500915527 L 38.18579864501953 20.66977500915527 L 38.18579864501953 25.89303398132324 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_skjhsq =
    '<svg viewBox="59.5 226.5 294.9 406.3" ><path transform="translate(59.5, 226.5)" d="M 1 0 L 0 296" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(83.44, 632.83)" d="M 0 0 L 271 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
