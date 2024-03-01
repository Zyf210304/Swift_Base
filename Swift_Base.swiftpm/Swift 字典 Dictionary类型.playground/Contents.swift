import UIKit

//创建字典

//创建空字典
var dic1:[Int: String] = [:]
var dic2: Dictionary<Int, String> = Dictionary()

//指定键值类型
var dict1:[Int: String] = [0:"zero", 1:"one", 2:"two"]
var dict2: Dictionary<Int, String> = Dictionary(dictionaryLiteral: (1, "one"), (2, "two"))

//自动推断键值类型
 var dictAuto = [0:"zero", 1:"one", 2:"two"]


//获取元素

var dict = [0:"zero", 1:"one", 2:"two"]

//获取元素个数
dict.count
//判断是否是空
dict.isEmpty
//获取键值对的值
dic1[1]

// 更新键值对
dict[0] = "0000"

//如果键存在就更新 不存在就会新增键值对
dict[-1] = "-1"

//更新对应的键值 如果键不存在 返回nil
if let lastValue = dict.updateValue("new one", forKey: 1) {
    print("更新成功 \(lastValue)") //lastValue 是更新前的值
}
if let lastValue = dict.updateValue("new ten", forKey: 10) {
    print("更新成功 \(lastValue)")
} else {
    print("没有对应的键值对")
}

//移除键值对
dict.removeValue(forKey: -1)
print(dict)

//移除所有键值对
dict.removeAll()

//遍历字典
//遍历所有的键
for key in dict.keys {
    print(key)
    print(dict[key]!)
}

//遍历所有的值
for value in dict.values {
    print(value)
}

//元组遍历 直接获取键值对
for (key, val) in dict {
    print("\(key):\(val)")
}

//对key值进行从打大小的排序
for key in dict.keys.sorted(by: >) {
    print(key)
}
