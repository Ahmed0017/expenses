import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  final Function deleteTx;

  TransactionItem({
    this.transaction,
    this.deleteTx,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: ListTile(
        leading: CircleAvatar(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: FittedBox(
              child: Text('\$${transaction.amount}'),
            ),
          ),
        ),
        title: Text(transaction.title),
        subtitle: Text(
          '${DateFormat.yMMMd().format(transaction.date)}',
        ),
        trailing: MediaQuery.of(context).size.width > 400
            ? TextButton.icon(
                style: TextButton.styleFrom(
                  primary: Theme.of(context).errorColor,
                ),
                onPressed: () {
                  deleteTx(transaction.id);
                },
                icon: const Icon(
                  Icons.delete,
                ),
                label: const Text(
                  'Delete',
                ),
              )
            : IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).errorColor,
                ),
                onPressed: () {
                  deleteTx(transaction.id);
                },
              ),
      ),
    );
  }
}
