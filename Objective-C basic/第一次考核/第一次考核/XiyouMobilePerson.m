//
//  XiyouMobilePerson.m
//  test111
//
//  Created by lose_sea on 2026/3/27.
//

#import "XiyouMobilePerson.h"

@implementation XiyouMobilePerson
- (void) setIOS:(int)iOS {
    if (iOS % 2 == 1) {
        self->_iOS = 1;
    } else {
        self->_iOS = -1;
    }
}
- (int)iOS {
    return _iOS;
}

- (void) setWeb:(int)web {
    self->_web = web;
}
- (int)web {
    return _web;
}

- (void) setAndroid:(NSString *)android {
    self->_android = [android copy];
}
- (NSString*) android {
    return _android;
}

- (void) setServe:(NSString *)serve {
    self->_serve = [serve copy];
}
- (NSString*)serve {
    return _serve;
}

- (instancetype) initWithIos: (int) ios web: (int) web android: (NSString*) android serve: (NSString*) serve {
    self.iOS = ios;
    self.web = web;
    self.android = android;
    self.serve = serve;
    return self;
}

- (void) calculate {
    NSLog(@"iOS + web = %d", self->_iOS + self->_web);
}
- (NSString*) description {
    return [NSString stringWithFormat: @"name = %@, age = %d, ios = %d, web = %d, android = %@, serve = %@", self.name, self.age, _iOS, _web, _android, _serve];
}
@end
