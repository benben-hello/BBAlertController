//
//  ViewController.m
//  BBAlertController
//
//  Created by liudonghui on 2016/10/13.
//  Copyright © 2016年 benben. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertController+Color.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonClick:(UIButton *)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"自定义提示的字体颜色" message:@"我是描述信息" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:@"其他" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:otherAction];
    
    //修改标题颜色和描述信息颜色
    if (sender.tag == 1) {
        alertController.titleColor = [UIColor redColor];
        alertController.messageColor = [UIColor greenColor];
    }
    
    //修改单个按钮字体颜色
    if (sender.tag == 2) {
        cancelAction.textColor = [UIColor redColor];
        otherAction.textColor = [UIColor greenColor];
    }
    
    //修改所有按钮颜色
    if (sender.tag == 3) {
        alertController.tintColor = [UIColor greenColor];
    }
    
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
