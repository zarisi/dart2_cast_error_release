// GENERATED CODE - DO NOT MODIFY BY HAND

part of model.comun;

// **************************************************************************
// Generator: JaguarSerializerGenerator
// **************************************************************************

abstract class _$ComunModelSerializer implements Serializer<ComunModel> {
  @override
  Map<String, dynamic> toMap(ComunModel model,
      {bool withType: false, String typeKey}) {
    Map<String, dynamic> ret;
    if (model != null) {
      ret = <String, dynamic>{};
      setNullableValue(ret, 'id', model.id);
      setNullableValue(ret, 'codigo', model.codigo);
      setNullableValue(ret, 'descripcion', model.descripcion);
      setTypeKeyValue(typeKey, modelString(), withType, ret);
    }
    return ret;
  }

  @override
  ComunModel fromMap(Map<String, dynamic> map, {ComunModel model}) {
    if (map == null) {
      return null;
    }
    final obj = model ?? new ComunModel();
    obj.id = map['id'] as num;
    obj.codigo = map['codigo'] as String;
    obj.descripcion = map['descripcion'] as String;
    return obj;
  }

  @override
  String modelString() => 'ComunModel';
}
