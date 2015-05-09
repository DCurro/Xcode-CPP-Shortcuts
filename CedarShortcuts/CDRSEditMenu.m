#import "CDRSEditMenu.h"
#import "CDRSInsertImport.h"
#import "CDRSInsertInclude.h"
#import "CDRSXcode.h"

@implementation CDRSEditMenu

- (void)insertImport:(id)sender {
    CDRSInsertImport *insertImporter =
        [[[CDRSInsertImport alloc]
            initWithEditor:[CDRSXcode currentEditor]] autorelease];
    [insertImporter insertImport];
}

- (void)insertInclude:(id)sender {
    CDRSInsertInclude *insertIncluder =
    [[[CDRSInsertInclude alloc]
      initWithEditor:[CDRSXcode currentEditor]] autorelease];
    [insertIncluder insertInclude];
}

- (void)attach {
    NSMenu *editMenu = [CDRSXcode menuWithTitle:@"Edit"];
    [editMenu addItem:NSMenuItem.separatorItem];
    [editMenu addItem:self._insertImportItem];
    [editMenu addItem:self._insertIncludeItem];
}

#pragma mark - Menu items

- (NSMenuItem *)_insertImportItem {
    NSMenuItem *item = [[[NSMenuItem alloc] init] autorelease];
    item.title = @"Insert #import";
    item.target = self;
    item.action = @selector(insertImport:);
    item.keyEquivalent = @"i";
    item.keyEquivalentModifierMask = NSControlKeyMask | NSAlternateKeyMask;
    return item;
}

- (NSMenuItem *)_insertIncludeItem {
    NSMenuItem *item = [[[NSMenuItem alloc] init] autorelease];
    item.title = @"Insert #include";
    item.target = self;
    item.action = @selector(insertInclude:);
    item.keyEquivalent = @"i";
    item.keyEquivalentModifierMask = NSControlKeyMask;
    return item;
}


@end
