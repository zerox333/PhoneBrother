#line 1 "/Users/zerox/Desktop/Source Code/Mine/Remote/PhoneBrother/PhoneBrother/PhoneBrother.xm"
@interface PHHandsetDialerView : UIView
@end

static BOOL pb_zoomed()
{
	return [UIScreen mainScreen].bounds.size.width > 400;
}

#include <logos/logos.h>
#include <substrate.h>
@class PHHandsetDialerNumberPadButton; @class PHHandsetDialerView; @class MPKeypadViewController; @class TPSuperBottomBarButton; 
static void (*_logos_orig$_ungrouped$PHHandsetDialerView$willMoveToSuperview$)(PHHandsetDialerView*, SEL, UIView *); static void _logos_method$_ungrouped$PHHandsetDialerView$willMoveToSuperview$(PHHandsetDialerView*, SEL, UIView *); static CGFloat (*_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$outerCircleDiameter)(Class, SEL); static CGFloat _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$outerCircleDiameter(Class, SEL); static CGFloat (*_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$horizontalPadding)(Class, SEL); static CGFloat _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$horizontalPadding(Class, SEL); static CGFloat (*_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$verticalPadding)(Class, SEL); static CGFloat _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$verticalPadding(Class, SEL); static CGFloat (*_logos_meta_orig$_ungrouped$TPSuperBottomBarButton$defaultHeight)(Class, SEL); static CGFloat _logos_meta_method$_ungrouped$TPSuperBottomBarButton$defaultHeight(Class, SEL); static CGFloat (*_logos_meta_orig$_ungrouped$TPSuperBottomBarButton$defaultWidth)(Class, SEL); static CGFloat _logos_meta_method$_ungrouped$TPSuperBottomBarButton$defaultWidth(Class, SEL); static id (*_logos_orig$_ungrouped$MPKeypadViewController$initWithDialerType$)(MPKeypadViewController*, SEL, int); static id _logos_method$_ungrouped$MPKeypadViewController$initWithDialerType$(MPKeypadViewController*, SEL, int); 

#line 9 "/Users/zerox/Desktop/Source Code/Mine/Remote/PhoneBrother/PhoneBrother/PhoneBrother.xm"



static void _logos_method$_ungrouped$PHHandsetDialerView$willMoveToSuperview$(PHHandsetDialerView* self, SEL _cmd, UIView * newSuperview) {
	if (!pb_zoomed) return;

	if (newSuperview)
	{
		for (NSLayoutConstraint *constraint in self.constraints)
		{
			if ([NSStringFromClass([constraint.firstItem class]) isEqualToString:@"TPDialerNumberPad"])
			{
				constraint.constant = 167.5;
				break;
			}
		}
	}
}






static CGFloat _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$outerCircleDiameter(Class self, SEL _cmd) {
	return pb_zoomed() ? 75 : _logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$outerCircleDiameter(self, _cmd);
}


static CGFloat _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$horizontalPadding(Class self, SEL _cmd) {
	return pb_zoomed() ? 12.5 : _logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$horizontalPadding(self, _cmd);
}


static CGFloat _logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$verticalPadding(Class self, SEL _cmd) {
	return pb_zoomed() ? 7.5 : _logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$verticalPadding(self, _cmd);
}






static CGFloat _logos_meta_method$_ungrouped$TPSuperBottomBarButton$defaultHeight(Class self, SEL _cmd) {
	return pb_zoomed() ? 75 : _logos_meta_orig$_ungrouped$TPSuperBottomBarButton$defaultHeight(self, _cmd);
}


static CGFloat _logos_meta_method$_ungrouped$TPSuperBottomBarButton$defaultWidth(Class self, SEL _cmd) {
	return pb_zoomed() ? 75 : _logos_meta_orig$_ungrouped$TPSuperBottomBarButton$defaultWidth(self, _cmd);
}






static id _logos_method$_ungrouped$MPKeypadViewController$initWithDialerType$(MPKeypadViewController* self, SEL _cmd, int type) {

	if (self = _logos_orig$_ungrouped$MPKeypadViewController$initWithDialerType$(self, _cmd, type)) {
		[[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification object:nil queue:nil usingBlock:^(NSNotification *notification) {
			[self loadView];
			[self viewWillAppear:NO];
		}];
	}
	return self;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PHHandsetDialerView = objc_getClass("PHHandsetDialerView"); MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerView, @selector(willMoveToSuperview:), (IMP)&_logos_method$_ungrouped$PHHandsetDialerView$willMoveToSuperview$, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerView$willMoveToSuperview$);Class _logos_class$_ungrouped$PHHandsetDialerNumberPadButton = objc_getClass("PHHandsetDialerNumberPadButton"); Class _logos_metaclass$_ungrouped$PHHandsetDialerNumberPadButton = object_getClass(_logos_class$_ungrouped$PHHandsetDialerNumberPadButton); MSHookMessageEx(_logos_metaclass$_ungrouped$PHHandsetDialerNumberPadButton, @selector(outerCircleDiameter), (IMP)&_logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$outerCircleDiameter, (IMP*)&_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$outerCircleDiameter);MSHookMessageEx(_logos_metaclass$_ungrouped$PHHandsetDialerNumberPadButton, @selector(horizontalPadding), (IMP)&_logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$horizontalPadding, (IMP*)&_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$horizontalPadding);MSHookMessageEx(_logos_metaclass$_ungrouped$PHHandsetDialerNumberPadButton, @selector(verticalPadding), (IMP)&_logos_meta_method$_ungrouped$PHHandsetDialerNumberPadButton$verticalPadding, (IMP*)&_logos_meta_orig$_ungrouped$PHHandsetDialerNumberPadButton$verticalPadding);Class _logos_class$_ungrouped$TPSuperBottomBarButton = objc_getClass("TPSuperBottomBarButton"); Class _logos_metaclass$_ungrouped$TPSuperBottomBarButton = object_getClass(_logos_class$_ungrouped$TPSuperBottomBarButton); MSHookMessageEx(_logos_metaclass$_ungrouped$TPSuperBottomBarButton, @selector(defaultHeight), (IMP)&_logos_meta_method$_ungrouped$TPSuperBottomBarButton$defaultHeight, (IMP*)&_logos_meta_orig$_ungrouped$TPSuperBottomBarButton$defaultHeight);MSHookMessageEx(_logos_metaclass$_ungrouped$TPSuperBottomBarButton, @selector(defaultWidth), (IMP)&_logos_meta_method$_ungrouped$TPSuperBottomBarButton$defaultWidth, (IMP*)&_logos_meta_orig$_ungrouped$TPSuperBottomBarButton$defaultWidth);Class _logos_class$_ungrouped$MPKeypadViewController = objc_getClass("MPKeypadViewController"); MSHookMessageEx(_logos_class$_ungrouped$MPKeypadViewController, @selector(initWithDialerType:), (IMP)&_logos_method$_ungrouped$MPKeypadViewController$initWithDialerType$, (IMP*)&_logos_orig$_ungrouped$MPKeypadViewController$initWithDialerType$);} }
#line 78 "/Users/zerox/Desktop/Source Code/Mine/Remote/PhoneBrother/PhoneBrother/PhoneBrother.xm"
