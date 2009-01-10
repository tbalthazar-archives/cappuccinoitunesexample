

@implementation MetadataView : CPView
{
    CPTextField _textField ;
}

- (id)initWithFrame:(CGRect)aFrame 
{
    self = [super initWithFrame:aFrame];
    if(self)
    {
		var bounds = [self bounds];
		_textField = [[CPTextField alloc] initWithFrame:bounds];
        [_textField setFont:[CPFont boldSystemFontOfSize:12.0]];
        [_textField setTextColor:[CPColor blackColor]];
		[_textField setLineBreakMode:CPLineBreakByTruncatingTail];
        [self addSubview:_textField];
	}
	return self;
}

- (void)setStringValue:(CPString)stringValue 
{
	[_textField setStringValue:stringValue];
}

- (CPString)stringValue
{
    return [_textField stringValue] ;
}

@end
