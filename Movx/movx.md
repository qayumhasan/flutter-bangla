## In App Store AppStore.dart File
```
import 'package:mobx/mobx.dart';
part 'AppStore.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
```

## In Main.dart File
```
  import 'package:flutter_mobx/flutter_mobx.dart';
  import 'store/AppStore.dart';
  
  AppStore appStore = AppStore();
  
      return Observer(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(widget.title),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () => appStore.increment(),
                      child: Text(
                        '${appStore.value}',
                      ),
                    )
                  ],
                ),
              ),
            ));
```

## Build Command  
In AppStore.dart file write 
```

part 'AppStore.g.dart';

class AppStore = _AppStore with _$AppStore;
```
Than command this line
  ```
  flutter packages pub run build_runner build
  ```
  
  Before this you need to install two packages  mobx_codegen: ^2.0.4
 build_runner: ^2.1.7
  
  
 ## Packages
 ```
  flutter_mobx: ^2.0.2
  mobx: ^2.0.5
 ```
 ## dev
 ```
 mobx_codegen: ^2.0.4
 build_runner: ^2.1.7
 ```
