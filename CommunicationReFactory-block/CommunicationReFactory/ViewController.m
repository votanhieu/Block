//
//  ViewController.m
//  CommunicationReFactory
//
//  Created by Peter Molnar on 27/09/2016.
//  Copyright © 2016 Peter Molnar. All rights reserved.
//

#import "ViewController.h"
#import "PMOPictureController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PMOPictureController *pictureController = [[PMOPictureController alloc] initWithPictureURL:[NSURL URLWithString:@"https://images.pexels.com/photos/853199/pexels-photo-853199.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"]];
    [pictureController downloadImage];
    

    UIImageView *dot =[[UIImageView alloc] initWithFrame:CGRectMake(50,50,20,20)];
    //dot.image=[UIImage imageWithData:pictureController.image];
    [self.view addSubview:dot];
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
