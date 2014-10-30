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
}

@property (nonatomic, retain)UITextField *activeTextField;

@end
