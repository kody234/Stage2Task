import 'package:flutter/material.dart';
import 'package:stage3task/compulsory_task/compulsory_task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext cgitontext) {
    return MaterialApp(
      title: 'Stage2 Task',
      home: Stage2TAsk(),
    );
  }
}

class Stage2TAsk extends StatefulWidget {
  const Stage2TAsk({Key? key}) : super(key: key);

  @override
  _Stage2TAskState createState() => _Stage2TAskState();
}

class _Stage2TAskState extends State<Stage2TAsk> {
  CompulsoryTask _compulsoryTask = CompulsoryTask();

  TextEditingController controller = TextEditingController();

  Future dialog() {
    return showDialog(context: context, builder: (_) => showAlertDialog());
  }

  AlertDialog showAlertDialog() {
    return AlertDialog(
      elevation: 24.0,
      title: Text(
        'Welcome',
        style: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 20.0, color: Colors.black54),
      ),
      content: Text(
        controller.text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    _compulsoryTask.printName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('Stage2 Task'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.grey],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/hng logo.png',
                            height: 100.0,
                            width: 300.0,
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Enter your Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        TextField(
                          controller: controller,
                          decoration: InputDecoration(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: TextButton(
                              onPressed: () => dialog(),
                              child: Container(
                                height: 60.0,
                                width: 300.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    gradient: LinearGradient(colors: [
                                      Colors.black54,
                                      Colors.white
                                    ])),
                                child: Center(
                                    child: Text(
                                  'Click the button',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                )),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
