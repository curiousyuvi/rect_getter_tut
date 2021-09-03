import 'package:flutter/material.dart';
import 'package:rect_getter/rect_getter.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var globalKey1 = RectGetter.createGlobalKey(),
      globalKey2 = RectGetter.createGlobalKey(),
      globalKey3 = RectGetter.createGlobalKey(),
      globalKey4 = RectGetter.createGlobalKey(),
      globalKey5 = RectGetter.createGlobalKey();

  showOverlayDot(BuildContext context, double left, double top) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
          left: left,
          top: top,
          child: Icon(
            Icons.circle,
            color: Colors.red,
          ));
    });

    overlayState.insert(overlayEntry);
    await Future.delayed(Duration(seconds: 2));
    overlayEntry.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'GeeksForGeeks',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                      child: RectGetter(
                    key: globalKey1,
                    child: GestureDetector(
                      onTap: () {
                        Rect rect = RectGetter.getRectFromKey(globalKey1);
                        var left = rect.left;
                        var top = rect.top;
                        var right = rect.right;
                        var bottom = rect.bottom;

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green,
                            content: Text(
                              'LTRB :($left, $top, $right, $bottom)',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )));
                        showOverlayDot(this.context, left, top);
                      },
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                  )),
                  Flexible(
                      child: RectGetter(
                    key: globalKey2,
                    child: GestureDetector(
                      onTap: () {
                        Rect rect = RectGetter.getRectFromKey(globalKey2);
                        var left = rect.left;
                        var top = rect.top;
                        var right = rect.right;
                        var bottom = rect.bottom;

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green,
                            content: Text(
                              'LTRB :($left, $top, $right, $bottom)',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )));
                        showOverlayDot(this.context, left, top);
                      },
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                  ))
                ],
              ),
              Flexible(
                  child: RectGetter(
                key: globalKey3,
                child: GestureDetector(
                  onTap: () {
                    Rect rect = RectGetter.getRectFromKey(globalKey3);
                    var left = rect.left;
                    var top = rect.top;
                    var right = rect.right;
                    var bottom = rect.bottom;

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        content: Text(
                          'LTRB :($left, $top, $right, $bottom)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )));
                    showOverlayDot(this.context, left, top);
                  },
                  child: Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                    size: 120,
                  ),
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                      child: RectGetter(
                    key: globalKey4,
                    child: GestureDetector(
                      onTap: () {
                        Rect rect = RectGetter.getRectFromKey(globalKey4);
                        var left = rect.left;
                        var top = rect.top;
                        var right = rect.right;
                        var bottom = rect.bottom;

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green,
                            content: Text(
                              'LTRB :($left, $top, $right, $bottom)',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )));
                        showOverlayDot(this.context, left, top);
                      },
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                  )),
                  Flexible(
                      child: RectGetter(
                    key: globalKey5,
                    child: GestureDetector(
                      onTap: () {
                        Rect rect = RectGetter.getRectFromKey(globalKey5);
                        var left = rect.left;
                        var top = rect.top;
                        var right = rect.right;
                        var bottom = rect.bottom;

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green,
                            content: Text(
                              'LTRB :($left, $top, $right, $bottom)',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )));
                        showOverlayDot(this.context, left, top);
                      },
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
