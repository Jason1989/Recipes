//
//  RecipeModel.h
//  Recipes
//
//  Created by Jian Guo on 9/7/18.
//  Copyright © 2018 SMU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RecipeModel : NSObject

@property (strong, nonatomic)NSArray *recipes;

+(RecipeModel*) sharedInstance;

//-(UIImage*)getImageWithID:(NSInteger)imageId;

//-(NSString*)getImageNameWithId:(NSInteger)imageId;

-(NSInteger)getRecipeCount;

@end
