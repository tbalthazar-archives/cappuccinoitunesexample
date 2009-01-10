@implementation SongsPane : CPCollectionView
{
    CPCollectionViewItem _itemPrototype ;
}

- (id)initWithFrame:(CGRect)aFrame
{
    self = [super initWithFrame:aFrame];
    if (self)
    {
        [self setAutoresizingMask:CPViewWidthSizable];
        [self setMinItemSize:CGSizeMake(150, 20)];
        [self setMaxItemSize:CGSizeMake(300, 20)];
        
        _itemPrototype = [[CPCollectionViewItem alloc] init];
    	[_itemPrototype setView:[[SongView alloc] initWithFrame:CGRectMakeZero()]];
        [self setItemPrototype:_itemPrototype];
    }

    return self;
}

- (void) setSelectionIndexes:(CPIndexSet)anIndexSet
{
    [super setSelectionIndexes:anIndexSet] ;
    new_index = [anIndexSet firstIndex] ;
}

- (id)getCurrentObject
{
    return [_content objectAtIndex:[self getSelectedIndex]] ;
}

- (int)getSelectedIndex
{
    return [[self selectionIndexes] firstIndex] ;
}

@end


@implementation SongView : CPView
{
    CPTextField _textField;
}

- (void)setRepresentedObject:(id)anObject
{    
    if (!_textField)
    {
		_textField = [[CPTextField alloc] initWithFrame:CGRectMake (0.0, 0.0, 350.0, 20.0)];
        
        [_textField setFont:[CPFont boldSystemFontOfSize:12.0]];
        [self addSubview:_textField];
    }
        
    new_value = anObject ;
    [_textField setStringValue:new_value];
}

- (void)setSelected:(BOOL)isSelected
{
    [self setBackgroundColor:isSelected ? [CPColor greenColor] : nil];
    [_textField setTextColor:isSelected ? [CPColor whiteColor] : [CPColor blackColor]];
}

@end
