//
//  main.m
//  OC-Foundation(NSMutableString)
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 可变字符串的操作
        NSMutableString *mulStr1=[NSMutableString stringWithCapacity:10];//capacity表示最优值
        [mulStr1 setString:@"hello,qingyun"];
        NSLog(@"mulStr1==>%@",mulStr1);
        //拼接，追加
        [mulStr1 appendFormat:@" %@ ios",@"teaching"];
        NSLog(@"mulStr1-->%@",mulStr1);
        //插入 在指定位置插入，注意不要越界
        [mulStr1 insertString:@"using xcode " atIndex:14];
        NSLog(@"mulStr1-->%@,%p",mulStr1,&mulStr1);
        //修改内容 替换
        mulStr1=[NSMutableString stringWithString:[mulStr1 stringByReplacingOccurrencesOfString:@"xcode" withString:@"iterm and xcode"]];
        NSLog(@"mulStr1-->%@,%p",mulStr1,&mulStr1);
        //删除
        [mulStr1 deleteCharactersInRange:NSMakeRange(26, 9)];
        NSLog(@"mulStr1-->%@",mulStr1);
        //NSString里面的方法
        //是否以XXXX开头
        if ([mulStr1 hasPrefix:@"hello"])
        {
            NSLog(@"YES");
        }
        else
        {
            NSLog(@"NO");
        }
        //是否一XXXX结尾
        if ([mulStr1 hasSuffix:@"ios"])
        {
            NSLog(@"YES");
        }
        else
        {
            NSLog(@"NO");   
        }
        //全部大写
        NSLog(@"%@",[mulStr1 uppercaseString]);
        //单词首字母大写，其与小写
        NSLog(@"%@",[mulStr1 capitalizedString]);
        //全部小写
        NSLog(@"%@",[mulStr1 lowercaseString]);
    }
    return 0;
}
