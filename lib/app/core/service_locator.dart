// import 'package:get_it_injectable_example/app/models/random_01_factory_model.dart';

// import 'package:get_it_injectable_example/app/models/random_02_singleton_model.dart';
// import 'package:get_it_injectable_example/app/models/random_03_lazy_singleton_model.dart';

// void configureDependecies() {
//   final getIt = GetIt.I;
//   //pode instanciar QUANTAS VEZES QUISER no sistema A QUALQUER MOMENTO
//   getIt.registerFactory(() => RandomFactoryModel());
//   //instancia UMA UNICA VEZ no sistema no INICIO do sistema
//   getIt.registerSingleton(RandomSingletonModel());
//   //instancia UMA UNICA VEZ no sistema QUANDO CHAMADO dentro do sistema
//   getIt.registerLazySingleton(() => RandomLazySingletonModel());
// }



//https://pub.dev/packages/injectable

import 'package:get_it/get_it.dart';
import 'package:get_it_injectable_example/app/core/service_locator.config.dart';
import 'package:injectable/injectable.dart';
	
final getIt = GetIt.instance;  
  
@InjectableInit(  
  initializerName: 'init', // default  
  preferRelativeImports: true, // default  
  asExtension: true, // default  
)  
void configureDependencies() => getIt.init(getIt);  