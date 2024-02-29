import UIKit

//数组创建
var array1:[Int] = []
var array2:[String] = ["1", "2", "3"]
var array3:[Any] = [1, "3", 2]
var array4 = Array(arrayLiteral: "1", "2", "3")

//快捷创建重复元素的数组
var array5 = Array(repeating: 0, count: 10)

//数组相加
var array6: [Any] = [1, 2, 3] + ["4", 5, 6]

//常用方法
var array = [1, 2, 3, 4, 5, 6]
print(array.count)

if array.isEmpty {
    print("is empty")
} else {
    print("is not empty")
}

//通过下标访问元素
var ele = array[1]

//截取新数组
var subArray = array[1...2]

//获取数组的第一个元素
var firstEle = array.first

//获取数组的最后一个元素
var lastEle = array.last

//修改下标对应元素
array[0] = -1
//[-1, 2, 3, 4, 5, 6]

//修改指定范围的元素
array[0...2] = [10, 11, 12]
//[10, 11, 12, 4, 5, 6]

//追加单个元素
array.append(7)
//[10, 11, 12, 4, 5, 6, 7]

//追加一组元素
array.append(contentsOf: [8, 9, 10])
//[10, 11, 12, 4, 5, 6, 7, 8, 9, 10]

//在指定位置插入单个元素
array.insert(0, at: 0)
//[0, 10, 11, 12, 4, 5, 6, 7, 8, 9, 10]

array.insert(contentsOf: [-3, -2, -1], at: 0)
//[-3, -2, -1, 0, 10, 11, 12, 4, 5, 6, 7, 8, 9, 10]

//移除指定元素
array.remove(at: 1)
//[-3, -1, 0, 10, 11, 12, 4, 5, 6, 7, 8, 9, 10]

//移除一组元素
array.removeSubrange(1...3)
//[-3, 11, 12, 4, 5, 6, 7, 8, 9, 10]

//移除收个元素
array.removeFirst()
//[11, 12, 4, 5, 6, 7, 8, 9, 10]

//移除末尾元素
array.removeLast()
//[11, 12, 4, 5, 6, 7, 8, 9]

//移除前几个元素
array.removeFirst(2)
//[4, 5, 6, 7, 8, 9]

//移除后几个元素
array.removeLast(2)
//[4, 5, 6, 7]

//替换指定范围内的元素
array.replaceSubrange(0...3, with: [100, 101, 102, 103])
[100, 101, 102, 103]

//判断包含指定元素
if array.contains(100) {
    print("array contains 100")
}

if array.contains(10000) {
    print("array contains 10000")
}

array.removeAll()

//数组排序
 var sortArrr  = [1, 4, 5, 6, 2]

var sortArr1 = sortArrr.sorted()
//[1, 2, 4, 5, 6]
var sortArr2 = sortArr1.sorted(by: >)
//[6, 5, 4, 2, 1]


//获取数组的最小值
sortArr1.min() // 1

//获取数组的最大值
sortArr1.max() // 6

//数组的反转
var reversedArray = [1, 2, 3, 4, 5]
var reversedArray1 =  Array(reversedArray.reversed())
//[5, 4, 3, 2, 1]

//数组遍历
let arr = [1, 2, 3, 4, 5, 6]

for item in arr {
    print(item, terminator: "#")
//    1#2#3#4#5#6#(offset: 0, element: 1)
}

for item in arr.enumerated() {
    print(item)
//    (offset: 1, element: 2)
//    (offset: 2, element: 3)
//    (offset: 3, element: 4)
//    (offset: 4, element: 5)
//    (offset: 5, element: 6)
}

for index in arr.indices {
    print(arr[index], terminator: "-")
//    1-2-3-4-5-6-
}

arr.forEach {
    print($0, terminator: "+")
//    1+2+3+4+5+6+
}
