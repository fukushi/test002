//
//  CustomCell.h
//  CustomCellWIthXib
//
//  Created by MORITA NAOKI on 2013/01/31.
//  Copyright (c) 2013年 morizotter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *thumbnailBtn;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIButton *editBtn;

@end
