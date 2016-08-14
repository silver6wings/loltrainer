//
//  HeroTableViewCell.m
//  loltrainer
//
//  Created by silver6wings on 16/8/13.
//  Copyright © 2016年 silver6wings. All rights reserved.
//

#import "HeroTableViewCell.h"
#import "Hero.h"

@implementation HeroTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        UIImageView * icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
        [self.contentView addSubview:icon];
    }
    
    return self;
}

-(void)setContent:(Hero *)hero
{
    
}


@end
