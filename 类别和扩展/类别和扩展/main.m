//
//  main.m
//  列表和扩展
//
//  Created by lose_sea on 2026/3/9.
//
  
#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return EXIT_SUCCESS;
//}


//@interface NSNumber (fk)
//// 在类别中定义4个方法
//- (NSNumber*) add: (double) num2;
//- (NSNumber*) substract: (double) num2;
//- (NSNumber*) multiply: (double) num2;
//- (NSNumber*) divde: (double) num2;
// @end
//
//@implementation NSNumber (fk)
//- (NSNumber*) add: (double) num2 {
//    return [NSNumber numberWithDouble: [self doubleValue] + num2];
//}
//- (NSNumber*) substract:(double)num2 {
//    return [NSNumber numberWithDouble: [self doubleValue] - num2];
//}
//- (NSNumber*) multiply:(double)num2 {
//    return [NSNumber numberWithDouble: [self doubleValue] * num2];
//}
//- (NSNumber*) divde:(double)num2 {
//    return [NSNumber numberWithDouble: [self doubleValue] / num2];
//}
//@end
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        NSNumber* myNum = [NSNumber numberWithInt: 3];
//        NSNumber* add = [myNum add: 2.4];
//        NSLog(@"%@", add);
//        NSNumber* substract = [myNum substract: 2.4];
//        NSLog(@"%@", substract);
//    }
//    return 0;
//}



//// MyClass.h（公开）
//@interface MyClass : NSObject
//- (void)publicMethod;
//@end
//
//// MyClass.m（只在这里定义，没有在.h声明）
//@implementation MyClass
//- (void)privateMethod {
//    NSLog(@"我是私有方法");
//}
//- (void)publicMethod {
//    [self privateMethod];  // ✅ 内部调用完全没问题
//}
//@end
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        MyClass* class = [[MyClass alloc] init];
//        [class privateMethod];
//        [class publicMethod];
//    }
//    return 0;
//}






//@interface FKItem : NSObject
//@property (nonatomic, assign) double price;
//- (void)info;
//@end
//
//@implementation FKItem
//@synthesize price;
//// 实现接口部分定义的方法
//- (void)info
//{
//    NSLog(@"这是一个普通的方法");
//}
//
//// 类实现部分新增的方法，相当于私有方法
//- (double)calDiscount:(double)discount
//{
//    return self.price * discount;
//}
//@end
//
//@interface FKItem (fk)
//- (double) calDiscount: (double) discount;
//@end
//
//int main(int argc, char * argv[])
//{
//    @autoreleasepool {
//        FKItem* item = [[FKItem alloc] init];
//        item.price = 109;
//        [item info];
//        NSLog(@"物品打折的价格为：%g", [item calDiscount:.75]);
//    }
//}



@interface FKCar : NSObject
// 品牌属性
@property (nonatomic, copy) NSString* brand;
// 型号属性
@property (nonatomic, copy) NSString* model;
// 无参drive方法
- (void)drive;
@end

// 定义FKCar的类扩展
@interface FKCar ()
// 颜色属性
@property (nonatomic, copy) NSString* color;
// 带参drive方法
- (void)drive:(NSString*)owner;
@end

@implementation FKCar
// 实现无参 drive 方法
- (void)drive {
    NSLog(@"%@汽车正在路上奔驰", self);
}
// 实现带参 drive 方法
- (void)drive:(NSString*)owner
{
    NSLog(@"%@正驾驶%@汽车在路上奔驰", owner, self);
}
- (NSString*)description
{
    return [NSString stringWithFormat:@"<FK[_brand=%@, _model=%@, _color=%@]>",
            self.brand, self.model, self.color];
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建FKCar对象
        FKCar *car = [[FKCar alloc] init];
        
        // 为对象属性赋值
        car.brand = @"宝马";
        car.model = @"X5";
        car.color = @"黑色";
        
        // 调用无参drive方法
        [car drive];
        
        // 调用带参drive方法
        [car drive:@"孙悟空"];
    }
    return 0;
}
