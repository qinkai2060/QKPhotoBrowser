//
//  QKDemoCollectionCell.m
//  QKBrowser
//
//  Created by 秦恺 on 2018/8/16.
//  Copyright © 2018年 秦恺. All rights reserved.
//

#import "QKDemoCollectionCell.h"
#import "UIImageView+WebCache.h"
@implementation QKDemoCollectionCell
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self.contentView addSubview:self.imageview];
    }
    return self;
}
- (void)setUrlStr:(NSString *)urlStr {
    _urlStr = urlStr;
    [self.imageview sd_setImageWithURL:[NSURL URLWithString:urlStr]];
}
- (UIImageView *)imageview {
    if (!_imageview) {
        _imageview = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
        
    }
    return _imageview;
}
@end
