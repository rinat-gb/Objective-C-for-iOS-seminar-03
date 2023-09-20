//
//  PatientProtocol.h
//  Hospital
//
//  Created by Ринат on 20.09.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PatientProtocol <NSObject>

@property(nonatomic, readwrite) BOOL havePills;

@end

NS_ASSUME_NONNULL_END
