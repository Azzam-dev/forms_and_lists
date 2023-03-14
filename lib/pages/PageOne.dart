import 'package:flutter/material.dart';

enum ProjectStatus {
  cancelled,
  review,
  approve,
  completed,
}

class PageOne extends StatefulWidget {
  PageOne({
    super.key,
  });

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String projectName = "";

  String projectManager = "";

  ProjectStatus? projectStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              Container(
                // العنوان
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: Text(
                    'فضلا قم بادخال بيانات المشروع',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      label: Center(
                        child: Text(
                          "اسم المشروع",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      hintText: "ادخل اسم المشروع"),
                ),
              ),
              Container(
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      label: Center(
                        child: Text(
                          "اسم مدير المشروع",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      hintText: "فضلا ادخل اسم مدير المشروع"),
                ),
              ),
              Container(
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(),
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      label: Center(
                        child: Text(
                          "قيمة المشروع",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      hintText: "0"),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              "مقبول",
                              textAlign: TextAlign.right,
                            )),
                            Radio(
                              value: ProjectStatus.approve,
                              groupValue: projectStatus,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              "ملغي",
                              textAlign: TextAlign.right,
                            )),
                            Radio(
                              value: ProjectStatus.cancelled,
                              groupValue: projectStatus,
                              onChanged: (value) {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              "مكتمل",
                              textAlign: TextAlign.right,
                            )),
                            Radio(
                              value: ProjectStatus.completed,
                              groupValue: projectStatus,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "تحت المراجعة",
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Radio(
                              value: ProjectStatus.review,
                              groupValue: projectStatus,
                              onChanged: (value) {},
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(onPressed: () {}, child: Text("اضافة المشروع"))
            ],
          ),
        ),
      ),
    );
  }
}
