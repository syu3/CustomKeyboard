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
    

    if (self) {
        // Initialization code
    }
    return self;
}

-(id)init{

    _activeTextField.delegate = self;

    
    if (self) {
        // UINibで作成したxibファイルを取得
        UINib *nib = [UINib nibWithNibName:@"View" bundle:nil];
        // 0番目の要素（一番最初に置いたUIView）を取得して自分自身にセット
        // ※ self は、initメソッド内であれば代入できる
        self = [nib instantiateWithOwner:nil options:nil][0];
        

        imageview.hidden =YES;
        imageview1.hidden =YES;
        

        
        
        
        
    }
    
    return self;
}
//TODO:ここ
-(IBAction)syoukyo{
    if (_activeTextField.text > 0&&number>0) {
        number=number-1;
        
NSLog(@"%@",_activeTextField.text);
    int length = [_activeTextField.text length];
    _activeTextField.text = [_activeTextField.text substringToIndex:(length-1)];
    }else{

        
    }
}


-(IBAction)henkou{

    keyboard1.alpha = 1.0;
    keyboardView.alpha = 1.0;
    if (_activeTextField.inputView)
    {
        _activeTextField.inputView = nil;
        keyboard1.alpha = 0.0;
        keyboardView.alpha = 0.0;
    }
    [_activeTextField reloadInputViews];
    
}//キーボードを閉じる

-(void)closeKeyboard:(id)sender{
    [_activeTextField resignFirstResponder];
}

-(IBAction)a:(UIButton *)sender{
    number++;
    NSString *numtag = [NSString stringWithFormat:@"あ"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
    imageview.hidden = NO;
    imageview1.hidden = YES;
}
-(IBAction)ka:(UIButton *)sender{number++;
    NSString *numtag = [NSString stringWithFormat:@"か"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
    imageview.hidden = YES;
    imageview1.hidden = NO;
}
-(IBAction)sa:(UIButton *)sender{number++;
    NSString *numtag = [NSString stringWithFormat:@"さ"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ta:(UIButton *)sender{number++;
    NSString *numtag = [NSString stringWithFormat:@"た"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)na:(UIButton *)sender{number++;
    NSString *numtag = [NSString stringWithFormat:@"な"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ha:(UIButton *)sender{number++;
    NSString *numtag = [NSString stringWithFormat:@"は"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ma:(UIButton *)sender{number++;
    NSString *numtag = [NSString stringWithFormat:@"ま"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ya:(UIButton *)sender{number++;
    NSString *numtag = [NSString stringWithFormat:@"や"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)ra:(UIButton *)sender{number++;
    NSString *numtag = [NSString stringWithFormat:@"ら"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)wa:(UIButton *)sender{number++;
    NSString *numtag = [NSString stringWithFormat:@"わ"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)supesu:(UIButton *)sender{
    number++;
    NSString *numtag = [NSString stringWithFormat:@"　"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}

-(IBAction)swipe{
}
-(IBAction)kaigyou{
    NSString *numtag = [NSString stringWithFormat:@"\n"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];
}
-(IBAction)kasoru{
    NSString *numtag = [NSString stringWithFormat:@"　"];
    self.activeTextField.text = [self.activeTextField.text stringByAppendingString:numtag];

}








/**
 * return ボタン押下時処理
 * このViewに設定されたTextFieldのキーボードを閉じる
 */


@end
