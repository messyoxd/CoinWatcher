import 'package:flutter/material.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:adobe_xd/pinned.dart';
import './Home.dart';
import 'package:adobe_xd/page_link.dart';
import './HomeListarCompras.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdicionarCompra2 extends StatelessWidget {
  AdicionarCompra2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(72.0, 404.0),
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
            offset: Offset(72.0, 330.0),
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
            offset: Offset(72.0, 488.0),
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
            offset: Offset(89.0, 242.0),
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
            offset: Offset(82.0, 421.0),
            child: Text(
              'Quantidade Comprada',
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
            offset: Offset(82.0, 347.0),
            child: Text(
              'Nome do Item',
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
            offset: Offset(82.0, 505.0),
            child: Text(
              'Custo do item',
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
            offset: Offset(72.7, 394.1),
            child: SvgPicture.string(
              _svg_6zgice,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(28.0, 169.0),
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
            offset: Offset(28.0, 253.0),
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
            offset: Offset(70.7, 177.0),
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
            offset: Offset(70.7, 260.0),
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
            offset: Offset(52.5, 313.9),
            child: SvgPicture.string(
              _svg_qlbz7q,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(46.6, 47.0),
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
            offset: Offset(71.2, 58.0),
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
            offset: Offset(22.6, 52.1),
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
            offset: Offset(52.5, 231.5),
            child: SvgPicture.string(
              _svg_sk4c00,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(290.4, 774.2),
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
            offset: Offset(136.4, 774.2),
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
            offset: Offset(230.0, 774.0),
            child: Container(
              width: 144.0,
              height: 68.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(65.0),
                color: const Color(0xfff38282),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(38.0, 774.0),
            child: Container(
              width: 144.0,
              height: 68.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(65.0),
                color: const Color(0xff888585),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(277.0, 790.5),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => HomeListarCompras(),
                ),
              ],
              child: Text(
                'Criar',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 26,
                  color: const Color(0xffffffff),
                  height: 2.269230769230769,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(75.5, 790.5),
            child: Text(
              'Voltar',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 26,
                color: const Color(0xffffffff),
                height: 2.269230769230769,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(290.7, 568.8),
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
            offset: Offset(250.0, 569.5),
            child: Container(
              width: 99.4,
              height: 33.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xfff38282),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(262.0, 574.0),
            child: Text(
              'Adicionar',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 18,
                color: const Color(0xffffffff),
                height: 2.2777777777777777,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(127.7, 568.3),
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
            offset: Offset(87.0, 569.1),
            child: Container(
              width: 99.4,
              height: 33.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xff888585),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(107.6, 574.4),
            child: SizedBox(
              width: 58.0,
              child: Text(
                'Voltar',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 18,
                  color: const Color(0xffffffff),
                  height: 2.2777777777777777,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(69.0, 628.0),
            child: Container(
              width: 287.0,
              height: 43.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(69.0, 674.0),
            child: Container(
              width: 287.0,
              height: 43.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(69.0, 720.0),
            child: Container(
              width: 287.0,
              height: 43.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(98.2, 636.0),
            child: SizedBox(
              width: 70.0,
              child: Text(
                'Item 1',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 1.9523809523809523,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(97.2, 682.0),
            child: SizedBox(
              width: 70.0,
              child: Text(
                'Item 2',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 1.9523809523809523,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(97.2, 728.0),
            child: SizedBox(
              width: 70.0,
              child: Text(
                'Item 3',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 1.9523809523809523,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(320.2, 633.0),
            child:
                // Adobe XD layer: 'close-24px' (group)
                SizedBox(
              width: 32.0,
              height: 34.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 31.8, 34.0),
                    size: Size(31.8, 34.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_i8ospw,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.0, 5.0, 21.8, 24.0),
                    size: Size(31.8, 34.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_pqq8p3,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(319.2, 679.0),
            child:
                // Adobe XD layer: 'close-24px' (group)
                SizedBox(
              width: 32.0,
              height: 34.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 31.8, 34.0),
                    size: Size(31.8, 34.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_i8ospw,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.0, 5.0, 21.8, 24.0),
                    size: Size(31.8, 34.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_pqq8p3,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(319.2, 725.0),
            child:
                // Adobe XD layer: 'close-24px' (group)
                SizedBox(
              width: 32.0,
              height: 34.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 31.8, 34.0),
                    size: Size(31.8, 34.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_i8ospw,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.0, 5.0, 21.8, 24.0),
                    size: Size(31.8, 34.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_pqq8p3,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_6zgice =
    '<svg viewBox="72.7 394.1 279.8 157.3" ><path transform="translate(72.75, 551.33)" d="M 279.7505798339844 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(72.75, 466.22)" d="M 279.7505798339844 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(72.75, 394.06)" d="M 279.7505798339844 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qlbz7q =
    '<svg viewBox="52.5 313.9 1.0 448.6" ><path transform="translate(52.5, 313.86)" d="M 0 0 L 1 448.6411743164063" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tt5tv6 =
    '<svg viewBox="0.0 0.0 29.7 44.5" ><path  d="M 0 0 L 29.70503234863281 0 L 29.70503234863281 44.54024505615234 L 0 44.54024505615234 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mspy6k =
    '<svg viewBox="6.9 22.4 25.8 12.0" ><path transform="translate(3.87, 16.45)" d="M 28.83382987976074 11 L 8.496865272521973 11 L 13.63492679595947 7.409999847412109 L 11.61127758026123 6 L 2.999999523162842 12 L 11.61127758026123 18 L 13.63492679595947 16.59000015258789 L 8.496865272521973 13 L 28.83382987976074 13 L 28.83382987976074 11 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ktysle =
    '<svg viewBox="0.0 0.0 43.2 46.6" ><path  d="M 0 0 L 43.185791015625 0 L 43.185791015625 46.56280517578125 L 0 46.56280517578125 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fbztm2 =
    '<svg viewBox="5.0 5.0 33.2 36.6" ><path transform="translate(0.0, 0.0)" d="M 38.18579864501953 25.89303398132324 L 23.96331214904785 25.89303398132324 L 23.96331214904785 41.56280899047852 L 19.22248649597168 41.56280899047852 L 19.22248649597168 25.89303398132324 L 5.000000953674316 25.89303398132324 L 5.000000953674316 20.66977500915527 L 19.22248649597168 20.66977500915527 L 19.22248649597168 4.999999046325684 L 23.96331214904785 4.999999046325684 L 23.96331214904785 20.66977500915527 L 38.18579864501953 20.66977500915527 L 38.18579864501953 25.89303398132324 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sk4c00 =
    '<svg viewBox="52.5 231.5 300.0 1.0" ><path transform="translate(52.5, 231.5)" d="M 0 0 L 300 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i8ospw =
    '<svg viewBox="0.0 0.0 31.8 34.0" ><path  d="M 0 0 L 31.8487548828125 0 L 31.8487548828125 34 L 0 34 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pqq8p3 =
    '<svg viewBox="5.0 5.0 21.8 24.0" ><path transform="translate(0.0, 0.0)" d="M 26.84875297546387 7.417142868041992 L 24.64827156066895 5 L 15.92437744140625 14.58285713195801 L 7.200480937957764 5 L 4.999999523162842 7.417142868041992 L 13.7238941192627 17 L 4.999999523162842 26.58285713195801 L 7.200480937957764 29.00000190734863 L 15.92437744140625 19.41714286804199 L 24.64827156066895 29.00000190734863 L 26.84875297546387 26.58285713195801 L 18.12485885620117 17 L 26.84875297546387 7.417142868041992 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
