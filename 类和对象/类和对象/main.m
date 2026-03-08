//
//  main.m
//  类和对象
//
//  Created by lose_sea on 2026/3/7.
//

//
//  main.m
//  类和对象
//
//  Created by lose_sea on 2026/3/3.
//


#import<Foundation/Foundation.h>

//#import"FKPerson.h"
//
//@implementation FKPerson {
//    //定义一个只能在实现部分使用的成员函数,(被隐藏的成员变量)
//    int testAttr;
//}
//
//// 定义一个setName: andAge:方法
//- (void) setName : (NSString*) n andAge: (int) a {
//    name = n;
//    age = a;
//}
//
//// 定义一个 say: 方法
//- (void) say: (NSString*) content {
//    NSLog(@"%@", content);
//}
//
//// 定义一个不带形参的info方法
//- (NSString*) info {
//    [self test];
//    return [NSString stringWithFormat: @"myname is %@, age is %d", name, age];
//}
//
//// 定义一个只能在实现部分使用的方法 (被隐藏的方法)
//- (void) test {
//    NSLog(@"-- 只能在实现部分使用的test方法 --");
//}
//
//// 定义一个类方法
//+ (void) foo {
//    NSLog(@"FKPerson类的类方法, 通过类名调用");
//}
//@end
//
//int  main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        // 定义FKPerson* 类型的变量
//        FKPerson* person;
//        // 创建FKPerson对象, 赋给perosn变量
//        person = [[FKPerson alloc]init];
//
//        [person say: @"hello world"];
//        [person setName: @"John" andAge: 500];
//        NSLog(@"%@", [person info]);
//        [FKPerson foo];
//    }
//    return 0;
//}



//#import<Foundation/Foundation.h>
//@interface VarArgs : NSObject
//// 定义形参个数可变的方法
//- (void) test: (NSString*) name, ...;
//@end
//
//@implementation VarArgs
//- (void) test: (NSString*) name, ... {
//    // 使用va_list定义一个argList指针变量, 该指针变量指向可变参数列表
//    va_list argList;
//    if (name) {         // 如果第一个name参数存在, 才需要处理后面的参数
//        // 由于name参数并不在可变参数列表中, 因此先处理name参数
//        NSLog(@"%@", name);
//        // 让argList指向第一个可变参数列表的第一个参数, 开始提取可变参数列表的参数
//        va_start(argList, name);
//        // va_arg用于提取argList指针当前指向的参数, 并将指针移动到指向下一个参数
//
//        // arg变量用于保存当前获取的参数, 如果该参数不为nil, 进入循环体
//        NSString* arg = va_arg(argList, id);
//        while (arg) {
//            // 打印出每一个参数
//            NSLog(@"%@", arg);
//            // 再次提取下一个参数, 并将指针移动到下一个参数
//            arg = va_arg(argList, id);
//        }
//        va_end(argList); // 释放argList指针, 结束提取
//    }
//}
//@end


//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        VarArgs* va = [[VarArgs alloc] init];
//        [va test : @"hello world", @"hello iOS", nil];
//    }
//    return EXIT_SUCCESS;
//}

//#import<Foundation/Foundation.h>
//@interface FKPerson : NSObject {
//    @public
//    NSString* name;
//    int age;
//}
//@end
//
//@implementation FKPerson
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKPerson* p = [[FKPerson alloc] init];
//        NSLog(@"%@", p->name);
//        NSLog(@"%d", p->age);
//
//        p->name = @"鑫研";
//        p->age = 20;
//
//        NSLog(@"%@", p->name);
//        NSLog(@"%d", p->age);
//    }
//    return 0;
//}



