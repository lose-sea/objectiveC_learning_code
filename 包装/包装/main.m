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



//#import<Foundation/Foundation.h>
//@interface FKUser : NSObject
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, copy) NSString* pass;
//@end
//
//
//@implementation FKUser
//{
//    @public
//    int test;
//}
//
//- (void) print {
//    NSLog(@"%d", test);
//}
//- (void) setName: (NSString*) newName {
//    self->_name = newName;
//}
//@end
//
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        FKUser* user = [[FKUser alloc] init];
//        user.name = @"John";
//        [user print];
//        NSLog(@"%@", user.name);
//        NSLog(@"%d", user->test);
//        
//    }
//    return 0;
//}




//#import<Foundation/Foundation.h>
//@interface FKUser : NSObject
//@property (nonatomic, setter = wawa:, getter = nana) NSString* name;
//@property (nonatomic, copy) NSString* pass;
//@end
//
//
//@implementation FKUser
//
//@end


//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        FKUser* user = [[FKUser alloc] init];
//        NSMutableString* mutableName = [NSMutableString stringWithString: @"John"];
//        user.name = mutableName;
//        NSLog(@"%@", user.nana);
//        user.name = mutableName;
//        [user wawa: @"good"];
//        
//        [mutableName appendString: @"is a person"];
//        NSLog(@"%@", [user nana]);
//    }
//    return 0;
//}
//
//


//// 继承
//#import<Foundation/Foundation.h>
//@interface FKUser : NSObject
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, copy) NSString* pass;
//@end
//
//@implementation FKUser
//- (id) init {
//    if (self = [super init]) {
//        self->_name = @"xinyan";
//    }
//        return self;
//}
//@end
//
//@interface FKSub : FKUser
//- (void) print;
//@end
//
//@implementation FKSub {
//    NSString* _name;
//}
//- (id) init {
//    if (self = [super init]) {
//        self->_name = @"John";
//    }
//    return self;
//}
//- (void) print {
//    NSLog(@"子类 %@", [super name]);
//    NSLog(@"父类 %@", _name);
//}
//@end
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        FKUser* user = [[FKUser alloc] init];
//        FKSub* sub = [[FKSub alloc] init];
//        user.name = @"xiyan";
//        [sub print];
//    }
//    return 0;
//}



//#import <Foundation/Foundation.h>
//
//@interface FKBase : NSObject
//- (void)base;
//- (void)test;
//@end
//
//@implementation FKBase
//- (void)base {
//    NSLog(@"父类的普通base方法");
//}
//
//- (void)test {
//    NSLog(@"父类的将被覆盖的test方法");
//}
//@end
//
//@interface FKSubclass : FKBase
//- (void)sub;
//@end
//
//
//@implementation FKSubclass
//- (void)test {
//    NSLog(@"子类的覆盖父类的test方法");
//}
//
//- (void)sub {
//    NSLog(@"子类的sub方法");
//}
//@end
//
//int main(int argc, char * argv[]) {
//    @autoreleasepool {
//        // 下面编译时类型和运行时类型完全一样，因此不存在多态
//        FKBase* bc = [[FKBase alloc] init];
//        // 下面两次调用将执行FKBase的方法
//        [bc base];
//        [bc test];
//        
//        // 下面编译时类型和运行时类型完全一样，因此不存在多态
//        FKSubclass* sc = [[FKSubclass alloc] init];
//        // 下面调用将执行从父类继承到的base方法
//        [sc base];
//        // 下面调用将执行子类重写的test方法
//        [sc test];
//        
//        // 下面调用将执行子类定义的sub方法
//        [sc sub];
//        
//        // 下面编译时类型和运行时类型不一样，发生多态
//        FKBase* plyomphicBc = [[FKSubclass alloc] init];
//        // 下面调用将执行从父类继承到的base方法
//        [plyomphicBc base];
//        // 下面调用将执行子类重写的test方法
//        [plyomphicBc test];
//        
//        // 因为plyomphicBc的编译时类型是FKBase
//        // FKBase类没有提供sub方法，所以下面代码编译时会出现错误
//        // [plyomphicBc sub];
//        
//        // 可将任何类型的指针变量赋值给id类型的变量
//        id dyna = plyomphicBc;
//        [dyna sub];
//    }
//    return 0;
//}




//#import <Foundation/Foundation.h>
//
//@interface FKBase : NSObject
//- (void)base;
//- (void)test;
//@end
//
//@implementation FKBase
//- (void)base {
//    NSLog(@"父类的普通base方法");
//}
//
//- (void)test {
//    NSLog(@"父类的将被覆盖的test方法");
//}
//@end
//
//@interface FKSubclass : FKBase
//- (void)sub;
//@end
//
//
//@implementation FKSubclass
//- (void)test {
//    NSLog(@"子类的覆盖父类的test方法");
//}
//
//- (void)sub {
//    NSLog(@"子类的sub方法");
//}
//@end
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        NSObject* hello = @"hello";
//        NSLog(@"是否是NSObjet类型的实例 %d", [hello isMemberOfClass: [NSObject class]]);
//        NSLog(@"是否是NSString类型的实例 %d", [hello isMemberOfClass: [NSString class]]);
//        NSLog(@"是否是NSObjet类型或其子类的实例 %d", [hello isKindOfClass: [NSString class]]);
//        NSLog(@"NSString 是否是NSObjet 的子类: %d", [NSString isSubclassOfClass: [NSObject class]]);
//    }
//    return 0;
//}



