import UIKit

//三目运算符 区间
 var a = 10, b = 13

a > b ? print("\(a) > \(b)") : print("\(a) < \(b)")

var str: String? = "text"
var result: String = str != nil ? str! : ""

result = str ?? ""

var rang = 1...5 // [1, 5]

var rang2 = 1..<5 // [1, 5)

//判断是否在某个区间范围内
print(rang2 ~= 2)   //true
print(rang2 ~= 5)   //false

//循环

//区间运算符用于循环
for index in rang {
    print(index)
}

for index in 2...5 {
    if index == 4 {
        break
    }
    print(index)  //2 3
}

for index in 2...5 {
    if index == 4 {
        continue
    }
    print(index)  //2 3 5
}

//中断外层循环 break 类似kotlin的限定符
OutterLabel:for outterIndex in 0...3 {
    for index in 0...1 {
        if outterIndex == 2 {
            break OutterLabel
        }
        print(index, terminator: "") // 0101
    }
}

//while  循环
var i = 0
while i < 4 {
    print(i)
    i += 1
}

// repeat-while   类似  do-while
var k = 0
repeat {
    print(k)
    k += 1
} while k < 3


//流程控制 if-else
let number = 18
if number < 15 {
    print("number < 15")
} else {
    print("number >= 15")
}

var caseStr = "a"
switch caseStr {
case "a":
    print("value is a")
case "b":
    print("value is a")
default:
    print("default value")
}

switch caseStr {
case "a","b","c":
    print("mactch success")
default:
    print("default value")
}

// switch 子句区间范围匹配
let age = 18
switch age {
case 16..<18:
    print("match age 16...18")
case 18...20:
    print("match age 18..<20")
default:
    print("default value")
}

// switch 元组匹配
let intTuple = (1, 2)
switch intTuple {
case (1, 2):
    print("match success 1, 2")
    fallthrough // 继续执行后续 case 匹配，不跳出 switch
case (2, 2):
    print("match success 2, 2")
    fallthrough
case (_, 2):
    // 选择性匹配，第一个匿名不关注，只有第二个能匹配，就算匹配成功
    print("match success _,2")
    fallthrough
case (0...2, 0...2):
    // 匹配元组元素的范围
    print("match range success")
case (let a, 1):
    print("捕获元素: \(a)")
case let(a, b) where a < b:
    // 同 (let a, let b)，增加 where 字句判断
    print("捕获元组: \(a),\(b)")
    fallthrough
default:
    print("default")
}

//guard-else 守护判断
// 调用 method
var guardNumber = 21
method()

func method() {
    // 守护语句，当 guard 后面的条件成立时，才继续执行，替换之前的 if-return
    guard guardNumber > 20 else {
        return
    }
    print("continue execute")
}

