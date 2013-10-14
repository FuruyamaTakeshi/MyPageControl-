//
//  FTNavigationViewController.m
//  My PageControl
//
//  Created by 古山 健司 on 2013/10/13.
//  Copyright (c) 2013年 TF. All rights reserved.
//

#import "FTNavigationViewController.h"

@interface FTNavigationViewController ()

@end

@implementation FTNavigationViewController

- (id)initWithPageNumber:(NSUInteger)page
{
    LOG_METHOD
    if (self = [super init])
    {
        _pageNumber = page;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
