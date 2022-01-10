import 'package:flutter/material.dart';

class SwitchesDemo extends StatefulWidget {
  const SwitchesDemo({Key? key}) : super(key: key);

  @override
  _SwitchesDemoState createState() => _SwitchesDemoState();
}
 enum SkillLevel {junior, middle, senior}

class _SwitchesDemoState extends State<SwitchesDemo> {
  bool _checked = false;
  bool _confirmAgree = true;
  bool _switched = true;
  SkillLevel? _skillLevel = SkillLevel.junior;

  void _omSkillLevelChanged (SkillLevel? value){
    setState(() {
      _skillLevel = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(value: _checked, onChanged: (val) {
                    setState(() {
                      _checked = !_checked;
                    });
                  }),
                  Text("Выбор"),
                ],
              ),
              CheckboxListTile(
                  title: Text("Принять пользовательское соглашение"),
                  value: _confirmAgree, onChanged: (val){
                    setState(() {
                      _confirmAgree = !_confirmAgree;
                    });
              }),
              Switch(value: _switched, onChanged:(val){
                setState(() {
                  _switched = !_switched;
                });
              }),
              const Text("Уровень навыков: "),
              RadioListTile(
                title: Text("Junior"),
                  value: SkillLevel.junior, groupValue: _skillLevel,
                  onChanged: _omSkillLevelChanged,),
              RadioListTile(
                  title: Text("Middle"),
                  value: SkillLevel.middle, groupValue: _skillLevel,
                  onChanged:_omSkillLevelChanged,),
              RadioListTile(
                  title: Text("Senior"),
                  value: SkillLevel.senior, groupValue: _skillLevel,
                  onChanged: _omSkillLevelChanged,),
            ],
          ),
        ),
      ),
    );
  }
}
