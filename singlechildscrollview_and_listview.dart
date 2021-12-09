  ##In SingleChildScrollView you must use scrollDirection
    
  body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.amber),
                      ),
                      
                    ],
                  ),
                ))));

## List view scroll Up & Drown
  
  home: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  title: Text('Home Page'),
                  centerTitle: true,
                  leading: Icon(Icons.message),
                  actions: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo))
                  ],
                ),
                body: ListView(children: [
                  Container(
                    height: 300,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                  Container(
                    height: 300,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                  Container(
                    height: 300,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.deepOrange),
                  )
                ])))
