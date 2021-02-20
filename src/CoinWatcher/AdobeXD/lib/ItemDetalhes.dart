import 'package:flutter/material.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemDetalhes extends StatelessWidget {
  ItemDetalhes({
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
            offset: Offset(10.4, 33.0),
            child: SizedBox(
              width: 391.0,
              child: Text(
                'Editar Item',
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
            offset: Offset(64.0, 287.0),
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
            offset: Offset(64.0, 213.0),
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
            offset: Offset(64.0, 371.0),
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
            offset: Offset(74.0, 304.0),
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
            offset: Offset(74.0, 230.0),
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
            offset: Offset(74.0, 388.0),
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
            offset: Offset(64.7, 277.1),
            child: SvgPicture.string(
              _svg_vecn1o,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(297.4, 490.2),
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
            offset: Offset(237.0, 490.0),
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
            offset: Offset(251.5, 506.5),
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
          Transform.translate(
            offset: Offset(130.4, 490.2),
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
            offset: Offset(32.0, 490.0),
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
            offset: Offset(69.5, 506.5),
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
        ],
      ),
    );
  }
}

const String _svg_ktysle =
    '<svg viewBox="0.0 0.0 43.2 46.6" ><path  d="M 0 0 L 43.185791015625 0 L 43.185791015625 46.56280517578125 L 0 46.56280517578125 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fbztm2 =
    '<svg viewBox="5.0 5.0 33.2 36.6" ><path transform="translate(0.0, 0.0)" d="M 38.18579864501953 25.89303398132324 L 23.96331214904785 25.89303398132324 L 23.96331214904785 41.56280899047852 L 19.22248649597168 41.56280899047852 L 19.22248649597168 25.89303398132324 L 5.000000953674316 25.89303398132324 L 5.000000953674316 20.66977500915527 L 19.22248649597168 20.66977500915527 L 19.22248649597168 4.999999046325684 L 23.96331214904785 4.999999046325684 L 23.96331214904785 20.66977500915527 L 38.18579864501953 20.66977500915527 L 38.18579864501953 25.89303398132324 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vecn1o =
    '<svg viewBox="64.7 277.1 279.8 157.3" ><path transform="translate(64.75, 434.33)" d="M 279.7505798339844 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(64.75, 349.22)" d="M 279.7505798339844 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(64.75, 277.06)" d="M 279.7505798339844 0 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
