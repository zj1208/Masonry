//
//  UIViewController+MASAdditions.m
//  Masonry
//
//  Created by Craig Siemens on 2015-06-23.
//
//

#import "ViewController+MASAdditions.h"

#ifdef MAS_VIEW_CONTROLLER

@implementation MAS_VIEW_CONTROLLER (MASAdditions)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"


//改用self.view.mas_safeAreaLayoutGuideTop
- (MASViewAttribute *)mas_topLayoutGuide {
    return [[MASViewAttribute alloc] initWithView:self.view item:self.topLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}

- (MASViewAttribute *)mas_topLayoutGuideTop {
    return [[MASViewAttribute alloc] initWithView:self.view item:self.topLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}
- (MASViewAttribute *)mas_topLayoutGuideBottom {
    return [[MASViewAttribute alloc] initWithView:self.view item:self.topLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}


//改用self.view.view.mas_safeAreaLayoutGuideBottom
- (MASViewAttribute *)mas_bottomLayoutGuide {
    return [[MASViewAttribute alloc] initWithView:self.view item:self.bottomLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}
- (MASViewAttribute *)mas_bottomLayoutGuideTop {
    return [[MASViewAttribute alloc] initWithView:self.view item:self.bottomLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}

- (MASViewAttribute *)mas_bottomLayoutGuideBottom {
    return [[MASViewAttribute alloc] initWithView:self.view item:self.bottomLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}

#pragma clang diagnostic pop

@end

#endif
