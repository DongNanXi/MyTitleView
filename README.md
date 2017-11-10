# MyTitleView
 使用：
    直接在xib上创建一个view 把class改为MyTitleView
    
    最后CV 中添加相应代码
    
    [self.ttView subviews:@[@"全部订单",@"已发货",@"未发货",@"取消"] defaultColor:nil selectedColor:nil];
    self.ttView.indx = ^(NSInteger indx) {
        NSLog(@"======%d",(int)indx);
    };
