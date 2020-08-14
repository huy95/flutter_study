row : ngang
column : cột
#Row và Column là 2 vấn đề cực kì quan trọng khi layout code trong của flutter
- trong màn hình có thế chứa nhiều row va column
- trong đó các vị trí cần biết : 
+ alignment: 
+ mainAxisAlignment
+ crossAxisAlignment.

code vi du: 
child: Center(.   // tao hinh o vi tri trung tam
    child: Container( // tao khung chứa
        color: Colors.amberAccent, // khưng chứa có màu
        width: 200, // chiều rộng của khung
        height: 200, // chiều cao của khung
        child: Center( // tại vị trí trung tâm của khung
            child: Row(.  // tạo một hàng ngang chứa 
                //alignment: WrapAlignment.start, // 
                    children: <Widget>[     // chuỗi các string và cách nhau bở sizebox = 20
                            Text("Hello", style: TextStyle(fontSize: 30)),
                            SizedBox(width: 20),
                            Text("Hello", style: TextStyle(fontSize: 30)),
                            SizedBox(width: 20),
                            Text("Hello", style: TextStyle(fontSize: 30)),
                            SizedBox(width: 20),
                            Text("Hello", style: TextStyle(fontSize: 30)),
        ],
      ),
    ),
  ),
),
