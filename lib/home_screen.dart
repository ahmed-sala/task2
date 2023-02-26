import 'package:first_google/keys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final _items = [];
  final GlobalKey<AnimatedListState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Map'),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: CupertinoColors.darkBackgroundGray,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: IconButton(
              onPressed: addItem,
              icon: Icon(CupertinoIcons.add),
            ),
          ),
          Expanded(
            child: AnimatedList(
              key: RIKeys.riKey1,
              initialItemCount: 0,
              padding: EdgeInsets.all(10),
              itemBuilder: (_, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  key: UniqueKey(),
                  child: Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(
                        _items[index],
                        style: TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          removeItem(index);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void addItem() {
    _items.insert(0, 'Item ${_items.length + 2}');
    RIKeys.riKey1.currentState!
        .insertItem(0, duration: const Duration(seconds: 1));
  }

  void removeItem(int index) {
    RIKeys.riKey1.currentState!.removeItem(index, (context, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: Card(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          child: ListTile(
            title: Text(
              'Deleted',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      );
    }, duration: Duration(milliseconds: 600));
    _items.removeAt(index);
    // index++;
  }
}
