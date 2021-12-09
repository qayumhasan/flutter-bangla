##ListTile use some property "title,subtitle,leading,trailing"
## CircleAvatar circle a div elemement

body: ListView(
            children: [
              ListTile(
                title: Text('My First Title'),
                subtitle: Text('My First Subtitle'),
                leading: CircleAvatar(
                  child: Icon(Icons.ac_unit),
                ),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          )),