//
//#import<Foundation/Foundation.h>
//@interface FKSingleton : NSObject
//+ (id) instance;
//@end
//
//static id instance = nil;
//@implementation FKSingleton
//+ (id) instance {
//    // 如果 instance 为 nil
//    if (!instance) {
//        // 创建一个Singleton 实例, 并将该实例赋给 instance 全局变量
//        instance = [[FKSingleton alloc] init];
//    }
//    return instance;
//}
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        // 判断两次获取的实例是否相等, 程序将返回1
//        NSLog(@"%d", [FKSingleton instance] == [FKSingleton instance]);
//    }
//    return 0;
//}
//
// #import<Foundation/Foundation.h>
// @interface FKPerson : NSObject {
// @private
//     NSString* name;
//     int age;
// }
// // 提供方法来操作name age
// - (void) setName: (NSString*) name;
// - (NSString*) name;
// - (void) setAge: (int) age;
// - (int) age;
// @end
//
// @implementation FKPerson
// - (void) setName: (NSString*) name {
//     if ([name length] > 6 || [name length] < 2) {
//         NSLog(@"你设置的人名不符合要求");
//     } else {
//         self->name = name;
//     }
// }
// - (void) setAge: (int) age {
//     if (age > 100 || age < 0) {
//         NSLog(@"您设置的年龄不合法");
//     } else {
//         self->age = age;
//     }
// }
// - (NSString*) name {
//     return name;
// }
// - (int) age {
//     return age;
// }
// @end
//
//
// int main(int argc, const char* argv[]) {
//     @autoreleasepool {
//         FKPerson* p = [[FKPerson alloc] init];
//         [p setAge: 1000];
//         NSLog(@"%d", [p age]);
//         [p setAge: 30];
//         NSLog(@"%d", [p age]);
//         [p  setName: @"鑫研"];
//         NSLog(@"%@", [p name]);
//     }
//     return 0;
// }
//
//
//#import<Foundation/Foundation.h>
//
//@interface FKUser : NSObject
// // 使用@property定义了 3 个property
//@property (nonatomic)NSString* name;
//@property NSString* pass;
//@property NSDate* birth;
//- (void) print;
//@end;
//
//@implementation FKUser
//    // 为3个property合成setter和getter 方法
//    // 指定name property 底层对应的成员变量名为 _name
////@synthesize name = _name;
////@synthesize pass;
////@synthesize birth;
//
////// 实现自定义的setName: 方法, 添加自己的控制逻辑
////- (void) setName: (NSString*) name {
////    self->_name = [NSString stringWithFormat: @"+++%@", name];
////}
//- (void) print {
//    NSLog(@"%@", _pass);
//}
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKUser* user = [[FKUser alloc] init];
//        [user setName: @"鑫研"];
//        [user setPass: @"1234"];
//        [user setBirth: [NSDate date]];
//        NSLog(@"账号: %@, 密码: %@, 生日: %@",[user name], [user pass], [user birth]);
//        [user print];
//    }
//    return 0;
//}
//
//
//@interface FKBook : NSObject
//@property (nonatomic) NSString* name;
//@end
//
//@implementation FKBook
//@synthesize name;
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKBook* book = [[FKBook alloc] init];
//        NSMutableString* str = [NSMutableString stringWithString: @"疯狂iOS讲义"];
//        [book setName: str];
//        NSLog(@"book 的name为: %@", [book name]);
//        [str appendString: @"is a good book"];  // 修改str字符串
//        NSLog(@"book 的name为: %@", [book name]);
//    }
//    return 0;
//}
//
//
//
//
//@interface FKBook : NSObject
//@property (nonatomic, copy) NSString* name;
//@end
//
//@implementation FKBook
//@synthesize name;
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKBook* book = [[FKBook alloc] init];
//        NSMutableString* str = [NSMutableString stringWithString: @"疯狂iOS讲义"];
//        [book setName: str];
//        NSLog(@"book 的name为: %@", [book name]);
//        [str appendString: @"is a good book"];  // 修改str字符串
//        NSLog(@"book 的name为: %@", [book name]);
//    }
//    return 0;
//}
//
//@interface FKItem : NSObject
//@property (assign, nonatomic, getter = wawa, setter = nana: )int price;
//@end
//
//@implementation FKItem
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKItem* item = [[FKItem alloc] init];
//        [item nana: 30];
//        NSLog(@"item 的 price = %d", [item wawa]);
//    }
//    return 0;
//}
//
//
//@interface FKwin : NSObject
//@property (nonatomic, retain) NSDate* date;
//@end
//
//@implementation FKwin
//
//@end
//
//int main(int  argc, const char* argv[]) {
//    FKwin* win = [[FKwin alloc] init];
//    NSDate* date = [NSDate date];
//    // 第一次赋值, data的引用计数为1
//    NSLog(@"date的引用计数为: @ld", date.retainCount);
//    [win setDate: date];
//    // 下面输出的引用计数为2
//    NSLog(@"date的引用计数为%ld", date.retainCount);
//    // 释放 date 的引用计数, date的引用计数减一
//    [date release];
//    // 下面输出的引用计数为1
//    NSLog(@"[win date] 的引用计数为: %ld", (unsigned long)[win date].retainCount);
//
//    return 0;
//}
//


