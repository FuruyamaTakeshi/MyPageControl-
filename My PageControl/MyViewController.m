//
//  MyViewController.m
//  My PageControl
//
//  Created by 古山 健司 on 2013/10/06.
//  Copyright (c) 2013年 TF. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
{
    int pageNumber;
}
@property (nonatomic, strong) UILabel *myLabel;
@end

@implementation MyViewController
- (id)initWithPageNumber:(NSUInteger)page
{
    if (self = [super init])
    {
        pageNumber = page;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 40)];
        label.text = [NSString stringWithFormat:@"Page:%d:%@", page, [self description]];
        label.textAlignment = NSTextAlignmentCenter;
        label.adjustsFontSizeToFitWidth = YES;
        [self.view addSubview:label];
        [self setBackColor];
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

- (void)setBackColor
{
    NSInteger colorNumber = pageNumber % 3;
    NSArray *array = [NSArray arrayWithObjects:[UIColor colorWithWhite:1.0 alpha:1.0], [UIColor colorWithWhite:0.8 alpha:0.5], [UIColor colorWithWhite:0.4 alpha:0.25], nil];
    self.view.backgroundColor = [array objectAtIndex:colorNumber];
}
@end
