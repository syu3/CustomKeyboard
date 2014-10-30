//
//  ViewController.m
//  customKeyboard
//
//  Created by 加藤 周 on 2014/10/26.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import "ViewController.h"
#import "d.h"
@interface ViewController ()

@end

@implementation ViewController{
    IBOutlet UITextField *kingakuTx;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    CustomNumKeyboard *cnkb = [CustomNumKeyboard new];
    cnkb.activeTextField = kingakuTx;
    kingakuTx.inputView = cnkb;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
