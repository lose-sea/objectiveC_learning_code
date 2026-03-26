//
//  main.m
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "XiyouMobilePerson.h"
#import "XiyouMobilePersonCategory.h"
#import "Model.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XiyouMobilePerson* x1 = [[XiyouMobilePerson alloc] init];
        x1.iOS = 1;
        x1.web = 0;
        x1.android = @"android";
        x1.serve = @"serve";
        [x1 dabao];
        NSLog(@"%@", [x1 dabao]); 
        
        Model* m1 = [[Model alloc] init];
        m1.xiyouMobileArray = [NSMutableArray arrayWithObjects:
                               [[XiyouMobilePerson alloc] initWithIos: 25 web: 43 android: @"hello" serve: @"ios"],
                               [[XiyouMobilePerson alloc] initWithIos: 234 web: 43 android: @"hello" serve: @"ios"],
                               [[XiyouMobilePerson alloc] initWithIos: 213 web: 43 android: @"hello" serve: @"ios"],
                               [[XiyouMobilePerson alloc] initWithIos: 23 web: 43 android: @"hello" serve: @"ios"],
                               
        nil];
        
//        [m1.xiyouMobileArray removeObjectsInRange: NSMakeRange(2, 3)];
//        NSLog(@"%d, %d, %@, %@", [m1.xiyouMobileArray[0]]);
//
//        
//        
//
//        
        int a = 1;
        NSNumber* a1 = [NSNumber numberWithInt: a];
        
        float b = 1;
        NSNumber* b1 = [NSNumber numberWithFloat: b];
        
        char* string = "hello";
        NSString* c1 =[[NSString alloc] initWithUTF8String: string];
        
        NSLog(@"%@", c1); 
        
//        Person* p1 = [[Person alloc] initWithName: @"je" andAge: 3];
//        NSLog(@"%@ %@", [p1 descriptionName], [p1 descriptionAge]); 

        }
    return EXIT_SUCCESS;
}
