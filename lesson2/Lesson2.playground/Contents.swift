import UIKit

//Closure 闭包/回调函数

//问题
//1. 什么是闭包?该怎么使用它

//2. 使用闭包并放入参数和返回参数

let a = 9

let learnIOS = {
    print("学习SwiftUI")
}

learnIOS()

let learn = {(lan:String) in
    print("学习\(lan)")
}

learn("java")

let learn1 = {(lan:String)->String in
    "学习\(lan)"
}


print(learn1("Python"))

