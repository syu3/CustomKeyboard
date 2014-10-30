//
//  CustomNumKeyboard.m
//  customKeyboard
//
//  Created by 加藤 周 on 2014/10/26.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import "d.h"
@interface CustomNumKeyboard()
@end
@implementation CustomNumKeyboard






- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/


-(id)init{
    _activeTextField.delegate = self;
    
    self = [super init];
    if (self) {
        // UINibで作成したxibファイルを取得
        UINib *nib = [UINib nibWithNibName:@"View" bundle:nil];
        // 0番目の要素（一番最初に置いたUIView）を取得して自分自身にセット
        // ※ self は、initメソッド内であれば代入できる
        self = [nib instantiateWithOwner:nil options:nil][0];
    }
    return self;
}
- (IBAction)delegate
{
    
    IBOutlet UIButton* closeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];

    
    [closeButton addTarget:self action:@selector(closeKeyboard:) forControlEvents:UIControlEventTouchUpInside];
    // サブビュー作成
    [CustomNumKeyboard1 addSubview:closeButton];
    
    _activeTextField.inputAccessoryView = CustomNumKeyboard1;
    
}
//キーボードを閉じる
-(void)closeKeyboard:(id)sender{
    [_activeTextField resignFirstResponder];
}

-(IBAction)a:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"あ"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ka:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"か"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)sa:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"さ"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ta:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"た"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)na:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"な"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ha:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"は"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ma:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"ま"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ya:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"や"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ra:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"ら"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)wa:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"わ"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)supesu:(UIButton *)sender{
    NSString *numtag = [NSString stringWithFormat:@"　"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}

-(IBAction)swipe{
    NSString *numtag = [NSString stringWithFormat:@"え"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];

    
}








/**
 * return ボタン押下時処理
 * このViewに設定されたTextFieldのキーボードを閉じる
 */

-(IBAction)thenzi{
    
        _activeTextField.delegate = self;

    if (_activeTextField.inputView)
    {
        _activeTextField.inputView = nil;
    } else
    {
        _activeTextField.inputView = CustomNumKeyboard1;
    }
    [_activeTextField reloadInputViews];
    

}
@end
