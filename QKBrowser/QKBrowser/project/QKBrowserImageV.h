//
//  QKBrowserImageV.h
//  QKBrowser
//
//  Created by 秦恺 on 2018/8/15.
//  Copyright © 2018年 秦恺. All rights reserved.
//

#import "FLAnimatedImageView.h"

@interface QKBrowserImageV : FLAnimatedImageView

/**
 进度
 */
@property (nonatomic, assign) CGFloat progress;
/**
 是否缩放
 */
@property (nonatomic, assign, readonly) BOOL isScaled;
/**
 是否已经加过
 */
@property (nonatomic, assign) BOOL hasLoadedImage;
// 扩展model
@property (nonatomic, strong) id model;

- (void)eliminateScale; // 清除缩放

- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;
// 双击图片之后
- (void)doubleTapToZommWithScale:(CGFloat)scale;

- (void)clear;
// 暂停播放器 
- (void)stopPlayer ;
@end
