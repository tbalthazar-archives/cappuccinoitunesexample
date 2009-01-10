
import <Foundation/CPObject.j>

var playlists = [
    [   @"Jazz",
        @"Jazz Meta Infos",
        [@"So What", @"Feddie Freeloader", @"All Blue"]  ],
        
    [   @"Pop",
        @"Pop Meta Infos",
        [@"Big Mouth Strikes Again", @"The Magnificent Seven", @"First We Take Manhattan"]  ]
] ;

@implementation AppController : CPObject
{
    // CPArray playlists ;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    CPLog(playlists[0][0]) ;
    
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];
    
    [contentView setBackgroundColor:[CPColor colorWithCalibratedRed:255.0/255.0 green:254.0/255.0 blue:252.0/255.0 alpha:1.0]];
    
    var navigationArea = [[CPView alloc] initWithFrame:CGRectMake(0.0, 0.0, 150.0, CGRectGetHeight([contentView bounds]) - 150.0)];
    
    [navigationArea setBackgroundColor:[CPColor redColor]];
    
    // Autoresizing Mask
    [navigationArea setAutoresizingMask:CPViewHeightSizable | CPViewMaxXMargin];
    
    [contentView addSubview:navigationArea];

	// start creating the playlists
	var navBounds = [navigationArea bounds] ;
	var playlistsView = [[CPCollectionView alloc] initWithFrame:navBounds];
    [playlistsView setAutoresizingMask:CPViewWidthSizable];
    [playlistsView setMinItemSize:CGSizeMake(100, 20)];
    [playlistsView setMaxItemSize:CGSizeMake(100, 20)];
    [playlistsView setDelegate:self];
    
    var itemPrototype = [[CPCollectionViewItem alloc] init];
    // [itemPrototype setView:[[PlaylistView alloc] init]];
	[itemPrototype setView:[[PlaylistView alloc] initWithFrame:CGRectMakeZero()]];
    [playlistsView setItemPrototype:itemPrototype];
    [navigationArea addSubview:playlistsView];

    [playlistsView setContent:playlists];
    [playlistsView setSelectionIndexes:[[CPIndexSet alloc] initWithIndex:0] ] ;
	// end creating the playlists


    var metaDataArea = [[CPView alloc] initWithFrame:CGRectMake(0.0, CGRectGetMaxY([navigationArea frame]), 150.0, 150.0)];
    
    [metaDataArea setBackgroundColor:[CPColor greenColor]];	
    
    // Autoresizing Mask
    [metaDataArea setAutoresizingMask:CPViewMinYMargin | CPViewMaxXMargin];
    
    var metadataView = [[MetadataView alloc] initWithFrame:[metaDataArea bounds]] ;
    // var metadataView = [[MetadataView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)] ;
    // [creditsText setFont: [CPFont boldSystemFontOfSize: 11.0]];

    currentPlaylistIndex = [[playlistsView selectionIndexes] firstIndex] ;
    CPLog("current index : " + currentPlaylistIndex) ;
	[metadataView setStringValue:playlists[currentPlaylistIndex][1]];
    [metaDataArea addSubview:metadataView];
    // [contentView addSubview:creditsView];
	
    
    [contentView addSubview:metaDataArea];

    var contentArea = [[CPView alloc] initWithFrame:CGRectMake(150.0, 0.0, CGRectGetWidth([contentView bounds]) - 150.0, CGRectGetHeight([contentView bounds]))];
    
    [contentArea setBackgroundColor:[CPColor blueColor]];
    
    // Autoresizing Mask
    [contentArea setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
    
    [contentView addSubview:contentArea];
    
    [theWindow orderFront:self];
}

@end

@implementation PlaylistView : CPView
{
    CPTextField _textField;
}

- (void)setRepresentedObject:(id)anObject
{    
	CPLog("start setRepresentedObject") ;
	
    if (!_textField)
    {
        CPLog("setRepresentedObject" + anObject[0]) ;
	
        // _textField = [[CPTextField alloc] initWithFrame:CGRectMake(15.0, 15.0, 15.0, 20.0)];
		_textField = [[CPTextField alloc] initWithFrame:CGRectMake (0.0, 0.0, 150.0, 20.0)];
        
        [_textField setFont:[CPFont boldSystemFontOfSize:12.0]];
        [self addSubview:_textField];
    }
    
    [_textField setStringValue:anObject[0]];

	console.log("_textField string value : "+[_textField stringValue]) ;
}

- (void)setSelected:(BOOL)isSelected
{
    [self setBackgroundColor:isSelected ? [CPColor blueColor] : nil];
    [_textField setTextColor:isSelected ? [CPColor whiteColor] : [CPColor blackColor]];
}

@end


@implementation MetadataView : CPView
{
    CPTextField _textField ;
}

- (id)initWithFrame:(CGRect)aFrame // color:(CPColor)color
{
    CPLog("MetadataView : initWithFrame") ;
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

@end
