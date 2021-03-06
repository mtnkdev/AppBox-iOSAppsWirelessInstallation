///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBPROPERTIESPropertyField.h"
#import "DBPROPERTIESPropertyGroup.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBPROPERTIESPropertyGroup

#pragma mark - Constructors

- (instancetype)initWithTemplateId:(NSString *)templateId fields:(NSArray<DBPROPERTIESPropertyField *> *)fields {
  [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:@"(/|ptid:).*"](templateId);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](fields);

  self = [super init];
  if (self) {
    _templateId = templateId;
    _fields = fields;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBPROPERTIESPropertyGroupSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBPROPERTIESPropertyGroupSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBPROPERTIESPropertyGroupSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBPROPERTIESPropertyGroupSerializer

+ (NSDictionary *)serialize:(DBPROPERTIESPropertyGroup *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"template_id"] = valueObj.templateId;
  jsonDict[@"fields"] = [DBArraySerializer serialize:valueObj.fields
                                           withBlock:^id(id elem) {
                                             return [DBPROPERTIESPropertyFieldSerializer serialize:elem];
                                           }];

  return jsonDict;
}

+ (DBPROPERTIESPropertyGroup *)deserialize:(NSDictionary *)valueDict {
  NSString *templateId = valueDict[@"template_id"];
  NSArray<DBPROPERTIESPropertyField *> *fields =
      [DBArraySerializer deserialize:valueDict[@"fields"]
                           withBlock:^id(id elem) {
                             return [DBPROPERTIESPropertyFieldSerializer deserialize:elem];
                           }];

  return [[DBPROPERTIESPropertyGroup alloc] initWithTemplateId:templateId fields:fields];
}

@end
