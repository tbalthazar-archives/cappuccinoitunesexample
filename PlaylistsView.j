

@implementation PlaylistsView : CPCollectionView
{
    CPCollectionViewItem _itemPrototype ;
    CPView _metadataView ;
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

    // get the current object meta datas
    currentObject = [_content objectAtIndex:new_index] ;
    metadata = [currentObject objectAtIndex:1] ;

    [_metadataView setStringValue:metadata] ;
}

- (int)getSelectedIndex
{
    return [[self selectionIndexes] firstIndex] ;
}

- (void)addMetadataView:(CPView)aMetadataView
{
    _metadataView = aMetadataView ;
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
    
    // _playlists = [self collectionView] ;
    
    [_textField setStringValue:anObject[0]];
}

- (void)setSelected:(BOOL)isSelected
{
    [self setBackgroundColor:isSelected ? [CPColor blueColor] : nil];
    [_textField setTextColor:isSelected ? [CPColor whiteColor] : [CPColor blackColor]];
    // CPLog([_playlists getSelectedIndex] + " is selected") ;
}

@end
