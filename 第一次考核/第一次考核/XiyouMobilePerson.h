//
//  XiyouMobilePerson.h
//  test111
//
//  Created by lose_sea on 2026/3/27.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Demand.h"
NS_ASSUME_NONNULL_BEGIN

@interface XiyouMobilePerson : Person <Demand>
{
    @protected
    int _iOS;
    int _web;
    NSString* _android;
    NSString* _serve;
}
- (void) setIOS: (int) ios;
- (int) iOS;

- (void) setWeb: (int) web;
- (int) web;

- (void) setAndroid: (NSString*) android;
- (NSString*) android;

- (void) setServe: (NSString*) serve;
- (NSString*) serve;

- (instancetype) initWithIos: (int) ios web: (int) web android: (NSString*) android serve: (NSString*) serve;
//@property (assign, nonatomic) int iOS;
//@property (assign, nonatomic) int web;
//@property (copy, nonatomic) NSString* android;
//@property (copy, nonatomic) NSString* serve;


@end

NS_ASSUME_NONNULL_END
