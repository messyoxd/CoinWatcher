import 'package:flutter/material.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:adobe_xd/pinned.dart';
import './CompraDetalhes.dart';
import 'package:adobe_xd/page_link.dart';
import './PopupFltrarCompra.dart';
import './AdicionarCompra1.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeListarCompras extends StatelessWidget {
  HomeListarCompras({
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
            offset: Offset(47.6, 31.0),
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
          Transform.translate(
            offset: Offset(31.0, 158.0),
            child: Container(
              width: 302.0,
              height: 65.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(31.0, 158.0),
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
            offset: Offset(84.4, 150.0),
            child: SizedBox(
              width: 259.0,
              child: Text(
                'buscar por nome da compra',
                style: TextStyle(
                  fontFamily: 'Yu Gothic',
                  fontSize: 21,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(95.0, 217.0),
            child: SvgPicture.string(
              _svg_4k8zjw,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(12.0, 262.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => CompraDetalhes(),
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
            offset: Offset(12.0, 413.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => CompraDetalhes(),
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
            offset: Offset(12.0, 564.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => CompraDetalhes(),
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
            offset: Offset(12.0, 715.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => CompraDetalhes(),
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
            offset: Offset(333.0, 158.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => PopupFltrarCompra(),
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
            offset: Offset(126.8, 268.0),
            child: SizedBox(
              width: 134.0,
              child: Text(
                'Compra 1',
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
            offset: Offset(138.0, 423.0),
            child: Text(
              'Compra 2',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 26,
                color: const Color(0xfff38282),
                height: 2.269230769230769,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(138.0, 569.0),
            child: Text(
              'Compra 3',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 26,
                color: const Color(0xfff38282),
                height: 2.269230769230769,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(138.0, 719.0),
            child: Text(
              'Compra 4',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 26,
                color: const Color(0xfff38282),
                height: 2.269230769230769,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(65.6, 303.0),
            child: SizedBox(
              width: 257.0,
              child: Text(
                'Local de Compra 1',
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
            offset: Offset(86.0, 460.0),
            child: Text(
              'Local de Compra 2',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 26,
                color: const Color(0xfff38282),
                height: 2.269230769230769,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(89.0, 606.0),
            child: Text(
              'Local de Compra 3',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 26,
                color: const Color(0xfff38282),
                height: 2.269230769230769,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(87.0, 756.0),
            child: Text(
              'Local de Compra 4',
              style: TextStyle(
                fontFamily: 'Leelawadee UI',
                fontSize: 26,
                color: const Color(0xfff38282),
                height: 2.269230769230769,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(250.5, 372.5),
            child: Text(
              'Comprado em',
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
            offset: Offset(250.5, 523.5),
            child: Text(
              'Comprado em',
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
            offset: Offset(250.5, 674.5),
            child: Text(
              'Comprado em',
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
            offset: Offset(250.5, 825.5),
            child: Text(
              'Comprado em',
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
            offset: Offset(281.0, 736.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => AdicionarCompra1(),
                ),
              ],
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
                  border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
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
          ),
          Transform.translate(
            offset: Offset(304.4, 759.2),
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
            offset: Offset(67.9, 338.0),
            child: SizedBox(
              width: 258.0,
              child: Text(
                'Comprador',
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
            offset: Offset(64.5, 489.0),
            child: SizedBox(
              width: 258.0,
              child: Text(
                'Comprador',
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
            offset: Offset(67.5, 636.0),
            child: SizedBox(
              width: 258.0,
              child: Text(
                'Comprador',
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
            offset: Offset(67.5, 785.0),
            child: SizedBox(
              width: 258.0,
              child: Text(
                'Comprador',
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
        ],
      ),
    );
  }
}

const String _svg_hb3thh =
    '<svg viewBox="0.0 0.0 64.0 64.0" ><path  d="M 0 0 L 64 0 L 64 64 L 0 64 L 0 0 Z" fill="none" stroke="none" stroke-width="2.6666667461395264" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y9lhtx =
    '<svg viewBox="8.0 8.0 46.6 46.6" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fff38282"  /><stop offset="1.0" stop-color="#ffffffff"  /></linearGradient></defs><path  d="M 41.33333587646484 37.33333587646484 L 39.22666931152344 37.33333587646484 L 38.48000335693359 36.61333465576172 C 41.09333419799805 33.57333374023438 42.66666793823242 29.62666702270508 42.66666793823242 25.33333396911621 C 42.66666793823242 15.76000022888184 34.90666961669922 8 25.33333396911621 8 C 15.76000022888184 8 8 15.76000022888184 8 25.33333396911621 C 8 34.90666961669922 15.76000022888184 42.66666793823242 25.33333396911621 42.66666793823242 C 29.62666702270508 42.66666793823242 33.57333374023438 41.09333419799805 36.61333465576172 38.48000335693359 L 37.33333587646484 39.22666931152344 L 37.33333587646484 41.33333587646484 L 50.66666793823242 54.63999938964844 L 54.63999938964844 50.66666793823242 L 41.33333587646484 37.33333587646484 Z M 25.33333396911621 37.33333587646484 C 18.69333457946777 37.33333587646484 13.33333396911621 31.97333335876465 13.33333396911621 25.33333396911621 C 13.33333396911621 18.69333457946777 18.69333457946777 13.33333396911621 25.33333396911621 13.33333396911621 C 31.97333335876465 13.33333396911621 37.33333587646484 18.69333457946777 37.33333587646484 25.33333396911621 C 37.33333587646484 31.97333335876465 31.97333335876465 37.33333587646484 25.33333396911621 37.33333587646484 Z" fill="url(#gradient)" stroke="none" stroke-width="2.6666667461395264" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4k8zjw =
    '<svg viewBox="95.0 217.0 238.0 1.0" ><path transform="translate(95.0, 217.0)" d="M 238 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ttkz54 =
    '<svg viewBox="0.0 0.0 59.0 59.0" ><path  d="M 0 0 L 59 0 M 59 59 L 0 59" fill="none" stroke="#fffbfb" stroke-width="2.4583332538604736" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sjkpte =
    '<svg viewBox="9.9 9.8 39.1 39.3" ><path  d="M 10.44791603088379 13.79125022888184 C 15.41374969482422 20.15833282470703 24.58333206176758 31.95833206176758 24.58333206176758 31.95833206176758 L 24.58333206176758 46.70833206176758 C 24.58333206176758 48.0604133605957 25.68958282470703 49.16666412353516 27.04166603088379 49.16666412353516 L 31.95833206176758 49.16666412353516 C 33.31041717529297 49.16666412353516 34.41666412353516 48.0604133605957 34.41666412353516 46.70833206176758 L 34.41666412353516 31.95833206176758 C 34.41666412353516 31.95833206176758 43.56166458129883 20.15833282470703 48.52749633789063 13.79125022888184 C 49.78125 12.16874885559082 48.62583160400391 9.833333015441895 46.58541870117188 9.833333015441895 L 12.38999938964844 9.833333015441895 C 10.34958267211914 9.833333015441895 9.19416618347168 12.16874885559082 10.44791603088379 13.79125022888184 Z" fill="#f38282" stroke="#fffbfb" stroke-width="2.4583332538604736" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_clvnfl =
    '<svg viewBox="0.0 0.0 59.0 59.0" ><path  d="M 0 0 L 59 0 L 59 59 L 0 59 L 0 0 Z" fill="none" stroke="#fffbfb" stroke-width="2.4583332538604736" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ktysle =
    '<svg viewBox="0.0 0.0 43.2 46.6" ><path  d="M 0 0 L 43.185791015625 0 L 43.185791015625 46.56280517578125 L 0 46.56280517578125 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fbztm2 =
    '<svg viewBox="5.0 5.0 33.2 36.6" ><path transform="translate(0.0, 0.0)" d="M 38.18579864501953 25.89303398132324 L 23.96331214904785 25.89303398132324 L 23.96331214904785 41.56280899047852 L 19.22248649597168 41.56280899047852 L 19.22248649597168 25.89303398132324 L 5.000000953674316 25.89303398132324 L 5.000000953674316 20.66977500915527 L 19.22248649597168 20.66977500915527 L 19.22248649597168 4.999999046325684 L 23.96331214904785 4.999999046325684 L 23.96331214904785 20.66977500915527 L 38.18579864501953 20.66977500915527 L 38.18579864501953 25.89303398132324 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
