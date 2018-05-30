library model.comun;

import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'comun_model.g.dart';

///Modelo de datos basado en ComunBean que se usa en el projecto de java
class ComunModel {
  ///ID
  num id;

  ///Codigo
  String codigo;

  ///Descripcion
  String descripcion;

  @override
  String toString() {
    return 'ComunModel{id: $id, codigo: $codigo, descripcion: $descripcion}';
  }

  ComunModel();

  ComunModel.full(this.id, this.codigo, this.descripcion);

}

@GenSerializer()
class ComunModelSerializer extends Serializer<ComunModel>
    with _$ComunModelSerializer {
  ComunModel createModel() => new ComunModel();
}
