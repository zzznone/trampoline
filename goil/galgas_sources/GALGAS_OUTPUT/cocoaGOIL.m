//---------------------------------------------------------------------------*
//                                                                           *
//                            File 'cocoaGOIL.m'                             *
//                        Generated by version 1.9.5                         *
//                     november 23th, 2009, at 12h7'28"                      *
//                                                                           *
//---------------------------------------------------------------------------*

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1


#include "version_libpm.h"
#if LIBPM_VERSION != 614
  #error "This file has been compiled with a version of GALGAS different than the version of libpm"
#endif

//---------------------------------------------------------------------------*

#import "OC_Token.h"
#import "F_CocoaWrapperForGalgas.h"
#import "goil_lexique-cocoa.m"
#import "goil_template_scanner-cocoa.m"

#ifdef USER_DEFAULT_COLORS_DEFINED
  #import "user_default_colors.h"
#endif

//---------------------------------------------------------------------------*

#pragma mark Nibs

//---------------------------------------------------------------------------*
//                                                                           *
//          N I B S   A N D   T H E I R   M A I N   C L A S S E S            *
//                                                                           *
//---------------------------------------------------------------------------*

NSArray * nibsAndClasses (void) {
  return [NSArray arrayWithObjects:
    nil
  ] ;
}

//---------------------------------------------------------------------------*

#pragma mark Command Line Options

//---------------------------------------------------------------------------*
//                                                                           *
//                       Command Line Options                                *
//                                                                           *
//---------------------------------------------------------------------------*

#import "goil_options-cocoa.m"

//---------------------------------------------------------------------------*

void enterOptions (NSMutableArray * ioBoolOptionArray,
                   NSMutableArray * ioUIntOptionArray,
                   NSMutableArray * ioStringOptionArray) {
  enterOptionsFor_goil_5F_options (ioBoolOptionArray, ioUIntOptionArray, ioStringOptionArray) ;
}

//---------------------------------------------------------------------------*

#pragma mark Lexique goil_lexique

//---------------------------------------------------------------------------*
//                                                                           *
//                     P O P    U P    L I S T    D A T A                    *
//                                                                           *
//---------------------------------------------------------------------------*

static const UInt16 * gPopUpData_goil_5F_lexique [1] = {
  NULL
} ;

//---------------------------------------------------------------------------*
//                                                                           *
//                            Lexique interface                              *
//                                                                           *
//---------------------------------------------------------------------------*

@interface OC_Tokenizer_goil_lexique : OC_Lexique_goil_lexique {

}

- (NSString *) blockComment ;

- (const UInt16 * *) popupListData ;

- (UInt32) textMacroCount ;

- (NSString *) textMacroTitleAtIndex: (const UInt32) inIndex ;

- (NSString *) textMacroContentAtIndex: (const UInt32) inIndex ;

- (NSString *) tabItemTitle ;

@end

//---------------------------------------------------------------------------*

@implementation OC_Tokenizer_goil_lexique

//---------------------------------------------------------------------------*

- (NSString *) blockComment {
  return @"//" ;
}

//---------------------------------------------------------------------------*

- (const UInt16 * *) popupListData {
  return gPopUpData_goil_5F_lexique ;
}

//---------------------------------------------------------------------------*

- (UInt32) textMacroCount {
  return 0 ;
}

//---------------------------------------------------------------------------*

- (NSString *) tabItemTitle {
  return @"Source" ;
}

//---------------------------------------------------------------------------*

- (NSString *) textMacroTitleAtIndex: (const UInt32) inIndex {
  static NSString * kTextMacroTitle [1] = {
    NULL
  } ;
  return kTextMacroTitle [inIndex] ;
}

//---------------------------------------------------------------------------*

- (NSString *) textMacroContentAtIndex: (const UInt32) inIndex {
  static NSString * kTextMacroContent [1] = {
    NULL
  } ;
  return kTextMacroContent [inIndex] ;
}

//---------------------------------------------------------------------------*

@end

//---------------------------------------------------------------------------*

#pragma mark Lexique goil_template_scanner

//---------------------------------------------------------------------------*
//                                                                           *
//                     P O P    U P    L I S T    D A T A                    *
//                                                                           *
//---------------------------------------------------------------------------*

static const UInt16 * gPopUpData_goil_5F_template_5F_scanner [1] = {
  NULL
} ;

//---------------------------------------------------------------------------*
//                                                                           *
//                            Lexique interface                              *
//                                                                           *
//---------------------------------------------------------------------------*

@interface OC_Tokenizer_goil_template_scanner : OC_Lexique_goil_template_scanner {

}

- (NSString *) blockComment ;

- (const UInt16 * *) popupListData ;

- (UInt32) textMacroCount ;

- (NSString *) textMacroTitleAtIndex: (const UInt32) inIndex ;

- (NSString *) textMacroContentAtIndex: (const UInt32) inIndex ;

- (NSString *) tabItemTitle ;

@end

//---------------------------------------------------------------------------*

@implementation OC_Tokenizer_goil_template_scanner

//---------------------------------------------------------------------------*

- (NSString *) blockComment {
  return @"#" ;
}

//---------------------------------------------------------------------------*

- (const UInt16 * *) popupListData {
  return gPopUpData_goil_5F_template_5F_scanner ;
}

//---------------------------------------------------------------------------*

- (UInt32) textMacroCount {
  return 0 ;
}

//---------------------------------------------------------------------------*

- (NSString *) tabItemTitle {
  return @"Template" ;
}

//---------------------------------------------------------------------------*

- (NSString *) textMacroTitleAtIndex: (const UInt32) inIndex {
  static NSString * kTextMacroTitle [1] = {
    NULL
  } ;
  return kTextMacroTitle [inIndex] ;
}

//---------------------------------------------------------------------------*

- (NSString *) textMacroContentAtIndex: (const UInt32) inIndex {
  static NSString * kTextMacroContent [1] = {
    NULL
  } ;
  return kTextMacroContent [inIndex] ;
}

//---------------------------------------------------------------------------*

@end



//---------------------------------------------------------------------------*

OC_Lexique * tokenizerForExtension (const NSString * inExtension) {
  OC_Lexique * result = nil ;
  if ([inExtension isEqualToString:@"goil"]) {
    result = [[[OC_Tokenizer_goil_lexique alloc] init] autorelease] ;
  }else if ([inExtension isEqualToString:@"goilTemplate"]) {
    result = [[[OC_Tokenizer_goil_template_scanner alloc] init] autorelease] ;
  }
  return result ;
}

//---------------------------------------------------------------------------*

NSArray * tokenizers (void) {
  return [NSArray arrayWithObjects:
    [[[OC_Tokenizer_goil_lexique alloc] init] autorelease],
    [[[OC_Tokenizer_goil_template_scanner alloc] init] autorelease],
    nil
  ] ;
}

//---------------------------------------------------------------------------*

//--- START OF USER ZONE 2


//--- END OF USER ZONE 2


