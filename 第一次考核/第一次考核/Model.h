//
//  Model.h
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#import <Foundation/Foundation.h>
#import "XiyouMobilePerson.h"

NS_ASSUME_NONNULL_BEGIN


@interface Model : NSObject
@property (nonatomic, strong) NSMutableArray<XiyouMobilePerson*>* xiyouMobileArray;
@end

@interface Model ()
@property (nonatomic, strong) NSMutableDictionary* xiyouMobileDictionary;
@end

// 使用nonatomic 是在单线程的情况下,可以提高程序运行的效率
// 使用copy 是为了在被赋值的时候得到的是被赋值对象的一个副本, 防止外部对被赋值对象做出修改的时候不会影响本身的

NS_ASSUME_NONNULL_END
