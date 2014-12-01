//
//  MyCell.h
//  CustomTable
//
//  Created by sagar modak on 14/11/14.
//  Copyright (c) 2014 com.EmpoweringVisions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell

@property (strong,nonatomic) IBOutlet UIImageView * customImage;

@property (strong,nonatomic) IBOutlet UIButton * customBtn;


@property (strong,nonatomic) IBOutlet UILabel * likeCount;

@property (strong,nonatomic) IBOutlet UILabel * userName;

@property (strong,nonatomic) IBOutlet UIImageView * profileImage;

@end
