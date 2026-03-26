//
//  main.m
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "XiyouMoblePerson.h"
#import "XiyouMobilePersonCategory.h"
#import "Model.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XiyouMoblePerson* x1 = [[XiyouMoblePerson alloc] init];
        x1.iOS = 1;
        x1.web = 0;
        [x1 dabao];
//        NSLog(@"%@", [x1 dabao]); 
        
        Model* m1 = [[Model alloc] init];
        m1.xiyouMobileArray = [NSMutableArray arrayWithObjects:
                               [[XiyouMoblePerson alloc] initWithIos: 25 web: 43 android: @"hello" serve: @"ios"],
                               [[XiyouMoblePerson alloc] initWithIos: 234 web: 43 android: @"hello" serve: @"ios"],
                               [[XiyouMoblePerson alloc] initWithIos: 213 web: 43 android: @"hello" serve: @"ios"],
                               [[XiyouMoblePerson alloc] initWithIos: 23 web: 43 android: @"hello" serve: @"ios"],
                               
        nil];
        
        [m1.xiyouMobileArray removeObjectsInRange: NSMakeRange(2, 3)];
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
