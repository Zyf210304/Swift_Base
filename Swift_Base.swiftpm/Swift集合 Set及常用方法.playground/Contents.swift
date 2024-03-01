import UIKit

//1.创建Set集合
var set:[Int] = [1, 4, 3]
var set1 = Set(arrayLiteral: 1, 2, 3)

//2.获取元素
//获取最小值
set.min()

//获取第一个元素 顺序不定
set[set.startIndex]
set.first

//通过下标获取元素 只能往后移 不能往前移动
set[set.index(after: set.startIndex)]

//获取某个下标后的几个元素
set[set.index(set.startIndex, offsetBy: 2)]

//3.常用方法
//获取元素个数
set.count

//判断集合是否为空
if set.isEmpty {
    print("set is empty")
}

//判断集合是否包含某个元素
print(set.contains(3) ? "集合包含3" : "集合不包含3")

//插入
set.insert(0, at: set.endIndex)
//set.insert(10) 报错 现在不能这样用
set.insert(contentsOf: [1, 2, 3], at: set.endIndex)

//移除
set.remove(at: 5)           //移除下标为5的元素
print(set)
set.removeFirst()
print(set)

//移除某个特定位置要拆包 需要用！ 拆包 拿到Optional 类型 如果移除不存在的类型 EXC_BAD_INSTRUCTION
set.remove(at: set.firstIndex(of: 0)!)   //移除首个为0的元素
print(set)

//查找元素
set[1]

set.removeAll()

//集合间的  交并补
var setStr1:Set<String> = ["1", "2", "3", "4"]
var setStr2:Set<String> = ["3", "4", "5", "6"]

//取交集
setStr1.intersection(setStr2)
//取交集的补集
setStr1.formSymmetricDifference(setStr2)

//取并集
setStr1.union(setStr2)

//set 取相对补集  A.subtract(B)，即取元素属于 A，但不属于 B 的元素集合
setStr1.subtract(setStr2)


//集合 比大小
var eqSet1: Set<Int> = [1, 2, 3]
var eqSet2: Set<Int> = [3, 2, 1]

print(eqSet1 == eqSet2 ? "集合中所有元素想等时 两个元素想等 与元素的顺序无关" : "不相等")

let set3: Set = [0, 1]
let set4: Set = [0, 1, 2]

//判断子集
set3.isSubset(of: set4) //   set3 是 set4 的子集，true
set3.isStrictSubset(of: set4) //     set3 是 set4 的真子集，true

// 判断超集
set4.isSuperset(of: set3) // set4 是 set3 的超集，true
set4.isStrictSuperset(of: set3) // set4 是 set3 的真超集，true

//Set 遍历
for ele in set4 {
    print(ele)
}

set4.forEach { ele in
    print(ele)
}

set4.forEach { print($0)}

for index in set4.indices {
    print(set4[index])
}

for ele in set4.sorted(by: >) {
    print(ele)
}
