//
//  QKBrowserWatingView.h
//  QKBrowser
//
//  Created by 秦恺 on 2018/8/15.
//  Copyright © 2018年 秦恺. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {
    QKWaitingViewModeLoopDiagram, // 环形
    QKWaitingViewModePieDiagram // 饼型
} QKWaitingViewMode;
@interface QKBrowserWatingView : UIView

@property (nonatomic, assign) CGFloat progress;

@property (nonatomic, assign) int mode;
@end