//@interface FKCard : NSObject
//@property (nonatomic, copy) NSString* flower;
//@property (nonatomic, copy) NSString* value;
//@end
//
//@implementation FKCard
//
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKCard* card = [[FKCard alloc] init];
//        card.flower = @"A";
//        card.value = @"A";
//        NSLog(@"我的扑克牌为 %@, %@", card.flower, card.value);
//    }
//    return 0;
//}



//@interface FKUser : NSObject
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, copy) NSString* pass;
//@property (nonatomic, copy) NSDate* birth;
//@end
//
//@implementation FKUser
//@end
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        FKUser* user = [[FKUser alloc] init];
//        [user setValue: @"孙悟空" forKey: @"name"];
//        [user setValue: @"1455" forKey: @"pass"];
//        [user setValue: [[NSDate alloc] init] forKey: @"birth"];
//        
//        NSLog(@"user 的 name为：%@", [user valueForKey: @"name"]);
//        NSLog(@"user 的 pass为：%@", [user valueForKey: @"pass"]);
//        NSLog(@"user 的 birth为：%@", [user valueForKey: @"birth"]);
//    }
//    return 0;
//}

//@interface FKApple : NSObject
//@end
//
//@implementation FKApple
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKApple* app = [[FKApple alloc] init];
//        [app setValue: @"大苹果" forKey: @"name"];
//        [app valueForKey: @"name"];
//    }
//    return 0;
//}


//@interface FKApple : NSObject
//@end
//
//@implementation FKApple
//- (void) setValue: (id) value forUndefinedKey: (id) key {
//    NSLog(@"您尝试设置的key: [%@]并不存在", key);
//    NSLog(@"你尝试设置的value为: %@", value);
//}
//- (id) valueForUndefinedKey: (id)key {
//    NSLog(@"您尝试访问的key [%@]不存在", key);
//    return key;
//}
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKApple* app = [[FKApple alloc] init];
//        [app setValue: @"大苹果" forKey: @"name"];
//        [app valueForKey: @"name"];
//    }
//    return 0;
//}


//@interface FKItem : NSObject
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, assign) int price;
//@end
//
//@implementation FKItem
//
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKItem* item = [[FKItem alloc] init];
//        [item setValue:nil forKey:@"name"];
//        [item setValue:nil forKey:@"price"];
//        NSLog(@"item de name is %@", [item valueForKey:@"name"]);
//        NSLog(@"item de price is %@", [item valueForKey:@"price"]);
//    }
//    return 0;
//}

//@interface FKItem : NSObject
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, assign) int price;
//@end
//
//@implementation FKItem
//- (void) setNilValueForKey:(NSString *)key {
//    // 如果尝试将key为price的属性设置为 nil
//    if ([key isEqualToString: @"price"]) {
//        // 将该_peice设置为 0
//        _price = 0;
//    } else {
//        // 回调父类的setNiValueForKey: 执行默认行为
//        [super setNilValueForKey: key];
//    }
//}
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKItem* item = [[FKItem alloc] init];
//        [item setValue:nil forKey:@"name"];
//        [item setValue:nil forKey:@"price"];
//        NSLog(@"item de name is %@", [item valueForKey:@"name"]);
//        NSLog(@"item de price is %@", [item valueForKey:@"price"]);
//    }
//    return 0;
//}


