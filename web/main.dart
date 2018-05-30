import 'dart:html';
import 'package:jaguar_client/jaguar_client.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'comun_model.dart';

void main() async{
  querySelector('#output').text = 'Your Dart app is running.';

  String body = '[{"id":1,"codigo":"IBT","descripcion":"Instalaciones eléctricas de baja tensión"}]';

  JsonRepo repo = new JsonRepo(serializers: [
      new ComunModelSerializer(), ]);

  JsonResponse resp = new JsonResponse(repo,body: body);

  List<ComunModel> list1 = resp.decodeList<ComunModel>();
  print(list1.first);
  List<ComunModel> lista = (resp.decodeList<ComunModel>()).map((e) => new ComunModelSerializer().deserialize(e)).toList();
  print(lista.first);

}
