//
//  WebInfoViewController.m
//  Millennium
//
//  Created by Daniel Earl on 07/01/2017.
//  Copyright © 2017 Daniel Earl. All rights reserved.
//

#import "WebInfoViewController.h"

#import "WebInfoViewController.h"

@interface WebInfoViewController ()

@end

@implementation WebInfoViewController


@synthesize webpage, pageLoading, errorMsg;



- (void)webViewDidStartLoad:(UIWebView *)webpage
{
    errorMsg.hidden=YES;
    [pageLoading startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webpage
{
    errorMsg.hidden=YES;
    [pageLoading stopAnimating];
}

- (void)webView:(UIWebView *)webpage didFailLoadWithError:(NSError *)error
{
    errorMsg.hidden=NO;
    [pageLoading stopAnimating];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *webAddress = @"https://en.wikipedia.org/wiki/Millennium_Stadium";
    
    NSURL *addr = [NSURL URLWithString:webAddress];
    NSURLRequest *requestpage = [NSURLRequest requestWithURL:addr];
    [webpage loadRequest:requestpage];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
