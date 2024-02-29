import UIKit

//1 构造
var text: String;
// 直接赋值
text = ""

//构造方法
text = String()

text = String("apple")

text = String(888)

text = String(8.88)

text = String("a")

text = String(true)

text = String(describing: (1, 2, true))

text = String(describing: [1, 2, 3, 4])

text = String(format: "$%.2lf", 123.145)

//2 拼接
var text1 = "hello,"
var text2 = "word"
var resultStr = text1 + text2

//字符串中 简单值使用
var target = "Hello,\(119)"
var target1 = "Hello,\(text2)"
var target2 = "Hello,\(1 + 2)"

//3 字符
var char: Character = "e"
var char2 = Character("e")
//占用16个字节
var size = MemoryLayout<Character>.size
var charArray:[Character] = ["h", "e", "l", "l", "o"]
var city = "hangzhou"
city.forEach { char in
    print(char)
}

//4. 转义符
// \0：表示空白符
// \\：表示反斜杠
// \t：表示制表符
// \n：表示换行符
// \r：表示回车符
// \'：表示单引号
// \"：表示双引号
// \u{}：用Unicode码创建字符
var code = "\u{0068}\u{0065}\u{006c}\u{006c}\u{006f}" // hello
var escapeChar = "空白符:\0反斜杠:\\制表符:\t换行符\n回车符:\r单引号:\'双引号:\""

//5. 常用方法
var emptyStr = ""
if emptyStr.isEmpty {
    print("String is empty")
}

if emptyStr.count == 0 {
    print("String count is 0")
}

let str1 = "1001", str2 = "100a";
if str1 < str2 {
    print("str1 < str2")
}

if str1 == str2 {
    print("str1 == str2")
}

//使用下标访问
var indexStr = "hello, word"
var startIndex: String.Index = indexStr.startIndex
var endIndex: String.Index = indexStr.endIndex
print(startIndex, endIndex)
//获取某个下标后一个下标的对应字符
var afterChar = indexStr[indexStr.index(after: startIndex)]
//获取某个下标前一个下标的对应字符
var beforChar = indexStr[indexStr.index(before: endIndex)]

//... 运算符指定范围
var subStr = indexStr[startIndex..<endIndex]
var subStr1 = indexStr[startIndex...indexStr.index(startIndex, offsetBy: 4)]
var subStr2 = indexStr[indexStr.index(endIndex, offsetBy: -4)..<endIndex]

//获取范围
var range = indexStr.ranges(of: "hello")
//追加字符换
indexStr.append(Character("!"))
indexStr.append(" append string")

//插入单个字符到指定为止
indexStr.insert("#", at: indexStr.index(startIndex, offsetBy: 5))
//插入一组字符到指定位置
indexStr.insert(contentsOf: ["-","#","-"], at: indexStr.index(startIndex, offsetBy: 5))
//替换指定范围的字符串
indexStr.replaceSubrange(startIndex...indexStr.index(startIndex, offsetBy: 4), with: "HELLO")
//删除指定位置的单个字符
indexStr.remove(at: indexStr.index(before: indexStr.endIndex))
//删除指定范围
indexStr.removeSubrange(indexStr.startIndex...indexStr.index(indexStr.endIndex, offsetBy: -5))

//删除所有字符
indexStr.removeAll()

//大小写转换
var uppercase = "HELLO, word".uppercased()
var lowercase = "HELLO, word".lowercased()

//检查前后缀
var hasPrefix = uppercase.hasPrefix("he")
var hasSuffix = lowercase.hasSuffix("rd")
