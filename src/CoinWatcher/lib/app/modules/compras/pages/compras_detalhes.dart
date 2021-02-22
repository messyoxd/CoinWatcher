import 'package:CoinWatcher/app/modules/compras/compras_controller.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

class ComprasDetalhes extends StatefulWidget {
  @override
  _ComprasDetalhesState createState() => _ComprasDetalhesState();
}

class _ComprasDetalhesState
    extends ModularState<ComprasDetalhes, ComprasController> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller
          .numeroItensPorLocal(controller.detalhesCompra.localDeCompra.idLocal);
      controller.custoTotalCompra(controller.detalhesCompra.idCompra);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.detalhesCompra = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xffffffff),
          flexibleSpace: Row(
            children: [
              Stack(
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
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                      ),
                      Center(
                        child: Text(
                          controller.detalhesCompra.nomeCompra,
                          style: TextStyle(
                            fontFamily: 'Yu Gothic',
                            fontSize: 35,
                            color: const Color(0xffffffff),
                            height: 1.21875,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Observer(
            builder: (BuildContext context) {
              return controller.loading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    color: Color(0xfff38282),
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/compra-editar");
                                    },
                                    child: Icon(Icons.edit),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.detalhesCompra.comprador.nome,
                                      style: TextStyle(
                                        fontFamily: 'Leelawadee UI',
                                        fontSize: 33,
                                        color: const Color(0xfff38282),
                                        height: 1.7878787878787878,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      controller
                                          .detalhesCompra.localDeCompra.nome,
                                      style: TextStyle(
                                        fontFamily: 'Leelawadee UI',
                                        fontSize: 20,
                                        color: const Color(0xfff38282),
                                        height: 1.7878787878787878,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Custo Total: ${controller.custoTotal}",
                                      style: TextStyle(
                                        fontFamily: 'Leelawadee UI',
                                        fontSize: 20,
                                        color: const Color(0xfff38282),
                                        height: 1.7878787878787878,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Itens já comprados nesse local: ${controller.itensPorLocal}",
                                      style: TextStyle(
                                        fontFamily: 'Leelawadee UI',
                                        fontSize: 15,
                                        color: const Color(0xfff38282),
                                        height: 1.7878787878787878,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      DateFormat('yyyy-MM-dd HH:mm').format(
                                          controller.detalhesCompra.createdAt),
                                      style: TextStyle(
                                        fontFamily: 'Leelawadee UI',
                                        fontSize: 20,
                                        color: const Color(0xfff38282),
                                        height: 1.7878787878787878,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
            },
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: const Color(0xffffffff),
      //   child: Stack(
      //     children: [
      //       BlendMask(
      //         blendMode: BlendMode.multiply,
      //         child: Container(
      //           width: MediaQuery.of(context).size.width,
      //           height: MediaQuery.of(context).size.height,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.all(Radius.circular(30)),
      //             border: Border.all(width: 0.5),
      //             gradient: LinearGradient(
      //               begin: Alignment(0.0, -1.0),
      //               end: Alignment(0.0, 1.26),
      //               colors: [
      //                 const Color(0xfff38282),
      //                 const Color(0xffffffff)
      //               ],
      //               stops: [0.0, 1.0],
      //             ),
      //           ),
      //         ),
      //       ),
      //       Center(child: Icon(Icons.add))
      //     ],
      //   ),
      //   onPressed: () {
      //     Navigator.pushNamed(context, "/adicionar-item");
      //   },
      // )
    );
  }
}
