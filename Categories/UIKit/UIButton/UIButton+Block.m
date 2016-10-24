
#import "UIButton+Block.h"
#import <objc/runtime.h>

static const void *UIButtonBlockKey = &UIButtonBlockKey;

@implementation UIButton (Block)

- (void)addActionHandler:(TouchedButtonBlock)touchHandler
{
    objc_setAssociatedObject(self, UIButtonBlockKey, touchHandler, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(blockActionTouched:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)blockActionTouched:(UIButton *)btn
{
    TouchedButtonBlock block = objc_getAssociatedObject(self, UIButtonBlockKey);
    if (block)
    {
        block();
    }
}

@end

