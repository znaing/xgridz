import 'package:flutter/material.dart';
import 'package:xgridz/constants/SettingsValues.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              iconSize: 50,
              onPressed: () {
                Navigator.pop(context, '/home');
              }),
          title: Center(
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(
                'Vision Skills',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          listTile("Visual Identification", SettingsValues.visualIdentification,
              (bool val) {
            SettingsValues.visualIdentification = val;
          }),
          listTile("Visual Discrimination", SettingsValues.visualDiscrimination,
              (bool val) {
            SettingsValues.visualDiscrimination = val;
          }),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(
                'Vocabulary Knowledge',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          listTile("Noun Vocabulary", SettingsValues.nounVocabulary,
              (bool val) {
            SettingsValues.nounVocabulary = val;
          }),
          listTile("Function Vocabulary", SettingsValues.functionVocabulary,
              (bool val) {
            SettingsValues.functionVocabulary = val;
          }),
          listTile("Verb Vocabulary", SettingsValues.verbVocabulary,
              (bool val) {
            SettingsValues.verbVocabulary = val;
          }),
          listTile("Category Recognition", SettingsValues.categoryRecognition,
              (bool val) {
            SettingsValues.categoryRecognition = val;
          }),
          listTile("Word Association", SettingsValues.wordAssociation,
              (bool val) {
            SettingsValues.wordAssociation = val;
          }),
          listTile("Category Inclusion", SettingsValues.categoryInclusion,
              (bool val) {
            SettingsValues.categoryInclusion = val;
          }),
          listTile("Category Exclusion", SettingsValues.categoryExclusion,
              (bool val) {
            SettingsValues.categoryExclusion = val;
          }),
          listTile("Core Vocabulary", SettingsValues.coreVocabulary,
              (bool val) {
            SettingsValues.coreVocabulary = val;
          }),
          listTile("Unity Icon Pattern", SettingsValues.unityIconPattern,
              (bool val) {
            SettingsValues.unityIconPattern = val;
          }),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(
                'Other',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          listTile("Picture Description", SettingsValues.pictureDescription,
              (bool val) {
            SettingsValues.pictureDescription = val;
          }),
          listTile("Word Prediction", SettingsValues.wordPrediction,
              (bool val) {
            SettingsValues.wordPrediction = val;
          }),
        ],
      ),
    );
  }

  Widget listTile(String title, bool settingvalue, Function changeValue) {
    return Container(
      margin: EdgeInsets.fromLTRB(40, 3, 40, 3),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue[400],
        ),
        color: Colors.grey[200],
      ),
      child: CheckboxListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        value: settingvalue,
        onChanged: (bool value) {
          setState(() {
            changeValue(value);
          });
        },
        contentPadding: EdgeInsets.fromLTRB(40, 0, 40, 0),
      ),
    );
  }
}
