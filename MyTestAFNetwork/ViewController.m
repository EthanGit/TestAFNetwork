//
//  ViewController.m
//  MyTestAFNetwork
//
//  Created by TSD-Ethan on 2013/12/12.
//  Copyright (c) 2013年 TSD-Ethan. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *urlStr = @"http://stageserver.dressbook.com.tw/api/getNotifyMsg/6/1/100";
    
    //GET Request
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:urlStr parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        
        NSMutableArray *resDataArray = responseObject[@"data"];
        
        
        NSLog(@"JSON Key 資料: total:%@ \n%@ \n%@\n%@\n%@",
                responseObject[@"total"],
                resDataArray[0][@"User_id"],
                resDataArray[0][@"act_user"],
                resDataArray[0][@"act_user_name"],
                resDataArray[0][@"message"]);
        

    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    NSLog(@"commit");
    

    //POST Request
//    NSDictionary *parameters = @{@"foo": @"bar"};
//    [manager POST:@"http://example.com/resources.json" parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"JSON: %@", responseObject);
//        
//        
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
