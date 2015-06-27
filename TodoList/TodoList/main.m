//
//  main.m
//  TodoList
//
//  Created by Zoufishan Mehdi and Ayuna Vogel 🇷🇺🇺🇸 {{ in 💛 with 🚕 city }} on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
//********************** INTERFACE TO DO APP *********
@interface ToDoApp : NSObject

@end

//***********************  INTERFACE TODO LIST ******
@interface ToDoList : NSObject

-(void)displayItems:(NSArray*)displayItems;

-(void)addItem:(NSArray*)add;
-(NSArray *)add;

-(void)removeItem:(NSArray*)remove;
-(NSArray *)remove;

-(void)markItem:(NSArray*)mark;
-(NSArray *)mark;

-(void)listCompletedItems;

@end

//************************INTERFACE TODO ITEM
@interface ToDoItem : NSObject

-(void)setItemName:(NSString *)itemName;
-(NSString *)itemName;

-(int)setPriority:(int)priority;

@end


//*************** IMPLEM TO DO APP ***************
//@implementation
//@end



//*************** IMPLEM TO DO LIST ***************
@implementation ToDoList {
    NSString *_name;
    NSMutableArray *_listOfItems;
}
@end



//*************** IMPLEM TO DO ITEM ***************
@implementation ToDoItem {
    NSString *_itemName;
    NSInteger priority;
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    }
    return 0;
}
