import UIKit


// 定义字符串枚举，原始值类型为 String
enum Week: String {
    // 在一行中直接定义，也可以分别使用 case 定义
    case MON = "星期一", TUE = "星期二", WED = "星期三", THUR = "星期四", FRI = "星期五", SAT = "星期六", SUN = "星期日"
}

// 定义整型枚举，原始值类型为 UInt8
enum Number: UInt8 {
    // 如果原始值是整型，后续的 case 值会依次递增
    case 壹 = 1, 贰, 叁, 肆, 伍, 陆
}

print(Number.肆.rawValue) // 4

var day = Week.MON

// 构造枚举
var numTwo = Number.init(rawValue: 2)

// case 需要详尽列出
switch day {
case .MON:
    print("monday", day.rawValue) // monday 星期一
case .TUE:
    print("tuesday")
case .WED:
    print("wednesday")
case .THUR:
    print("thursday")
case .FRI:
    print("friday")
case .SAT:
    print("saturday")
case .SUN:
    print("sunday")
}

// 定义枚举，设置相关值
enum Direction {
    case left(type: Int, text: String)
    case right(type: Int, text: String)
}
var direction = Direction.left(type: 1, text: "左")
switch direction {
case let .left(type, text):
    print("type: \(type)，向\(text)") // "type: 1，向左"
case let .right(type, text):
    print("type: \(type)，向\(text)")
}

//关联方法
enum Device {
    case iPhone
    case iPad

    func printInfo() {
        switch self {
            case .iPhone:
                print("这是一部iPhone")
            case .iPad:
                print("这是一台iPad")
        }
    }
}
 
var device = Device.iPad
device.printInfo()
