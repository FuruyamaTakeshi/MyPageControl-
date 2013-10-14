//
//  FTCollectionViewController.h
//  My PageControl
//
//  Created by 古山 健司 on 2013/10/12.
//  Copyright (c) 2013年 TF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FTCollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property (nonatomic) int pageNumber;
- (id)initWithPageNumber:(NSUInteger)page;
@end
