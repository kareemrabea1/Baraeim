import 'package:dio/dio.dart';

import '../../../strings.dart';

class SendQuestionAnswer {
 static Dio dio = Dio();

 static Future<Map<String, dynamic>> getHealthyDietData({required int id}) async {
    try{ Response response = await dio.post(

      'https://education.x-coders.net/api/fetch-home',
      data: {
       'inputData[]':[]
      },
      options: Options(

        headers: {
          'auth': apiToken,
        },
      ),
    );
print('abdo data ${response.data}');
print('abdo states ${response.data['status']}');
    return response.data;
    }catch(e){
      print(e);
      return {};
    }

  }}
