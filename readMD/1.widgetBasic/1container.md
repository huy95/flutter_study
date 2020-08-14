# container 
 - container là 1 widget
 - nó có kích cỡ tuỳ thuộc vào đặt (width: , height: )
 - muốn bên trong chứa các thành phần chỉ cần child:  thuộc trong container
 - 
 code vi du
 Widget build(BuildContext context) { // khởi tạo giá trị khi chạy 
 return MaterialApp(       // là 1 widget có sẵn 
    title: 'Material App',   // navigation top
    home: Scaffold(.      //sử dụng 1 widget có săn thường dùng để layout
        body: SafeArea(   // sử dụng vị trí an toàn chỉ màn hình chính hạn chế sự tran
            child: Center(.  
                child: Container(
                    color: Colors.amberAccent,
                    width: 200,
                    height: 200,
                        child: Center(
                            child: Text(
                                "Hello",
                                    style: TextStyle(fontSize: 40),
             ),
           ),
         ),
       ),
     ),
   ),
