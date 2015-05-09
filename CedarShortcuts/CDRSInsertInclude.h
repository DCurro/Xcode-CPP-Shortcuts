#import "CDRSXcodeInterfaces.h"

@interface CDRSInsertInclude : NSObject {
    XC(IDESourceCodeEditor) _editor;
    XC(DVTSourceTextStorage) _textStorage;
}

- (id)initWithEditor:(XC(IDESourceCodeEditor))editor;
- (void)insertInclude;
@end
