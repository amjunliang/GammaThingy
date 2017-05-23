//
//  TextViewController.m
//  GammaThingy
//
//  Created by 马俊良 on 2017/5/24.
//  Copyright © 2017年 Thomas Finch. All rights reserved.
//

#import "TextViewController.h"
#import "GammaController.h"

@interface TextViewController (){
    BOOL _ison;
}



@end

@implementation TextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self updateWIthWIth:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateWIthWIth:(BOOL)isON{
    if (isON) {
        CGFloat percentOrange = 0.2/7.5;
        [GammaController setGammaWithRed:(2-percentOrange)/2 green:1-percentOrange blue:1];

        self.statuLable.text = @"色彩矫正已\"开启\"";
    }else{
        [GammaController setGammaWithRed:1 green:1 blue:1];

        self.statuLable.text = @"色彩矫正已\"关闭\"";

    }
}


- (IBAction)switchChange:(UISwitch *)sender{
    
    _ison = sender.on;
    [self updateWIthWIth:_ison];

    
}
@end
