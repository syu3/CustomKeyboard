//
//  CustomNumKeyboard.h
//  customKeyboard
//
//  Created by 加藤 周 on 2014/10/26.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomNumKeyboard : UIView<UITextFieldDelegate>{

IBOutlet UIView*CustomNumKeyboard1;
    IBOutlet UIImageView*imageview;
        IBOutlet UIImageView*imageview1;
//        IBOutlet UIImageView*imageview2;
//        IBOutlet UIImageView*imageview3;
//        IBOutlet UIImageView*imageview4;
//    NSString *str4;
    int number;
    IBOutlet UIButton*syoukyo;
//    IBOutlet UIButton*nextKeyboardButton;
    IBOutlet UIView*keyboardView;
    IBOutlet UIView* toolView;
       IBOutlet UIView*keyboard1;
}
- (void)advanceToNextInputMode;

@property (nonatomic, retain)UITextField *activeTextField;
@property(nonatomic,retain) UIView *view;

@end
