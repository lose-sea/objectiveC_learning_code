//
//  ViewController.m
//  enum
//
//  Created by lose_sea on 2026/9/26.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //    enum Weekday {
    //        monday,
    //        tuesday,
    //        wednesday,
    //        thuresday,
    //        friday,
    //        satursday
    //    };
    //    enum Weekday today = monday;
    //    NSLog(@"%d", today);
    
    
    
    //    typedef enum Weekday {
    //        monday,
    //        tuesday,
    //        wednesday,
    //        thuresday,
    //        friday,
    //        satursday
    //    } Weekday;
    //    Weekday today = monday;
    //    NSLog(@"%d", today);
    
//    typedef enum Weekday : NSInteger {
//        monday,
//        tuesday,
//        wednesday,
//        thuresday,
//        friday,
//        satursday
//    } Weekday;
//    Weekday today = monday;
//    NSLog(@"%ld", today);
    
    typedef NS_ENUM(NSInteger, Weekday) {
        monday,
        tuesday,
        wednesday,
        thuresday,
        friday,
        satursday
    };
    Weekday today = monday;
    NSLog(@"%ld", today);
    
    
}


@end
