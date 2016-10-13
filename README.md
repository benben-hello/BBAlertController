# BBAlertController
修改系统弹窗 BBAlertController 字体颜色

### 示例图
```
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


```
