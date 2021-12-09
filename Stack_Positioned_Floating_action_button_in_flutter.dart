## alignment,overflow,positioned,

body: Stack(
        alignment: Alignment.center,
        overflow: Overflow.visible,
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.red,
          ),
          Positioned(
            bottom: -50,
            child: CircleAvatar(
              radius: 50,
            ),
          )
        ],
      ),
    )
