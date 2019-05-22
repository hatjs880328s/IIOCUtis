
#import <UIKit/UIKit.h>
#import "JGProgressHUD.h"

@interface ProgressHUD : UIView

+ (ProgressHUD *)shareInstance;

- (void)showProgress;
- (void)showProgressWithMessage:(NSString *)message;
- (void)showAlertWithMessage:(NSString *)message;
- (void)showAlertWithError:(NSError *)error;
- (void)remove;

@end
