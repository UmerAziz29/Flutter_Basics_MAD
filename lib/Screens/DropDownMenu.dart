import 'package:flutter/material.dart';
import 'package:mad_flutter/Global/MCQs.dart';

class DDM extends StatefulWidget {
  const DDM({super.key});

  @override
  State<DDM> createState() => _DDMState();
}

class _DDMState extends State<DDM> {
  //List<String> countries=['PAK',''];
  // List<Questions> qlist = [];
  List<DropdownMenuItem<String>> getMenuItems(List<String> items) {
    List<DropdownMenuItem<String>> menuItemList = [];
    for (int i = 0; i < items.length; i++) {
      DropdownMenuItem<String> menuItem = DropdownMenuItem<String>(
        value: items[i].toString(),
        child: Text(
          items[i],
          style: const TextStyle(fontSize: 20),
        ),
      );
      menuItemList.add(menuItem);
    }
    return menuItemList;
  }

  var selectedValue;
  int cAns = 0, wAns = 0;
  int r = 0, w = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drop Down Menu'),
      ),
      body: Column(
        children: [
          SizedBox(
            child: DropdownButton<String>(
              hint: const Text('Please Select Subject'),
              items: quiz
                  .map((e) => DropdownMenuItem<String>(
                        value: e.subject.toString(),
                        child: Text(e.subject.toString()),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (String? value) {
                setState(
                  () {
                    r = w = 0;
                    selectedValue = value;
                  },
                );
              },
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          selectedValue == null
              ? const Text('Please Select an Option!')
              : Expanded(
                  child: Column(
                    children: quiz
                        .where((element) => element.subject == selectedValue)
                        .first
                        .questions
                        .map((e) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                  'Q${quiz.where((element) => element.subject == selectedValue).first.questions.indexOf(e) + 1}:  ${e.qText}'),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Radio(
                                                value: e.option1,
                                                groupValue: e.selected,
                                                onChanged: (String? val) {
                                                  setState(() {
                                                    e.selected = val;
                                                    e.selected == e.correctAns
                                                        ? e.isCorrect = true
                                                        : e.isCorrect = false;
                                                  });
                                                  setState(() {
                                                    r = int.parse(quiz
                                                        .where((element) =>
                                                            element.subject ==
                                                            selectedValue)
                                                        .first
                                                        .questions
                                                        .where((element) =>
                                                            element.isCorrect ==
                                                            true)
                                                        .length
                                                        .toString());
                                                    w = int.parse(quiz
                                                        .where((element) =>
                                                            element.subject ==
                                                            selectedValue)
                                                        .first
                                                        .questions
                                                        .where((element) =>
                                                            element.isCorrect ==
                                                            false)
                                                        .length
                                                        .toString());
                                                  });
                                                }),
                                            Text(e.option1)
                                          ],
                                        ),
                                        //const SizedBox(width: 25,),
                                        Row(
                                          children: [
                                            Radio(
                                                value: e.option2,
                                                groupValue: e.selected,
                                                onChanged: (String? val) {
                                                  setState(() {
                                                    e.selected = val;
                                                    setState(() {
                                                      e.selected = val;
                                                      e.selected == e.correctAns
                                                          ? e.isCorrect = true
                                                          : e.isCorrect = false;
                                                    });
                                                    setState(() {
                                                      r = int.parse(quiz
                                                          .where((element) =>
                                                              element.subject ==
                                                              selectedValue)
                                                          .first
                                                          .questions
                                                          .where((element) =>
                                                              element
                                                                  .isCorrect ==
                                                              true)
                                                          .length
                                                          .toString());
                                                      w = int.parse(quiz
                                                          .where((element) =>
                                                              element.subject ==
                                                              selectedValue)
                                                          .first
                                                          .questions
                                                          .where((element) =>
                                                              element
                                                                  .isCorrect ==
                                                              false)
                                                          .length
                                                          .toString());
                                                    });
                                                  });
                                                }),
                                            Text(e.option2)
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Radio(
                                                value: e.option3,
                                                groupValue: e.selected,
                                                onChanged: (String? val) {
                                                  setState(() {
                                                    e.selected = val;
                                                    setState(() {
                                                      e.selected = val;
                                                      e.selected == e.correctAns
                                                          ? e.isCorrect = true
                                                          : e.isCorrect = false;
                                                    });
                                                    setState(() {
                                                      r = int.parse(quiz
                                                          .where((element) =>
                                                              element.subject ==
                                                              selectedValue)
                                                          .first
                                                          .questions
                                                          .where((element) =>
                                                              element
                                                                  .isCorrect ==
                                                              true)
                                                          .length
                                                          .toString());
                                                      w = int.parse(quiz
                                                          .where((element) =>
                                                              element.subject ==
                                                              selectedValue)
                                                          .first
                                                          .questions
                                                          .where((element) =>
                                                              element
                                                                  .isCorrect ==
                                                              false)
                                                          .length
                                                          .toString());
                                                    });
                                                  });
                                                }),
                                            Text(e.option3)
                                          ],
                                        ),
                                        //const SizedBox(width: 25,),
                                        Row(
                                          children: [
                                            Radio(
                                                value: e.option4,
                                                groupValue: e.selected,
                                                onChanged: (String? val) {
                                                  setState(() {
                                                    e.selected = val;
                                                    setState(() {
                                                      e.selected = val;
                                                      e.selected == e.correctAns
                                                          ? e.isCorrect = true
                                                          : e.isCorrect = false;
                                                    });
                                                    setState(() {
                                                      r = int.parse(quiz
                                                          .where((element) =>
                                                              element.subject ==
                                                              selectedValue)
                                                          .first
                                                          .questions
                                                          .where((element) =>
                                                              element
                                                                  .isCorrect ==
                                                              true)
                                                          .length
                                                          .toString());
                                                      w = int.parse(quiz
                                                          .where((element) =>
                                                              element.subject ==
                                                              selectedValue)
                                                          .first
                                                          .questions
                                                          .where((element) =>
                                                              element
                                                                  .isCorrect ==
                                                              false)
                                                          .length
                                                          .toString());
                                                    });
                                                  });
                                                }),
                                            Text(e.option4)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
          const Divider(
            color: Colors.black,
          ),
          Text('Correct Answers: $r '),
          Text('Wrong Answers: $w'),
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text('Check Result!'))
        ],
      ),
    );
  }
}
