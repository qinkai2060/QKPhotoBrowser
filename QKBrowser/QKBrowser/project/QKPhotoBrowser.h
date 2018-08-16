//
//  QKPhotoBrowser.h
//  QKBrowser
//
//  Created by 秦恺 on 2018/8/15.
//  Copyright © 2018年 秦恺. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  QKPhotoBrowser;

@protocol QKPhotoBrowserDelegate <NSObject>

@required

- (UIImage *)photoBrowser:(QKPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index;

@optional

- (NSURL *)photoBrowser:(QKPhotoBrowser *)browser highQualityImageURLForIndex:(NSInteger)index;

@end
@interface QKPhotoBrowser : UIView<UIScrollViewDelegate>
@property (nonatomic, weak) UIView *sourceImagesContainerView;
@property (nonatomic, assign) NSInteger currentImageIndex;
@property (nonatomic, assign) NSInteger imageCount;
@property (nonatomic, assign) NSInteger scrollendIndex;
 
@property (nonatomic, weak) id<QKPhotoBrowserDelegate> delegate;


- (void)show;
@end
