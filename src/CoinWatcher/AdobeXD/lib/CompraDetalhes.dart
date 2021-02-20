import 'package:flutter/material.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:adobe_xd/pinned.dart';
import './HomeListarCompras.dart';
import 'package:adobe_xd/page_link.dart';
import './PopupFltrarItem.dart';
import './ItemDetalhes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompraDetalhes extends StatelessWidget {
  CompraDetalhes({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
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
            offset: Offset(47.6, 33.0),
            child: SizedBox(
              width: 341.0,
              child: Text(
                'Compra 1',
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
          Transform.translate(
            offset: Offset(26.8, 45.1),
            child:
                // Adobe XD layer: 'keyboard_backspace-…' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => HomeListarCompras(),
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
            offset: Offset(43.1, 147.0),
            child: Text(
              'Comprador',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 33,
                color: const Color(0xfff38282),
                height: 1.7878787878787878,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(43.1, 193.0),
            child: SizedBox(
              width: 274.0,
              height: 32.0,
              child: Text(
                'Local de compra 1',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 2.8095238095238093,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 320.0),
            child: Container(
              width: 302.0,
              height: 65.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 320.0),
            child: SizedBox(
              width: 64.0,
              height: 65.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.5, 64.0, 64.0),
                    size: Size(64.0, 65.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'search-24px' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 64.0, 64.0),
                          size: Size(64.0, 64.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_hb3thh,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.0, 8.0, 46.6, 46.6),
                          size: Size(64.0, 64.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_y9lhtx,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 64.0, 65.0),
                    size: Size(64.0, 65.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(60.5, 334.0),
            child: SizedBox(
              width: 270.0,
              child: Text(
                'buscar item por nome',
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
            offset: Offset(83.0, 379.0),
            child: SvgPicture.string(
              _svg_5supfe,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(321.0, 320.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => PopupFltrarItem(),
                ),
              ],
              child: SizedBox(
                width: 63.0,
                height: 59.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(2.0, 0.0, 59.0, 59.0),
                      size: Size(63.0, 59.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'filter_alt-24px' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 59.0, 59.0),
                            size: Size(59.0, 59.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              _svg_ttkz54,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(9.9, 9.8, 39.1, 39.3),
                            size: Size(59.0, 59.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              _svg_sjkpte,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 59.0, 59.0),
                            size: Size(59.0, 59.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              _svg_clvnfl,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 63.0, 59.0),
                      size: Size(63.0, 59.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff38282),
                          border: Border.all(
                              width: 37.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 402.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => ItemDetalhes(),
                ),
              ],
              child: Container(
                width: 365.0,
                height: 140.0,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff757575)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 553.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => ItemDetalhes(),
                ),
              ],
              child: Container(
                width: 365.0,
                height: 140.0,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff757575)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 705.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => ItemDetalhes(),
                ),
              ],
              child: Container(
                width: 365.0,
                height: 140.0,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff757575)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(68.8, 410.0),
            child: SizedBox(
              width: 86.0,
              child: Text(
                'Item 1',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 26,
                  color: const Color(0xfff38282),
                  height: 2.269230769230769,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(70.8, 561.0),
            child: SizedBox(
              width: 86.0,
              child: Text(
                'Item 2',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 26,
                  color: const Color(0xfff38282),
                  height: 2.269230769230769,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(70.8, 713.0),
            child: SizedBox(
              width: 86.0,
              child: Text(
                'Item 3',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 26,
                  color: const Color(0xfff38282),
                  height: 2.269230769230769,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(260.5, 512.5),
            child: Text(
              'adicionado em',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 18,
                color: const Color(0xfff38282),
                height: 3.2777777777777777,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(262.5, 663.5),
            child: Text(
              'adicionado em',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 18,
                color: const Color(0xfff38282),
                height: 3.2777777777777777,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(262.5, 815.5),
            child: Text(
              'adicionado em',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 18,
                color: const Color(0xfff38282),
                height: 3.2777777777777777,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(49.9, 450.5),
            child: SizedBox(
              width: 260.0,
              child: Text(
                'Quantidade Comprada:',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 2.8095238095238093,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(51.9, 601.5),
            child: SizedBox(
              width: 260.0,
              child: Text(
                'Quantidade Comprada:',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 2.8095238095238093,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(51.9, 753.5),
            child: SizedBox(
              width: 260.0,
              child: Text(
                'Quantidade Comprada:',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 2.8095238095238093,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(59.7, 489.0),
            child: SizedBox(
              width: 136.0,
              child: Text(
                'Custo Total:',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 2.8095238095238093,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(61.7, 640.0),
            child: SizedBox(
              width: 136.0,
              child: Text(
                'Custo Total:',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 2.8095238095238093,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(61.7, 792.0),
            child: SizedBox(
              width: 136.0,
              child: Text(
                'Custo Total:',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 2.8095238095238093,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(291.0, 181.0),
            child: Container(
              width: 90.0,
              height: 93.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xfff38282), const Color(0xffffffff)],
                  stops: [0.0, 1.0],
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 4),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(313.5, 202.1),
            child:
                // Adobe XD layer: 'mode_edit-24px' (group)
                SizedBox(
              width: 46.0,
              height: 51.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 46.5, 51.4),
                    size: Size(46.5, 51.4),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_faz08y,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.0, 3.0, 40.5, 45.4),
                    size: Size(46.5, 51.4),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_ieim1u,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(44.0, 258.0),
            child: SizedBox(
              width: 252.0,
              height: 32.0,
              child: Text(
                'Comprado em',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 2.8095238095238093,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.1, 227.5),
            child: SizedBox(
              width: 252.0,
              height: 32.0,
              child: Text(
                'Total da compra:',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                  height: 2.8095238095238093,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(299.0, 746.0),
            child: Container(
              width: 90.0,
              height: 93.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xfff38282), const Color(0xffffffff)],
                  stops: [0.0, 1.0],
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 4),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(322.4, 769.2),
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
        ],
      ),
    );
  }
}

const String _svg_tt5tv6 =
    '<svg viewBox="0.0 0.0 29.7 44.5" ><path  d="M 0 0 L 29.70503234863281 0 L 29.70503234863281 44.54024505615234 L 0 44.54024505615234 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mspy6k =
    '<svg viewBox="6.9 22.4 25.8 12.0" ><path transform="translate(3.87, 16.45)" d="M 28.83382987976074 11 L 8.496865272521973 11 L 13.63492679595947 7.409999847412109 L 11.61127758026123 6 L 2.999999523162842 12 L 11.61127758026123 18 L 13.63492679595947 16.59000015258789 L 8.496865272521973 13 L 28.83382987976074 13 L 28.83382987976074 11 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hb3thh =
    '<svg viewBox="0.0 0.0 64.0 64.0" ><path  d="M 0 0 L 64 0 L 64 64 L 0 64 L 0 0 Z" fill="none" stroke="none" stroke-width="2.6666667461395264" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y9lhtx =
    '<svg viewBox="8.0 8.0 46.6 46.6" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fff38282"  /><stop offset="1.0" stop-color="#ffffffff"  /></linearGradient></defs><path  d="M 41.33333587646484 37.33333587646484 L 39.22666931152344 37.33333587646484 L 38.48000335693359 36.61333465576172 C 41.09333419799805 33.57333374023438 42.66666793823242 29.62666702270508 42.66666793823242 25.33333396911621 C 42.66666793823242 15.76000022888184 34.90666961669922 8 25.33333396911621 8 C 15.76000022888184 8 8 15.76000022888184 8 25.33333396911621 C 8 34.90666961669922 15.76000022888184 42.66666793823242 25.33333396911621 42.66666793823242 C 29.62666702270508 42.66666793823242 33.57333374023438 41.09333419799805 36.61333465576172 38.48000335693359 L 37.33333587646484 39.22666931152344 L 37.33333587646484 41.33333587646484 L 50.66666793823242 54.63999938964844 L 54.63999938964844 50.66666793823242 L 41.33333587646484 37.33333587646484 Z M 25.33333396911621 37.33333587646484 C 18.69333457946777 37.33333587646484 13.33333396911621 31.97333335876465 13.33333396911621 25.33333396911621 C 13.33333396911621 18.69333457946777 18.69333457946777 13.33333396911621 25.33333396911621 13.33333396911621 C 31.97333335876465 13.33333396911621 37.33333587646484 18.69333457946777 37.33333587646484 25.33333396911621 C 37.33333587646484 31.97333335876465 31.97333335876465 37.33333587646484 25.33333396911621 37.33333587646484 Z" fill="url(#gradient)" stroke="none" stroke-width="2.6666667461395264" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ttkz54 =
    '<svg viewBox="0.0 0.0 59.0 59.0" ><path  d="M 0 0 L 59 0 M 59 59 L 0 59" fill="none" stroke="#fffbfb" stroke-width="2.4583332538604736" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sjkpte =
    '<svg viewBox="9.9 9.8 39.1 39.3" ><path  d="M 10.44791603088379 13.79125022888184 C 15.41374969482422 20.15833282470703 24.58333206176758 31.95833206176758 24.58333206176758 31.95833206176758 L 24.58333206176758 46.70833206176758 C 24.58333206176758 48.0604133605957 25.68958282470703 49.16666412353516 27.04166603088379 49.16666412353516 L 31.95833206176758 49.16666412353516 C 33.31041717529297 49.16666412353516 34.41666412353516 48.0604133605957 34.41666412353516 46.70833206176758 L 34.41666412353516 31.95833206176758 C 34.41666412353516 31.95833206176758 43.56166458129883 20.15833282470703 48.52749633789063 13.79125022888184 C 49.78125 12.16874885559082 48.62583160400391 9.833333015441895 46.58541870117188 9.833333015441895 L 12.38999938964844 9.833333015441895 C 10.34958267211914 9.833333015441895 9.19416618347168 12.16874885559082 10.44791603088379 13.79125022888184 Z" fill="#f38282" stroke="#fffbfb" stroke-width="2.4583332538604736" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_clvnfl =
    '<svg viewBox="0.0 0.0 59.0 59.0" ><path  d="M 0 0 L 59 0 L 59 59 L 0 59 L 0 0 Z" fill="none" stroke="#fffbfb" stroke-width="2.4583332538604736" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5supfe =
    '<svg viewBox="83.0 379.0 238.0 1.0" ><path transform="translate(83.0, 379.0)" d="M 238 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_faz08y =
    '<svg viewBox="0.0 0.0 46.5 51.4" ><path  d="M 0 0 L 46.491943359375 0 L 46.491943359375 51.40966796875 L 0 51.40966796875 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ieim1u =
    '<svg viewBox="3.0 3.0 40.5 45.4" ><path transform="translate(0.0, 0.0)" d="M 2.999999523162842 38.95011520385742 L 2.999999523162842 48.40966796875 L 11.43517112731934 48.40966796875 L 36.31330108642578 20.51028442382813 L 27.87812995910645 11.05073165893555 L 2.999999523162842 38.95011520385742 Z M 42.83649826049805 13.19489860534668 C 43.71375274658203 12.21110534667969 43.71375274658203 10.621901512146 42.83649826049805 9.638108253479004 L 37.57294845581055 3.735345363616943 C 36.69569396972656 2.751551628112793 35.27858352661133 2.751551628112793 34.40132904052734 3.735345363616943 L 30.28496360778809 8.351608276367188 L 38.72013473510742 17.8111629486084 L 42.83649826049805 13.19490146636963 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ktysle =
    '<svg viewBox="0.0 0.0 43.2 46.6" ><path  d="M 0 0 L 43.185791015625 0 L 43.185791015625 46.56280517578125 L 0 46.56280517578125 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fbztm2 =
    '<svg viewBox="5.0 5.0 33.2 36.6" ><path transform="translate(0.0, 0.0)" d="M 38.18579864501953 25.89303398132324 L 23.96331214904785 25.89303398132324 L 23.96331214904785 41.56280899047852 L 19.22248649597168 41.56280899047852 L 19.22248649597168 25.89303398132324 L 5.000000953674316 25.89303398132324 L 5.000000953674316 20.66977500915527 L 19.22248649597168 20.66977500915527 L 19.22248649597168 4.999999046325684 L 23.96331214904785 4.999999046325684 L 23.96331214904785 20.66977500915527 L 38.18579864501953 20.66977500915527 L 38.18579864501953 25.89303398132324 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
