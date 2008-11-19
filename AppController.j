
import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
	CPArray playlists ;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
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

    playlists = [
				@"Jazz",
				@"Pop",
				@"Recently added"
			]

    [playlistsView setContent:playlists];
	// end creating the playlists


    var metaDataArea = [[CPView alloc] initWithFrame:CGRectMake(0.0, CGRectGetMaxY([navigationArea frame]), 150.0, 150.0)];
    
    [metaDataArea setBackgroundColor:[CPColor greenColor]];	
    
    // Autoresizing Mask
    [metaDataArea setAutoresizingMask:CPViewMinYMargin | CPViewMaxXMargin];
    
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
	console.log("start setRepresentedObject") ;
	
    if (!_textField)
    {
		console.log("before _textField alloc") ;
	
        // _textField = [[CPTextField alloc] initWithFrame:CGRectMake(15.0, 15.0, 15.0, 20.0)];
		_textField = [[CPTextField alloc] initWithFrame:CGRectMake (0.0, 0.0, 150.0, 20.0)];
        
        [_textField setFont:[CPFont boldSystemFontOfSize:12.0]];
        [self addSubview:_textField];
    }
    
    [_textField setStringValue:anObject];

	console.log("_textField string value : "+[_textField stringValue]) ;
}

- (void)setSelected:(BOOL)isSelected
{
    [self setBackgroundColor:isSelected ? [CPColor blueColor] : nil];
    [_textField setTextColor:isSelected ? [CPColor whiteColor] : [CPColor blackColor]];
}

@end