//@interface FKItem : NSObject
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, assign) int price;
//@end
//
//@interface FKOrder : NSObject
//@property (nonatomic, strong) FKItem* item;
//@property (nonatomic, assign) int amount;
//- (int) totalPrice;
//@end
//
//@implementation FKItem
//@end
//
//@implementation FKOrder
//- (int) totalPrice {
//    return _amount * _item.price;
//}
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKOrder* order = [[FKOrder alloc] init];
//        // 使用KVC方式为amount设置属性值
//        [order setValue: @"12" forKey: @"amount"];
//        [order setValue: [[FKItem alloc] init] forKey: @"item"];
//        // 使用setValue: forKeyPath: 设置item属性的name属性
//        [order setValue: @"书包" forKeyPath: @"item.name"];
//        [order setValue: [NSNumber numberWithInt: 20] forKeyPath: @"item.price"];
//        //valueForKeyPath来获取复合属性值
//        NSLog(@"订单包含%@个%@, 总价为%@", [order valueForKey: @"amount"], [order valueForKeyPath: @"item.name"], [order valueForKey: @"totalPrice"]);
//    }
//    return 0;
//}






//@interface FKItem : NSObject
//// 定义需要被观察的属性
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, assign) double price;
//@end
//
//
//@implementation FKItem
//@end
//
//
//
//@interface FKItemView : NSObject
//// 持有被观察的模型对象
//@property (nonatomic, weak) FKItem* item;
//
//// 自定义方法：显示模型数据
//- (void)showItemInfo;
//@end
//
//
//@implementation FKItemView
//
//- (void)showItemInfo {
//    // 打印当前的商品信息
//    NSLog(@"物品名为：%@，价格为：%f", self.item.name, self.item.price);
//}
//
//// 重写item的setter方法，在设置对象时添加监听器
//- (void)setItem:(FKItem *)item {
//    _item = item;
//    
//    // 1. 为item的name属性添加监听器
//    // 监听者是self，监听路径是@"name"，选项是监听新值，上下文为NULL
//    [_item addObserver:self
//           forKeyPath:@"name"
//              options:NSKeyValueObservingOptionNew
//              context:NULL];
//    
//    // 2. 为item的price属性添加监听器
//    [_item addObserver:self
//           forKeyPath:@"price"
//              options:NSKeyValueObservingOptionNew
//              context:NULL];
//}
//
//// 3. 重写KVO回调方法：当监听的属性变化时，此方法会被自动调用
//- (void)observeValueForKeyPath:(NSString *)keyPath
//                      ofObject:(id)object
//                        change:(NSDictionary<NSKeyValueChangeKey,id> *)change
//                       context:(void *)context {
//    
//    NSLog(@"---observeValueForKeyPath: 方法被调用---");
//    NSLog(@"被监听的属性路径：%@", keyPath);
//    NSLog(@"被监听的对象：%@", object);
//    NSLog(@"被修改的属性新值：%@", change[NSKeyValueChangeNewKey]);
//    NSLog(@"监听的上下文：%@", context);
//    
//    // 属性变化后，重新刷新显示
//    [self showItemInfo];
//}
//
//// 4. 重写析构方法，移除监听器（非常重要，防止野指针崩溃）
//- (void)dealloc {
//    [_item removeObserver:self forKeyPath:@"name"];
//    [_item removeObserver:self forKeyPath:@"price"];
//}
//
//@end
//
//
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // 创建视图对象
//        FKItemView* view = [[FKItemView alloc] init];
//        // 创建模型对象
//        FKItem* item = [[FKItem alloc] init];
//        item.name = @"初始商品";
//        item.price = 10.0;
//        
//        // 设置item，触发setItem方法，从而添加监听器
//        view.item = item;
//        
//        NSLog(@"===== 开始修改属性 =====");
//        // 修改变量，会自动触发KVO回调
//        item.name = @"新商品";
//        item.price = 99.9;
//    }
//    return 0;
//}


