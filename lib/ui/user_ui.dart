import 'package:flutter/material.dart';
import 'package:user_list/model/user.dart'; // Kullanıcı modeli
import 'package:user_list/utils/userData.dart'; // Veritabanı fonksiyonları

class UserListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
      future: getUsersFromDatabase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return Text('No data available');
        } else {
          final userList = snapshot.data!;
          return ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              final user = userList[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.img),
                ),
                title: Text(user.name),
                subtitle: Text(user.subtitle),
                onTap: () {
                  // Buraya kullanıcı detayları eklemek için bir işlev ekleyebilirsiniz.
                },
              );
            },
          );
        }
      },
    );
  }
}
