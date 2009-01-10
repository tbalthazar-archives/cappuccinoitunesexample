@implementation PlaylistsController : CPObject
{
    MetadataView    _metadataView ;
    SongsPane       _songsPane ;
}

- (id)init
{
    self = [super init];    
    return self;
}

- (void)setMetadataView:(MetadataView)aMetadataView
{
    _metadataView = aMetadataView ;
}

- (void)setSongsPane:(SongsPane)aSongsPane
{
    _songsPane = aSongsPane ;
}

- (void)collectionViewDidChangeSelection:(CPCollectionView)collectionView
{
    currentObject = [collectionView getCurrentObject] ;
    
    [_metadataView setStringValue:[currentObject objectAtIndex:1]] ;
    
    [_songsPane setContent:[currentObject objectAtIndex:2]];
    [_songsPane setSelectionIndexes:[[CPIndexSet alloc] initWithIndex:0] ] ;
}

@end
