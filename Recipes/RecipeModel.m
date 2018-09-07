//
//  RecipeModel.m
//  Recipes
//
//  Created by Jian Guo on 9/7/18.
//  Copyright © 2018 SMU. All rights reserved.
//

#import "RecipeModel.h"

@interface RecipeModel ()

@end

@implementation RecipeModel

- (NSArray *)recipes {
    if(!_recipes) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"recipes" ofType:@"plist"];
        _recipes = [NSArray arrayWithContentsOfFile:path];
    }
    return _recipes;
}

+ (RecipeModel *)sharedInstance {
    static RecipeModel * _sharedInstance = nil;
    
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate,^{
        _sharedInstance = [[RecipeModel alloc] init];
    });
    
    return _sharedInstance;
}


- (NSInteger)getRecipeCount {
    return self.recipes.count;
}

@end
