

@implementation PlaylistsPane : CPCollectionView
{
    CPCollectionViewItem _itemPrototype ;
}

- (id)initWithFrame:(CGRect)aFrame
{
    self = [super initWithFrame:aFrame];
    if (self)
    {
        [self setAutoresizingMask:CPViewWidthSizable];
        [self setMinItemSize:CGSizeMake(100, 20)];
        [self setMaxItemSize:CGSizeMake(100, 20)];
        
        _itemPrototype = [[CPCollectionViewItem alloc] init];
    	[_itemPrototype setView:[[PlaylistView alloc] initWithFrame:CGRectMakeZero()]];
        [self setItemPrototype:_itemPrototype];
    }

    return self;
}

- (void)setDelegate:(id)aDelegate
{ 
    [super setDelegate:aDelegate];
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


@implementation PlaylistView : CPView
{
    CPTextField _textField;
    CPCollectionViewItem _playlists ;
}

- (void)setRepresentedObject:(id)anObject
{    
	
    if (!_textField)
    {
		_textField = [[CPTextField alloc] initWithFrame:CGRectMake (0.0, 0.0, 150.0, 20.0)];
        
        [_textField setFont:[CPFont boldSystemFontOfSize:12.0]];
        [self addSubview:_textField];
    }
        
    [_textField setStringValue:anObject[0]];
}

- (void)setSelected:(BOOL)isSelected
{
    [self setBackgroundColor:isSelected ? [CPColor blueColor] : nil];
    [_textField setTextColor:isSelected ? [CPColor whiteColor] : [CPColor blackColor]];
}

@end
