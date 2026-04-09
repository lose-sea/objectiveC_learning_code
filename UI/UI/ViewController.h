//
//  ViewController.h
//  UI
//
//  Created by lose_sea on 2026/4/9.
//

#import <UIKit/UIKit.h>

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) UISlider *sli;
@property (nonatomic, strong) UIProgressView *pro;
@property (nonatomic, strong) UIStepper *step;
@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UIAlertController *alert;
@property (nonatomic, strong) UIActivityIndicatorView *act;

@end

