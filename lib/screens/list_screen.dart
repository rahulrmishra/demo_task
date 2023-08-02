import 'package:flutter/material.dart';
import 'package:test_task/resources/app_strings.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 101,
      itemBuilder: (context, index) => const ListItemWidget(),
    );
  }
}

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({super.key});
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget>
    with AutomaticKeepAliveClientMixin {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Text(count.toString()),
            MaterialButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text(AppStrings.plusIcon),
            )
          ],
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
