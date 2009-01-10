
import <Foundation/CPObject.j>

import "PlaylistsView.j"
import "PlaylistsController.j"
import "MetadataView.j"

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
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{    
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];
    
    [contentView setBackgroundColor:[CPColor colorWithCalibratedRed:255.0/255.0 green:254.0/255.0 blue:252.0/255.0 alpha:1.0]];
    
    
    // -- create the playlist controller
    var playlistController = [[PlaylistsController alloc] init] ;
    
    
    // --- create the navigation area
    var navigationArea = [[CPView alloc] initWithFrame:CGRectMake(0.0, 0.0, 150.0, CGRectGetHeight([contentView bounds]) - 150.0)];
    [navigationArea setBackgroundColor:[CPColor redColor]];    
    [navigationArea setAutoresizingMask:CPViewHeightSizable | CPViewMaxXMargin];
    [contentView addSubview:navigationArea];


	// --- create the playlists
	var navBounds       = [navigationArea bounds] ;
    var playlistsPane   = [[PlaylistsPane alloc] initWithFrame:navBounds] ;
    [playlistsPane setDelegate:playlistController] ;    
    [navigationArea addSubview:playlistsPane];
    [playlistsPane setContent:playlists];
    [playlistsPane setSelectionIndexes:[[CPIndexSet alloc] initWithIndex:0] ] ;


    // --- create the metadata area
    var metaDataArea = [[CPView alloc] initWithFrame:CGRectMake(0.0, CGRectGetMaxY([navigationArea frame]), 150.0, 150.0)];
    [metaDataArea setBackgroundColor:[CPColor greenColor]];	    
    [metaDataArea setAutoresizingMask:CPViewMinYMargin | CPViewMaxXMargin];
    
    
    // --- create the metadata view
    var metadataView = [[MetadataView alloc] initWithFrame:[metaDataArea bounds]] ;
    [metaDataArea addSubview:metadataView];
    [contentView addSubview:metaDataArea];
    [playlistController setMetadataView:metadataView] ;
    
    // --- select a playlist by default -> will also populate the metadata view
    [playlistsPane setSelectionIndexes:[[CPIndexSet alloc] initWithIndex:0] ] ;    
    


    // --- create the content area
    var contentArea = [[CPView alloc] initWithFrame:CGRectMake(150.0, 0.0, CGRectGetWidth([contentView bounds]) - 150.0, CGRectGetHeight([contentView bounds]))];
    
    [contentArea setBackgroundColor:[CPColor blueColor]];
    
    // Autoresizing Mask
    [contentArea setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
    
    [contentView addSubview:contentArea];
    
    [theWindow orderFront:self];
}

@end
