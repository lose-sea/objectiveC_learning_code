//
//  main.m
//  包装
//
//  Created by lose_sea on 2026/3/8.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return EXIT_SUCCESS;
//}




//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        NSNumber* num = [NSNumber numberWithInt: 20];
//        NSNumber* de = [NSNumber numberWithDouble: 3.4];
//        NSLog(@"%d", [num intValue]);
//        NSLog(@"%g", [de doubleValue]);
//        
//        // 先创建NSNumber对象, 再调用initWithXxx: 方法执行初始化
//        NSNumber* ch = [[NSNumber alloc] initWithChar: 'J'];
//        // 直接输出 NSNumber 对象, 使用%@ 格式
//        NSLog(@"%@", ch);
//        NSLog(@"%c", [ch charValue]);
//    }
//    return 0;
//}


//@interface FKApple : NSObject
//@property (nonatomic, copy) NSString* color;
//@property (nonatomic, assign) double weight;
//- (id) initWithColor: (NSString*) color weight: (double) weight;
//@end
//
//@implementation FKApple
//- (id) initWithColor:(NSString *)color weight:(double)weight {
//    if (self = [super init]) {
//        self.color = color;
//        self.weight = weight;
//    }
//    return self;
//}
//// 重写父类的 description 方法
//- (NSString*) description {
//    return [NSString stringWithFormat: @"<FKApple[_color = %@, _weight = %g>", self.color, self.weight];
//}
//@end
//
//int main(int argc,char* atgv[]) {
//    @autoreleasepool {
//        FKApple* a = [[FKApple alloc] initWithColor: @"red" weight: 5.57];
//        NSLog(@"%@", a);
//    }
//    return 0;
//}



//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        int it = 65;
//        float fl = 65.0f;
//        // 比较int和float的数值相等性（65和65.0f数值相同，输出1）
//        NSLog(@"65和65.0f是否相等？%d", (it == fl));
//        
//        char ch = 'A';
//        // 'A'的ASCII码是65，与it的数值相等，输出1
//        NSLog(@"65和'A'是否相等？%d", (it == ch));
//        
//        NSString* str1 = [NSString stringWithFormat:@"疯狂iOS讲义"];
//        NSString* str2 = [NSString stringWithFormat:@"疯狂iOS讲义"];
//        // ==比较的是指针地址（str1和str2是不同对象，地址不同，输出0）
//        NSLog(@"str1和str2是否相等？%d", (str1 == str2));
//        // isEqual:比较的是字符串内容（内容相同，输出1）
//        NSLog(@"str1是否isEqual: str2？%d", [str1 isEqual:str2]);
//        
//        // NSDate和NSString无继承关系，==比较会触发编译警告（类型不匹配）
//        NSLog(@"%d", [NSDate new] == [NSString class]);
//        NSLog(@"%d", [[NSDate new] isEqual: [NSString class]]);
//    }
//    return 0;
//}



//int main(int argc, char * argv[]) {
//    @autoreleasepool {
//        // s1、s2直接指向常量池中的"疯狂iOS"字符串对象
//        NSString* s1 = @"疯狂iOS";
//        NSString* s2 = @"疯狂iOS";
//        
//        // 打印s1、s2的内存地址（地址完全相等）
//        NSLog(@"s1地址：%p，s2地址：%p", s1, s2);
//        // ==比较指针地址，地址相同输出1（真）
//        NSLog(@"s1与s2是否相等：%d", (s1 == s2));
//        
//        // s3通过stringWithFormat生成新的字符串对象，存于堆区
//        NSString* s3 = [NSString stringWithFormat:@"疯狂iOS"];
//        // 打印s3的内存地址（与s1、s2不同）
//        NSLog(@"s3地址：%p", s3);
//        // ==比较指针地址，地址不同输出0（假）
//        NSLog(@"s1与s3是否相等：%d", (s1 == s3));
//    }
//    return 0;
//}



//@interface FKUser : NSObject
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, copy) NSString* idStr;
//- (id) initWithName: (NSString*) name idStr: (NSString*) idstr;
//@end
//
//@implementation FKUser
//- (id) initWithName: (NSString*) name idStr: (NSString*) idStr {
//    if (self = [super init]) {
//        self.name = name;
//        [self setName: name];
//        self->_name = name;
//        self.idStr = idStr;
//    }
//    return self;
//}
//// 重写Equal 方法: 提供自定义的相等标准
//- (BOOL)isEqual: (id) other {
//    if (self == other) {
//        return YES;
//    }
//    if (other != nil && [other isMemberOfClass: FKUser.class]) {
//        FKUser* target = (FKUser*)other;
//        return [self.idStr isEqual: target.idStr];
//    }
//    return NO;
//}
//@end


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




