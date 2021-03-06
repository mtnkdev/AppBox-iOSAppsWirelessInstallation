///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMTeamFolderCreateArg;

#pragma mark - API Object

///
/// The `TeamFolderCreateArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMTeamFolderCreateArg : NSObject <DBSerializable>

#pragma mark - Instance fields

/// Name for the new team folder.
@property (nonatomic, readonly, copy) NSString * _Nonnull name;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param name Name for the new team folder.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithName:(NSString * _Nonnull)name;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `TeamFolderCreateArg` struct.
///
@interface DBTEAMTeamFolderCreateArgSerializer : NSObject

///
/// Serializes `DBTEAMTeamFolderCreateArg` instances.
///
/// @param instance An instance of the `DBTEAMTeamFolderCreateArg` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMTeamFolderCreateArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMTeamFolderCreateArg * _Nonnull)instance;

///
/// Deserializes `DBTEAMTeamFolderCreateArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMTeamFolderCreateArg` API object.
///
/// @return An instantiation of the `DBTEAMTeamFolderCreateArg` object.
///
+ (DBTEAMTeamFolderCreateArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