//#import<Foundation/Foundation.h>
//@interface FKUser: NSObject
//- (id) initWithName: (NSString*) aName pass: (NSString*) aPass;
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, copy) NSString* pass;
//@end
//
//@implementation FKUser
//@synthesize name;
//@synthesize pass;
//- (id) initWithName: (NSString*) aName pass: (NSString*) aPass {
//    if (self = [super init]) {
//        self->name = aName;
//        self->pass = aPass;
//    }
//    return self;
//}
//- (BOOL) isEqual: (id) other {
//    if (self == other) {
//        return YES;
//    }
//    if (other != nil && [other isMemberOfClass: [FKUser class]]) {
//        FKUser* target = (FKUser*) other;
//        return [self.name isEqualToString: target.name] && [self.pass isEqualToString: target.pass];
//    }
//    return NO;
//}
//@end
//
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        FKUser* user1 = [[FKUser alloc] initWithName: @"xinyan" pass: @"123"];
//        FKUser* user2 = [[FKUser alloc] initWithName: @"xinyan" pass: @"123"];
//        NSLog(@"%d", user1 == user2);
//        NSLog(@"%d", [user1 isEqual: user2]);
//        
//    }
//    return 0;
//}

//#import<Foundation/Foundation.h>
//@interface FKUser: NSObject
//- (id) initWithName: (NSString*) aName pass: (NSString*) aPass;
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, copy) NSString* pass;
//@end
//
//@implementation FKUser
//@synthesize name;
//@synthesize pass;
//- (id) initWithName: (NSString*) aName pass: (NSString*) aPass {
//    if (self = [super init]) {
//        self->name = aName;
//        self->pass = aPass;
//    }
//    return self;
//}
//- (BOOL) isEqual: (id) other {
//    if (self == other) {
//        return YES;
//    }
//    if (other != nil && [other isMemberOfClass: [FKUser class]]) {
//        FKUser* target = (FKUser*) other;
//        return [self.name isEqualToString: target.name] && [self.pass isEqualToString: target.pass];
//    }
//    return NO;
//}
//@end


//#import<Foundation/Foundation.h>
//
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
//
//#import<Foundation/Foundation.h>
//@interface NSNumber (fk)
//- (NSNumber*) add: (double) num2;
//- (NSNumber*) substract: (double) num2;
//- (NSNumber*) multiply: (double) num2;
//- (NSNumber*) divide: (double) num2;
//@end
//
//@implementation NSNumber (fk)
//- (NSNumber*) add: (double) num2 {
//    return [NSNumber numberWithDouble: ([self doubleValue] + num2)];
//}
//- (NSNumber*) substract:(double) num2 {
//    return [NSNumber numberWithDouble: ([self doubleValue] - num2)];
//}
//- (NSNumber*) multiply: (double) num2 {
//    return [NSNumber numberWithDouble: ([self doubleValue] * num2)];
//}
//- (NSNumber*) divide: (double) num2 {
//    return [NSNumber numberWithDouble: ([self doubleValue] / num2)];
//}
//@end
//
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        NSNumber* num = [NSNumber numberWithDouble: 8.8];
//        NSLog(@"%@", [num add: 6]);
//        NSLog(@"%@", [num multiply: 9]);
//    }
//    return 0;
//}
//
//
//// 不标准
//#import<Foundation/Foundation.h>
//@protocol test
//- (void) talk;
//@end
//@interface NSObject (fk) <test>
//- (void) say;
//@end
//
//@implementation NSObject(fk)
//- (void) talk {
//    NSLog(@"xinyan");
//}
//- (void) say {
//    NSLog(@"nihao");
//}
//@end
//
//@interface Car : NSObject
//- (void) run;
//@end
//
//@interface Car ()
//- (void) color;
//@end
//
//@implementation Car
//- (void) run {
//    NSLog(@"run");
//}
//- (void) color {
//    NSLog(@"a red car");
//}
//@end
//
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        Car* car = [[Car alloc] init];
//        [car color];
//        [car run];
//        [car say];
//        [car talk];
//    }
//    return 0;
//}





//#import<Foundation/Foundation.h>
//@protocol superProtocol
//- (void) sayHello;
//@end
//
//@protocol test <superProtocol>
//- (void) talk;
//@end
//@interface NSObject (fk) <test>
//- (void) say;
//@end
//
//@implementation NSObject(fk)
//- (void) sayHello {
//    NSLog(@"hello");
//}
//- (void) talk {
//    NSLog(@"xinyan");
//}
//- (void) say {
//    NSLog(@"nihao");
//}
//@end
//
//@interface Car : NSObject
//- (void) run;
//@end
//
//@interface Car ()
//- (void) color;
//@end
//
//@implementation Car
//- (void) run {
//    NSLog(@"run");
//}
//- (void) color {
//    NSLog(@"a red car");
//}
//@end
//
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        Car* car = [[Car alloc] init];
//        [car color];
//        [car run];
//        [car say];
//        [car talk];
//        [car sayHello];
//    }
//    return 0;
//}




//#import <Foundation/Foundation.h>
//
//@interface FKUser : NSObject
//@property (nonatomic, copy) NSString* name;
//@end
//
//@implementation FKUser
//- (BOOL) isEqual: (id) other {
//    if ([super isEqual: other]) {
//        return YES;
//    }
//    if (other != nil && [other isMemberOfClass: FKUser.class]) {
//        FKUser* target = (FKUser*) other;
//        return [self.name isEqual: target.name];
//    }
//    
//    return NO;
//}
//@end
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        NSNumber* a = [NSNumber numberWithDouble: 8.7];
//        NSLog(@"%g", [a doubleValue]); 
//    }
//    return 0;
//}

#import "User.h"
int main(int argc, char* argv[]) {
    @autoreleasepool {
        NSObject<Sayhello>* user = [[User alloc] init];
        [user sayhello]; 
    }
    return 0;
}

