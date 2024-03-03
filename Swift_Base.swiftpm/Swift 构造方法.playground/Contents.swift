import UIKit

//类的构造方法

// Swift5 类的构造方法
// 1. 在构造方法中需要给没有默认值的属性初始化值
class Demo1 {
    // 含有默认值
    var param1: String = "default"
    
    // 未指定默认值，需要在 init() 中初始化
    var param2: String
    
    // 未指定默认值，类型为 Optional，可空，
    // 默认值为 nil, 不需要在 init() 中初始化
    var param3: String?
    
    init(param: String) {
        self.param2 = param
    }
}

// 2. 如果属性有默认值，则自动生成一个无参构造方法 init()，即初始化后的实例的属性都有默认值
class Demo2 {
    var param1 = "param1 String"
    var param2 = "param2 String"
}

var demo2 = Demo2()
print("param1: \(demo2.param1), param2: \(demo2.param2)")

//结构体的构造方法

// Swift5 结构体的构造方法
// 默认构造方法
struct StructDemo {
    var param1: String
    var param2: String
    
}

// 调用结构体默认的构造方法
var structIns1 = StructDemo(param1: "value1", param2: "value2")

//自定义构造方法
struct StructDemo2 {
    var param1: String
    var param2: String
    
    // 结构体的构造方法会默认生成，将所有属性作为参数
    init(param1: String, param2: String) {
        self.param1 = param1
        self.param2 = param2
    }
    
    init() {
        // 在自定义的构造方法中调用默认的构造方法
        self.init(param1: "init value1", param2: "init value2")
    }
}

// 调用结构体默认的构造方法
var structIns12 = StructDemo2(param1: "value1", param2: "value2")

// 调用结构体自定义的构造方法
var structIns22 = StructDemo2()




//遍历构造器

// Swift5 指定构造方法和便利构造方法
// 定义一个含有指定构造和便利构造的父类
class Base {
    
    // 默认的指定构造方法
    init() {
        print("base class designated constructor method")
    }
    
    // 声明一个便利构造方法
    convenience init(param: Int) {
        print("base class convenience constructor method")
        // 最终调用指定构造方法
        self.init()
    }
}

var baseIns = Base(param: 0)

// 继承父类
class Sub : Base {
    
    override init() {
        // 如果重写父类的指定构造方法，必须调用 super
        super.init()
    }
    
    convenience init(param: Int) {
        // 在便利构造方法中调用指定的构造方法
        print(param)
        self.init()
    }
    
    convenience init(param1: Int, param2: Int) {
        // 在便利构造方法中调用另一个便利构造方法
        print(param1, param2)
        self.init(param: param1)
    }
}

var subIns = Sub(param1: 0, param2: 1)
//0 1
//0
//base class designated constructor method



//结构方法的安全性检查

//必须在调研父类的指定构造方法前完成自身属性的赋值
//必须在调用父类指定的构造方法之后，在子类中才能修改父类的属性值
//在调用父类的构造方法之后，才能使用 self 关键字
//在便利构造方法中要修改属性值必须在调用指定构造方法之后


// Swift5 构造方法的安全性检查
class BaseCheck {
    var field: String
    init(field: String) {
        self.field = field
    }
}

class SubCheck: BaseCheck {
    var subField: String
    
    init() {
        // 1. 必须在调研父类的指定构造方法前完成自身属性的赋值
        subField = "sub field value"
        super.init(field: "base field value")
        
        // 2. 必须在调用父类指定的构造方法之后，在子类中才能修改父类的属性值
        field = "base field set in sub"
        
        // 3. 在调用父类的构造方法之后，才能使用 self 关键字
        self.subField = "sub field value set again"
        
        print(subField, field)
    }
    
    convenience init(param: Int) {
        // 4. 在便利构造方法中要修改属性值必须在调用指定构造方法之后
        self.init()
        subField = "subField set in convenience \(param)"
        field = "field set in conveniencem \(param)"
        
        print(subField, field)
    }
}

var checkIns = SubCheck(param: 1)



//定义可失败的构造方法

class CanBeNil {
    
    var field: Int
    
    // 构造可能会失败返回 nil
    init?(param: Int) {
        guard param > 0 else {
            return nil
        }
        field = param
    }
}

let ins = CanBeNil(param: 0) // nil




//必要的构造方法和析构方法

class DemoClass {
    
    var field: Int
    
    // 声明必要构造方法，子类必须继承或重写
    required init(param: Int) {
        field = param
    }
    
    // 析构方法，类实例被销毁
    deinit {
        // 实例被释放
        print("demo instance destroy")
    }
}
// 定义可选类型
var demoIns: DemoClass? = DemoClass(param: 1)
demoIns = nil // 被赋值 nil 时，deinit会调用


