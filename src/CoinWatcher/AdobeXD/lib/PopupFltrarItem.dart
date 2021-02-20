import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './CompraDetalhes.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopupFltrarItem extends StatelessWidget {
  PopupFltrarItem({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(48.0, 117.0),
            child: Container(
              width: 336.0,
              height: 65.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(48.0, 208.0),
            child: Container(
              width: 336.0,
              height: 65.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.8, 132.0),
            child: SizedBox(
              width: 326.0,
              child: Text(
                'Quantidade Comprada',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 27,
                  color: const Color(0xfff38282),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(6.1, 7.0),
            child: SizedBox(
              width: 419.0,
              child: Text(
                'Filtros',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 31,
                  color: const Color(0xfff38282),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(47.8, 222.0),
            child: SizedBox(
              width: 338.0,
              child: Text(
                'Quantidade Comprada',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 28,
                  color: const Color(0xfff38282),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(222.0, 458.0),
            child: Container(
              width: 168.0,
              height: 59.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(222.0, 335.0),
            child: Container(
              width: 168.0,
              height: 59.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(41.0, 458.0),
            child: Container(
              width: 168.0,
              height: 59.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(41.0, 335.0),
            child: Container(
              width: 168.0,
              height: 59.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(40.3, 408.5),
            child: SizedBox(
              width: 350.0,
              child: Text(
                'Intervalo de Criação da Compra',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(60.7, 292.5),
            child: SizedBox(
              width: 310.0,
              child: Text(
                'Intervalo de Custo dos Itens',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 21,
                  color: const Color(0xfff38282),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(306.4, 545.2),
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
            offset: Offset(246.0, 545.0),
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
            offset: Offset(260.5, 561.5),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => CompraDetalhes(),
                ),
              ],
              child: Text(
                'Confirmar',
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
            offset: Offset(14.9, 71.5),
            child: SizedBox(
              width: 403.0,
              child: Text(
                'Ordenar por:',
                style: TextStyle(
                  fontFamily: 'Leelawadee UI',
                  fontSize: 28,
                  color: const Color(0xfff38282),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(139.4, 545.2),
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
            offset: Offset(41.0, 545.0),
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
            offset: Offset(78.5, 561.5),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => CompraDetalhes(),
                ),
              ],
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
          ),
        ],
      ),
    );
  }
}

const String _svg_ktysle =
    '<svg viewBox="0.0 0.0 43.2 46.6" ><path  d="M 0 0 L 43.185791015625 0 L 43.185791015625 46.56280517578125 L 0 46.56280517578125 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fbztm2 =
    '<svg viewBox="5.0 5.0 33.2 36.6" ><path transform="translate(0.0, 0.0)" d="M 38.18579864501953 25.89303398132324 L 23.96331214904785 25.89303398132324 L 23.96331214904785 41.56280899047852 L 19.22248649597168 41.56280899047852 L 19.22248649597168 25.89303398132324 L 5.000000953674316 25.89303398132324 L 5.000000953674316 20.66977500915527 L 19.22248649597168 20.66977500915527 L 19.22248649597168 4.999999046325684 L 23.96331214904785 4.999999046325684 L 23.96331214904785 20.66977500915527 L 38.18579864501953 20.66977500915527 L 38.18579864501953 25.89303398132324 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
