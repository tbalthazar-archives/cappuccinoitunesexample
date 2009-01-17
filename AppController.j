
import <Foundation/CPObject.j>

import "PlaylistsView.j"
import "PlaylistsController.j"
import "SongsController.j"
import "MetadataView.j"
import "SongsView.j"

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
    
    
    // -- create the playlist and songs controller
    var playlistController  = [[PlaylistsController alloc] init] ;
    var songsController     = [[SongsController alloc] init] ;
    
    
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


    // --- create the content area
    var contentArea = [[CPView alloc] initWithFrame:CGRectMake(150.0, 0.0, CGRectGetWidth([contentView bounds]) - 150.0, CGRectGetHeight([contentView bounds]))];
    [contentArea setBackgroundColor:[CPColor blueColor]];    
    [contentArea setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
    [contentView addSubview:contentArea];
    
    
    // --- create the songs
    var contentAreaBounds   = [contentArea bounds] ;
    var songsPane           = [[SongsPane alloc] initWithFrame:contentAreaBounds] ;
    [songsPane setDelegate:songsController] ;    
    [contentArea addSubview:songsPane];
    [playlistController setSongsPane:songsPane] ;
    
    
    // --- select a playlist by default -> will also populate the metadata view and the songs pane
    [playlistsPane setSelectionIndexes:[[CPIndexSet alloc] initWithIndex:0] ] ;    
    
    [theWindow orderFront:self];
}

@end
