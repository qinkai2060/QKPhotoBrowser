//
//  QKPlayerFlashView.h
//
//  Created by 秦恺 on 2018/8/16.
//

#import <UIKit/UIKit.h>

@interface QKPlayerFlashView : UIView
+ (instancetype)playerWithVideoURL:(NSURL *)videoURL ;
- (void)stop;
@end
