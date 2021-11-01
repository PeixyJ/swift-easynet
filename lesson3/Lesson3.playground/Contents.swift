import UIKit

// 1. 在方法中使用闭包

let learn = { (len:String)->String in
    "学习\(len)"
}

func work(course:String,how: (String)->String){
    print(how(course))
}


work(course: "Java", how: learn)
