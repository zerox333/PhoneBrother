@interface PHHandsetDialerView : UIView
@end

static BOOL pb_zoomed()
{
	return [UIScreen mainScreen].bounds.size.width > 400;
}

%hook PHHandsetDialerView

- (void)willMoveToSuperview:(UIView *)newSuperview
{
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

%end

%hook PHHandsetDialerNumberPadButton

+ (CGFloat)outerCircleDiameter
{
	return pb_zoomed() ? 75 : %orig;
}

+ (CGFloat)horizontalPadding
{
	return pb_zoomed() ? 12.5 : %orig;
}

+ (CGFloat)verticalPadding
{
	return pb_zoomed() ? 7.5 : %orig;
}

%end

%hook TPSuperBottomBarButton

+ (CGFloat)defaultHeight
{
	return pb_zoomed() ? 75 : %orig;
}

+ (CGFloat)defaultWidth
{
	return pb_zoomed() ? 75 : %orig;
}

%end

%hook MPKeypadViewController

- (id)initWithDialerType:(int)type
{
	if (self = %orig)
	{
		[[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification object:nil queue:nil usingBlock:^(NSNotification *notification) {
			[self loadView];
			[self viewWillAppear:NO];
		}];
	}
	return self;
}

%end
