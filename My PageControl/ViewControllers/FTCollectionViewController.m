//
//  FTCollectionViewController.m
//  My PageControl
//
//  Created by 古山 健司 on 2013/10/12.
//  Copyright (c) 2013年 TF. All rights reserved.
//

#import "FTCollectionViewController.h"

@interface FTCollectionViewController ()

@property (nonatomic, strong) UICollectionViewFlowLayout *flowLayout;
@end

NSString *kCellID = @"Cell";                          // UICollectionViewCell storyboard id

@implementation FTCollectionViewController
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
    self.navigationItem.title = [NSString stringWithFormat:@"%d", self.pageNumber];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
    [self setBackColor];
}

- (void)viewWillAppear:(BOOL)animated
{
    LOG_METHOD
    [super viewWillAppear:animated];    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView dataSource Protocol
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _pageNumber*2+1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    // we're going to use a custom UICollectionViewCell, which will hold an image and its label

    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 108, 20)];
    label.center = cell.contentView.center;
    [cell.contentView addSubview:label];
    label.adjustsFontSizeToFitWidth = YES;
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor grayColor];
    label.text = [NSString stringWithFormat:@"%d", indexPath.item];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    LOG_METHOD
    return CGSizeMake(128, 128);

}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 20;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(20, 20, 5, 20);
}

#pragma mark - delegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *viewController = [[UIViewController alloc] init];
    [self.navigationController pushViewController:viewController  animated:YES];
}

#pragma mark - ## private
- (void)setBackColor
{
    NSInteger colorNumber = _pageNumber % 3;
    NSArray *array = [NSArray arrayWithObjects:[UIColor colorWithWhite:0.9 alpha:1.0], [UIColor colorWithWhite:0.75 alpha:0.5], [UIColor colorWithWhite:0.4 alpha:0.25], nil];
    self.collectionView.backgroundColor = [array objectAtIndex:colorNumber];
}
@end
