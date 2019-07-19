typedef void EventCallBack(arg);

var App = new AppManager();

class AppManager {
  AppManager._internal();

  static AppManager _singleton = new AppManager._internal();

  factory AppManager() => _singleton;

  var _emap = new Map<Object , List<EventCallBack>>();

  void on(eventName , EventCallBack f) {
    if (eventName == null || f == null) return;
    _emap[eventName] ??= new List<EventCallBack>();
    _emap[eventName].add(f);
  }

  void off(eventName , [EventCallBack f]) {
    var list = _emap[eventName];
    if (eventName == null || list == null) return;
    if (f == null) {
      _emap[eventName] = null;
    } else {
      list.remove(f);
    }
  }
  void emit(eventName , [arg]) {
    var list = _emap[eventName];
    if (list == null) return;
    int len = list.length -1 ;
    for (var i = len; i > -1; --i) {
      list[i](arg);
    }
  }
}