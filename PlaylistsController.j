

@implementation PlaylistsController : CPObject
{
    MetadataView _metadataView ;
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

- (void)collectionViewDidChangeSelection:(CPCollectionView)collectionView
{
    currentObject = [collectionView getCurrentObject] ;
    
    [_metadataView setStringValue:[currentObject objectAtIndex:1]] ;
}





@end
