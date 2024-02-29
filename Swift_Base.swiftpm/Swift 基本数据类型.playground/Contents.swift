import UIKit

//1.整型
var intNumber: Int = 1

//2.浮点型
var  floatNumer: Float = 3.1415

var floatNumber2: Float = 3.14e3  //10进制中，e表示10的n次方，3.14 * (10^3) = 3140.0
var floatNumber3: Float = 0x2p2 //16进制中，p表示2的n次方，2 * (2^3) = 16.0

//3.布尔型
var boolValue = true

//4.可选值 Optional
var opt:String? = "Hangzhou"
//var obj:String?
if let temp = opt {
    //当obj 不为 nil时 将obj赋值给temp
    print("hello", temp)
} else {
    opt = "hello if-let"
    print(opt!)
}

var opt1:Int? = 1;
var opt2:Int? = 2;
if let temp1 = opt1, let temp2 = opt2, temp1 < temp2 {
    print(temp1, temp2)
} else {
    print("opt1 or opt2 may be nil or opt1 > opt2")
}

var op4:Int?
//op4 = 3
print((op4 ?? 0) + 2)

var opt5:Int
opt5 = 5
print(opt5 + 2)

//4 类型别名
typealias nsString = String
var name: nsString = "张三"
print(name)

//自动推断类型 可读性优化 2/8/10/16 进制 表示
var a = 10, b = 12.123, c = "String"
print(a, b, c)

//数值在数值前可加 0 进行位数填充，可加入下划线，增加可读性
var number1 = 001.123
var number2 = 1_000_000
print(number1, number2)

// 二进制
var type_2 = 0b01
// 八进制
var type_8 = 0o02
// 十进制
var type_10 = 3
// 十六进制
var type_16 = 0x04
print(type_2, type_8 , type_10, type_16)
