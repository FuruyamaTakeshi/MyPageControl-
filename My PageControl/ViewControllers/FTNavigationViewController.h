//
//  FTNavigationViewController.h
//  My PageControl
//
//  Created by 古山 健司 on 2013/10/13.
//  Copyright (c) 2013年 TF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FTNavigationViewController : UINavigationController
@property (nonatomic) int pageNumber;

- (id)initWithPageNumber:(NSUInteger)page;
@end
