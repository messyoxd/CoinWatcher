import 'package:CoinWatcher/app/modules/compras/compras_controller.dart';
import 'package:CoinWatcher/app/shared/widgets/formfields.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ComprasEditar extends StatefulWidget {
  @override
  _ComprasEditarState createState() => _ComprasEditarState();
}

class _ComprasEditarState
    extends ModularState<ComprasEditar, ComprasController> {
  Function isEmptyValidation = (value) {
    if (value.isEmpty) {
      return 'Campo obrigatório.';
    }
    return null;
  };
  var compraNomeController = TextEditingController();
  var compradorNomeController = TextEditingController();
  var localDaCompraController = TextEditingController();
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
                          "Editar Compra",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FormFieldCustom(
              controller: compraNomeController,
              campo: 'Nome da compra',
              icon: Icons.edit,
              type: TextInputType.text,
            ),
            FormFieldCustom(
              controller: compradorNomeController,
              campo: 'Nome do Comprador',
              icon: Icons.person_outline,
              type: TextInputType.text,
            ),
            FormFieldCustom(
              controller: localDaCompraController,
              campo: 'Local da compra',
              icon: Icons.shop,
              type: TextInputType.text,
            ),
            ButtonBar(
              children: [
                Container(
                    width: 144.0,
                    height: 68.0,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(65.0),
                      color: const Color(0xff707070),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 144.0,
                  height: 68.0,
                  child: FlatButton(
                    onPressed: () async {
                      if (await controller.editarCompra(
                            controller.detalhesCompra,
                            compraNomeController.text,
                            compradorNomeController.text,
                            localDaCompraController.text,
                          ) ==
                          1) {
                        compraNomeController.text = "";
                        compradorNomeController.text = "";
                        localDaCompraController.text = "";
                        Navigator.pop(context);
                      }
                    },
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(65.0),
                    color: const Color(0xfff38282),
                    border:
                        Border.all(width: 1.0, color: const Color(0xfff38282)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
