////////
////////  main.m
////////  集合 (NSSet 与 NSMutableSet)
////////
////////  Created by lose_sea on 2026/3/11.
////////
//////
////////#import <Foundation/Foundation.h>
////////
//////////int main(int argc, const char * argv[]) {
//////////    @autoreleasepool {
//////////        // insert code here...
//////////        NSLog(@"Hello, World!");
//////////    }
//////////    return EXIT_SUCCESS;
//////////}
////////@interface FKUser : NSObject
////////@property (nonatomic, copy) NSString* name;
////////@property (nonatomic, copy) NSString* pass;
////////- (id) initWithName: (NSString*) aName pass: (NSString*) aPass;
////////- (void) say: (NSString*) content;
////////@end
////////
////////@implementation FKUser
////////- (id) initWithName: (NSString*) aName pass: (NSString*) aPass {
////////    if (self = [super init]) {
////////        self.name = aName;
////////        self->_name = aName;
////////        self->_pass = aPass;
////////    }
////////    return self;
////////}
////////- (void) say: (NSString*) content {
////////    NSLog(@"%@ say %@", _name, content);
////////}
////////
////////// 重写isEqual 方法
////////- (BOOL) isEqual: (id) other {
////////    if (self == other) {
////////        return YES;
////////    }
////////    if ([self class] == [FKUser class]) {
////////        FKUser* target = (FKUser*) other;
////////        return [self.name isEqualToString: target.name] && [self.pass isEqualToString: target.pass];
////////    }
////////    return NO;
////////}
////////// 重写description 方法
////////- (NSString*) description {
////////    return [NSString stringWithFormat: @"my name is %@, my pass is %@", _name, _pass];
////////}
////////
////////- (NSUInteger) hash {
////////    NSUInteger namehash = _name == nil ? 0 : [_name hash];
////////    NSUInteger passhash = _pass == nil ? 0 : [_pass hash];
////////    return namehash * 31 + passhash;
////////}
////////@end
////////
////////
////////
////////
////////int main(int argc, char* argv[]) {
////////    @autoreleasepool {
////////        NSSet* set = [[NSSet alloc] initWithObjects:
////////                        [[FKUser alloc] initWithName: @"sun" pass: @"123"],
////////                        [[FKUser alloc] initWithName: @"xin" pass: @"456"],
////////                        [[FKUser alloc] initWithName:@"sun" pass:@"123"],
////////                        [[FKUser alloc] initWithName:@"xun" pass:@"432"],
////////                        [[FKUser alloc] initWithName: @"liu" pass: @"543"],
////////                      nil];
////////        NSLog(@"The count of set is %ld", [set count]);
////////        
////////    }
////////    return 0;
////////}
//////
//////
//////
//////#import<Foundation/Foundation.h>
//////int main(int argc, char* argv[]) {
//////    @autoreleasepool {
//////        // NSSet* set1 = [NSSet set];
////////        NSSet* set2 = [NSSet setWithObject: @"hello"];
////////        NSSet* set = [NSSet setWithObjects: @"hello", @"xinyan", nil];
////////        NSArray* arr = [NSArray arrayWithObject: @"hello"];
////////        NSSet* set1 = [NSSet setWithObject: @"hello"];
////////        NSSet* set = [NSSet setWithSet: set1];
////////        NSSet* set = [[NSSet alloc] initWithObjects: @"hello", nil];
////////        NSSet* set = [[NSSet alloc] initWithObject: @"hello"];
////////        NSArray* arr = [[NSArray alloc] initWithObjects: @"hello", @"xinyan", nil];
////////        NSSet* set = [[NSSet alloc] initWithArray: arr];
//////        
//////        NSSet* set1 = [[NSSet alloc] initWithObjects: @"hello", @"xinyan" ,nil];
////////        NSSet* set = [[NSSet alloc] initWithSet: set1];
//////        
//////        // 从另一个集合创建，copyItems为YES时深拷贝每个元素
//////        NSSet *set2 = [[NSSet alloc] initWithSet:set1 copyItems:YES];
//////        NSLog(@"%@", set2);
//////    }
//////    return 0;
//////}
////
////
//////#import<Foundation/Foundation.h>
//////int main(int argc, char* argv[]) {
//////    @autoreleasepool {
//////        NSSet* set = [[NSSet alloc] initWithObjects: @"hello", @"xinyan", nil];
//////        NSSet* set1 = [[NSSet alloc] initWithObjects: @"python", nil];
//////        set = [set setByAddingObjectsFromSet: set1];
////////        NSArray* arr = [[NSArray alloc] initWithObjects: @"python", nil];
////////        set = [set setByAddingObjectsFromArray: arr];
////////        set = [set setByAddingObject: @"swift"];
//////        NSLog(@"%@", set);
//////    }
//////    return 0;
//////}
////
////
////#import<Foundation/Foundation.h>
////int main(int argc, char* argv[]) {
////    @autoreleasepool {
////        NSSet* set = [[NSSet alloc] initWithObjects: @"hello", @"xinyan", nil];
//////        NSSet* set1 = [[NSSet alloc] initWithObjects: @"python", nil];
//////        set = [set setByAddingObjectsFromSet: set1];
//////        id a = [set anyObject];
//////        NSLog(@"%@", a);
//////        NSLog(@"%d", [set containsObject: str]);
////        NSString* str = @"hello";
////        NSLog(@"%@", [set member: str]);
////        NSLog(@"%@", [set member: @"swift"]);
////    }
////    return 0;
////}
//
//#import<Foundation/Foundation.h>
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        NSSet* set = [[NSSet alloc] initWithObjects: @"hello", @"xinyan", nil];
//        NSSet* set1 = [set objectsPassingTest: ^(id obj, BOOL* stop) {
//            return (BOOL)([obj length] > 5);
//        }];
//        NSLog(@"%@",set1);
//    }
//    return 0;
//}
//


//#import "User.h"
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        User* user1 = [[User alloc] initWithName:@"xinyan" pass:@"123"];
//        User* user2 = [[User alloc] initWithName:@"xinyan" pass:@"123"];
//        User* user3 = [[User alloc] initWithName:@"John" pass:@"123"];
//        NSSet* set = [NSSet setWithObjects: user1, user2, user3, nil];
//        NSLog(@"%ld", [set count]);
//    }
//    return 0;
//}

//#import<Foundation/Foundation.h>
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        NSMutableSet* set = [NSMutableSet setWithObjects: @"hello", @"xinyan", nil];
//        [set addObject: @"swift"];
////        [set removeObject: @"hello"];
////        [set removeAllObjects];
//        NSArray* arr = [[NSArray alloc] initWithObjects: @"python", @"java", nil];
////        [set addObjectsFromArray: arr];
//        NSSet* set1 = [NSSet setWithArray: arr];
//        [set unionSet: set1];
////        [set minusSet: set1];
////        [set intersectSet: set1];
//        [set setSet: set1];
//        NSLog(@"%@", set);
//        
//    }
//    return 0;
//}

#import<Foundation/Foundation.h>
int main(int argc, char* argv[]) {
    @autoreleasepool {
        
    }
    return 0;
}
