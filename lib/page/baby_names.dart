import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Names',
      home: MyHomePage(title: 'Baby Name Votes'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: StreamBuilder(
          stream: Firestore.instance.collection('baby').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Text('Loading...');
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                padding: EdgeInsets.only(top: 10.0),
                itemExtent: 55.0,
                itemBuilder: (context, index) =>
                    _buildListItems(context, snapshot.data.documents[index]));
          }),
    );
  }

  Widget _buildListItems(BuildContext context, document) {
    return ListTile(
      key: ValueKey(document.documentID),
      title: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Expanded(child: Text(document['name'])),
            Text(document['votes'].toString()),
          ],
        ),
      ),
      onTap: () => Firestore.instance.runTransaction((transaction) async {
            DocumentSnapshot freshSnap =
                await transaction.get(document.reference);
            await transaction
                .update(freshSnap.reference, {'votes': freshSnap['votes'] + 1});
          }),
    );
  }
}
