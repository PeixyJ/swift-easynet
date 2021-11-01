import UIKit

// 什么是尾随闭包

let learn = {(lan:String)->String in
    "学习\(lan)"
}

let learn1 = {()->String in
    "学习Java"
}


func findWork(how:(String)->String){
    print(how("Java"))
}

findWork(how: learn)

findWork {
    return "学习\($0)"
}
