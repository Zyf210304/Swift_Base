import UIKit

//位运算

var sixteen: UInt8 = 0b00010000 // 二进制
print(sixteen) // 8

// Swift 按位与 & : 操作数相同的位进行逻辑与运算
// 即两个对应位的值都为1，结果为1，否则为0。示例：
var result1 = sixteen & 0b00001111 // 0
var result2 = 0b00000111 & 0b00000001 // 1

// Swift 按位或 | ：操作数相同的位进行逻辑或运算
// 即两个对应位的值有一个为1，结果为1，否则为0。示例：
var result3 = 0b00000111 | 0b00000000 // 0b00000111 7
var result4 = 0b00000001 | 0b00000010 // 0

// Swift 按位取反 ~ ：将操作数的每一位都取反，如果当前位是1，则取反为0
var result5 = ~sixteen // 0b11101111 255 - 16 = 239

// Swift 按位异或 ^
// 即两个对应位的值相同，结果为0，否则为1。示例：
var result6 = 0b00000111 ^ 0b00000000 // 0b00000111 7
var result7 = 0b00000111 ^ 0b00001111 // 0b00001000 8

// Swift 按位左移 << ，按位右移 >>
var result8 = 0b00000111 << 1 // 0b00001110 7 << 1 = 7 * 2 = 14
var result9 = 0b00000111 >> 1 // 0b00000011 7 >> 1 = 7 / 2 = 3

// Swift 按位左移 << ，按位右移 >> 对于位数较低类型，会出现数据丢失的情况
var result10: UInt8 = 0b00001000 << 5 // 0
var result11: UInt8 = 0b00010000 >> 5 // 0


//溢出运算符
var num: UInt8 = 255
var result12 = num &+ 1 // 溢出后变为0
result12 = result12 &- 1 // 溢出后再减1，255
result12 = result12 &* 2 // 即 0b11111111 << 1 = 0b11111110 = 254


//重载运算符
// 重载运算符 + , 元组相加，扩展加号的新功能
func +(param1: (Int, Int), param2: (Int, Int)) -> (Int, Int) {
    return (param1.0 + param2.0, param1.1 + param2.1)
}
var tuple1: (Int, Int) = (1, 2)
var tuple2: (Int, Int) = (1, 2)
let tuple = tuple1 + tuple2 // (2, 4)

//自定义运算符

// 自定义运算符
// prefix 前缀运算符  infix 中缀运算符  postfix 后缀运算符
// 自定义前缀运算符，即只需要一个操作数，运算符在操作数前面
prefix operator ++
prefix func ++(param: Int) -> Int {
    return param + 1
}
++1 // 2

// 自定义后缀运算符，即只需要一个操作数，运算符在操作数后面
postfix operator ++
postfix func ++(param: Int) -> Int {
    return param + 1
}
1++ // 0

// 自定义中缀运算符，即需要两个操作数，运算符在两个操作数中间
infix operator **
func **(param1: Int, param2: Int) -> Int {
    return param1 * param1 + param2 * param2
}
1 ** 2 // 5

// 自定义后缀运算符，即只需要一个操作数，运算符在操作数后面
postfix operator --
postfix func --(param: Int) -> Int {
    return param - 1
}
1-- // 0


