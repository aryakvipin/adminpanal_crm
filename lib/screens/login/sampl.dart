import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Foo(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //This is no longer needed with Consumer
    //var value = Provider.of<Foo>(context).value;
    //print(value);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Logged In or Logged Out'),
          ),
          body: Column(
            children: [

              Center(
                  child: ElevatedButton(
                    onPressed: () {
                      //Call the method _goodBye from Foo using provider
                      Provider.of<Foo>(context, listen: false)._goodBye();
                    },
                    child: Text('Login', style: TextStyle(fontSize: 20)),
                  )),
              Center(
                  child: ElevatedButton(
                    onPressed: () {
                      //Call the method _goodBye from Foo using provider
                      Provider.of<Foo>(context, listen: false)._reset();
                      //print(value);
                    },
                    child: Text('Logout', style: TextStyle(fontSize: 20)),
                  )
              ),
              Consumer<Foo>(
                  builder: (_, foo, child) =>
                  //result = testCondition ? trueValue : falseValue
                  foo.value ? Text("Home") : Text("Please Sign In")
              ),
            ],
          )),
    );
  }
}

class Foo extends ChangeNotifier {
//Initial private state of the value
  var _value = false;

//Getter
  bool get value {
    return _value;
  }

//Method to Update Value
  _goodBye() {
    _value = true;
    notifyListeners();
  }

//Method to Reset
  _reset() {
    _value = false;
    notifyListeners();
  }
}