//
//  XiyouMoblePerson.m
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#import "XiyouMoblePerson.h"



@implementation XiyouMoblePerson
- (void) setIOS:(int)ios {
    self->_iOS = ios;
}
- (void) setWeb:(int)web {
    self->_web = web;
}
- (void) setAndroid:(NSString *)android {
    self->_android = android;
}
- (void) setServe:(NSString *)serve {
    self->_serve = serve;
}

- (id) initWithIos: (int) ios web: (int) web android: (NSString*) android serve: (NSString*) serve {
    self.iOS = ios;
    self.web = web;
    self.android = android;
    self.serve = serve;
    return self;
}
- (id) setIOS2:(int)iOS {
    if (iOS % 2 == 1) {
        self->_iOS = 1;
    } else {
        self->_iOS = -1;
    }
    return self; 
}

- (int) getIOS {
    return self->_iOS;
}
- (int) getWeb {
    return self->_web;
}
- (NSString*) getAndroid {
    return self->_android;
}
- (NSString*) getServe {
    return self->_serve; 
}


- (void) calculate {
    NSLog(@"%d", self->_iOS + self->_web);
}
@end