//@interface FKUser : NSObject
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, assign) int age;
//@property (nonatomic, copy) NSString* address;
//@end
//
//@implementation FKUser
//- (id) init {
//    // 调用父类的init方法执行初始化, 将初始化得到的对象赋值给 self 对象
//    // 如果 self 不为nil, 则表明父类的init方法初始化成功
//    if (self = [super init]) {
//        // 对该对象的_name, _age, _address赋初始值
//        self->_name = @"孙悟空";
//        self->_age = 500;
//        self->_address = @"水帘洞";
//    }
//    return self;
//}
//@end
//
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        FKUser* user = [[FKUser alloc] init];
//        NSLog(@"%@", user.name);
//        NSLog(@"%@", [user valueForKey: @"address"]);
//        NSLog(@"%@", [user valueForKey:@"age"]);
//        NSLog(@"%d", user.age);
//    }
//    return 0;
//}


//@interface FKCar : NSObject
//@property (nonatomic, copy) NSString* brand;
//@property (nonatomic, copy) NSString* model;
//@property (nonatomic, copy) NSString* color;
//
//- (id) initWithBrand: (NSString*) brand model: (NSString*) model;
//- (id) initWithBrand: (NSString*) brand model: (NSString*) model color: (NSString*) color;
//
//@end
//
//
//@implementation FKCar
//- (id) init {
//    // 调用父类的init方法执行初始化, 将初始值得到的对象赋值给 self 对象
//    // 如果self不为nil, 则表明父类的init方法初始化成功
//    if (self = [super init]) {
//        self->_brand = @"奥迪";
//        self->_model = @"Q5";
//        self->_color = @"black";
//    }
//    return self;
//}
//
//- (id) initWithBrand:(NSString *)brand model:(NSString *)model {
//    // 调用父类的init方法进行初始化 将初始化得到的对象赋值给self对象
//    // 如果self不为nil, 则表明父类的init方法初始化成功
//    if (self = [super init]) {
//        self->_brand = brand;
//        self->_model = model;
//        self->_color = @"黑色";
//    }
//    return self;
//}
//- (id) initWithBrand:(NSString *)brand model:(NSString *)model color:(NSString *)color {
//    // 调用本类的initWithBrand:model:方法进行初始化 将初始化得到的对象赋值给self对象
//   // 如果self不为nil, 则表明本类的initWithBrand:model:方法初始化成功
//    if (self = [self initWithBrand:brand model:model]) {
//        self->_color = color;
//    }
//    return self;
//}
//@end




//@interface FKFruit : NSObject
//@property (nonatomic, assign) double weight;
//- (void) info;
//@end
//
//@implementation FKFruit
//@synthesize weight;
//- (void) info {
//    NSLog(@"I am a fruit, my weight is %g", weight);
//}
//@end
//
//@interface FKApple : FKFruit
//@end
//
//@implementation FKApple
//
//@end
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        FKApple* a = [[FKApple alloc] init];
//        a.weight = 56;
//        [a info];
//    }
//    return 0;
//}


//@interface FKBird : NSObject
//- (void) fly;
//@end
//
//@implementation FKBird
//
//- (void) fly {
//    NSLog(@"flying");
//}
//@end
//
//@interface FKOstrich : FKBird
//
//@end
//
//@implementation FKOstrich
//- (void) fly {
//    NSLog(@"only to run");
//}
//@end
//
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        FKOstrich* os = [[FKOstrich alloc] init];
//        [os fly];
//    }
//    return 0;
//}


@interface FKBird : NSObject
- (void) fly;
@end

@implementation FKBird

- (void) fly {
    NSLog(@"flying");
}
@end

@interface FKOstrich : FKBird
- (void) callOverridedMethod;
@end

@implementation FKOstrich
- (void) fly {
    NSLog(@"only to run");
}
- (void) callOverridedMethod {
    // 在子类方法中通过super显示调用父类被覆盖的实例方法
    [super fly];
}
@end


int main(int argc, char* argv[]) {
    @autoreleasepool {
        FKOstrich* os = [[FKOstrich alloc] init];
        [os callOverridedMethod];
    }
    return 0;
}



