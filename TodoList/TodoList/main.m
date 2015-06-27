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

-(void)displayLists:(NSArray*)displayLists;
-(NSArray *)displayLists;

-(void)addList:(NSArray*)addList;
-(NSArray *)addList;

-(void)removeList:(NSArray*)removeList;
-(NSArray *)removeList;

-(void)renameList:(NSArray*)renameList;
-(NSArray *)renameList;


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

-(void)setPriority:(int)priority;
-(int *)priority;

@end


//*************** IMPLEM TO DO APP ***************
@implementation ToDoApp {
    NSMutableArray *_allLists;
}

-(void)displayLists:(NSArray*)displayLists {
    for(ToDoApp *something in _allLists) {
        printf("%s\n", [[something description] UTF8String]);
    }
}
//-(NSArray *)displayLists {
//    return _displayLists;
//}

-(void)addList:(NSArray*)addList {
    
}
-(NSArray *)addList {
    
}

-(void)removeList:(NSArray*)removeList {
    
}
-(NSArray *)removeList {
    
}

-(void)renameList:(NSArray*)renameList {
    
}

-(NSArray *)renameList {
    
}


@end



//*************** IMPLEM TO DO LIST ***************
@implementation ToDoList {
    NSString *_listName;
    NSMutableArray *_listOfItems;
}

@end



//*************** IMPLEM TO DO ITEM ***************
@implementation ToDoItem {
    NSString *_itemName;
    NSInteger priority;
}


-(void)setItemName:(NSString *)itemName {
    _itemName = itemName;
}
-(NSString *)itemName;

-(void)setPriority:(int)priority {
    _priority = priority;
    
}
-(int *)priority;

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
    }
    return 0;
}
