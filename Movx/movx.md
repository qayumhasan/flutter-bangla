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
