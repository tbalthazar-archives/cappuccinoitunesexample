
import <Foundation/CPObject.j>

import "PlaylistsView.j"
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
    // CPArray playlists ;
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


    // ----------------------------
	// start creating the playlists
	var navBounds = [navigationArea bounds] ;
    var playlistsView = [[PlaylistsView alloc] initWithFrame:navBounds] ;
    [playlistsView setDelegate:self] ;
    
    //     var itemPrototype = [[CPCollectionViewItem alloc] init];
    // [itemPrototype setView:[[PlaylistView alloc] initWithFrame:CGRectMakeZero()]];
    //     [playlistsView setItemPrototype:itemPrototype];
    [navigationArea addSubview:playlistsView];

    [playlistsView setContent:playlists];
    [playlistsView setSelectionIndexes:[[CPIndexSet alloc] initWithIndex:0] ] ;
	// end creating the playlists


    // ----------------------------
    // metaData area
    var metaDataArea = [[CPView alloc] initWithFrame:CGRectMake(0.0, CGRectGetMaxY([navigationArea frame]), 150.0, 150.0)];
    [metaDataArea setBackgroundColor:[CPColor greenColor]];	
    
    // Autoresizing Mask
    [metaDataArea setAutoresizingMask:CPViewMinYMargin | CPViewMaxXMargin];
    
    var metadataView = [[MetadataView alloc] initWithFrame:[metaDataArea bounds]] ;

    currentPlaylistIndex = [playlistsView getSelectedIndex] ;
	[metadataView setStringValue:playlists[currentPlaylistIndex][1]];
    [metaDataArea addSubview:metadataView];
    [playlistsView addMetadataView:metadataView];
    [contentView addSubview:metaDataArea];


    // ----------------------------
    // content area
    var contentArea = [[CPView alloc] initWithFrame:CGRectMake(150.0, 0.0, CGRectGetWidth([contentView bounds]) - 150.0, CGRectGetHeight([contentView bounds]))];
    
    [contentArea setBackgroundColor:[CPColor blueColor]];
    
    // Autoresizing Mask
    [contentArea setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
    
    [contentView addSubview:contentArea];
    
    [theWindow orderFront:self];
}

@end
