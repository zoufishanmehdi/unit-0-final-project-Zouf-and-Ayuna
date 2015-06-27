//
//  main.m
//  TodoList
//
//  Created by Zoufishan Mehdi and Ayuna Vogel 🇷🇺🇺🇸 {{ in 💛 with 🚕 city }} on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

//I'll just type this to practice, Zouf, you have to delete it later to practice, too! :) '

#import <Foundation/Foundation.h>
//********************** INTERFACE TO DO APP *********
@interface ToDoApp : NSObject

-(void)displayLists:(NSMutableArray*)displayLists;
-(NSArray *)displayLists;

-(void)addList:(NSMutableArray*)addList;
-(NSArray *)addList;

-(void)removeList:(NSMutableArray*)removeList;
-(NSArray *)removeList;

-(void)renameList:(NSMutableArray*)renameList;
-(NSArray *)renameList;


@end

//***********************  INTERFACE TODO LIST ******
@interface ToDoList : NSObject

-(void)displayItems:(NSMutableArray*)displayItems;

-(NSString*)addItem:(NSString*)newItemName;

-(void)removeItem:(NSString*)remove;
-(NSString *)remove;

-(void)markItem:(NSString*)mark;
-(NSString *)mark;

-(void)listCompletedItems:(NSMutableArray*)listCompletedItems;

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

-(void)displayLists:(NSMutableArray*)displayLists {
    for(ToDoApp *something in _allLists) {
        printf("%s\n", [[something description] UTF8String]);
    }
}
//-(NSMutableArray *)displayLists {
//    return _displayLists;
//}

//-(void)addList:(NSMutableArray*)addList {
//    
//}
//-(NSMutableArray *)addList {
//    
//}
//
//-(void)removeList:(NSMutableArray*)removeList {
//    
//}
//-(NSMutableArray *)removeList {
//    
//}
//
//-(void)renameList:(NSMutableArray*)renameList {
//    
//}
//
//-(NSMutableArray *)renameList {
//    
//}


@end



//*************** IMPLEM TO DO LIST ***************
@implementation ToDoList {
    NSString *_listName;
    NSMutableArray *_listOfItems;
}
-(void)displayItems:(NSMutableArray*)displayItems {
    for(ToDoList *listOfItems in _listOfItems) {
        printf("%s\n", [[listOfItems description] UTF8String]);
    }
}
-(void)listCompletedItems:(NSMutableArray*)listCompletedItems {
        for(ToDoList *listOfCompletedItems in _listOfItems) {
            printf("%s\n", [[listCompletedItems description] UTF8String]);
        }
}
-(NSString*)addItem:(NSString*)newItemName {
    ToDoItem *newItem = [[ToDoItem alloc]init];
    [newItem setItemName:newItemName];
    [_listOfItems addObject:newItemName];
    return newItemName;
}

-(void)removeItem:(NSString*)remove;
-(NSString *)remove;

-(void)markItem:(NSString*)mark;
-(NSString *)mark;

@end



//*************** IMPLEM TO DO ITEM ***************
@implementation ToDoItem {
    NSString *_itemName;
    NSInteger *_priority;
}

-(void)setItemName:(NSString *)itemName {
    _itemName = itemName;
    NSLog(@"%@", itemName);
}
-(NSString *)itemName {
    return _itemName;
}

-(void)setPriority:(int) priority {
    _priority = priority;
}
-(int *)priority {
    return _priority;
}

@end


//***************** MAIN FUNCTION ***********************
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ToDoItem *homework = [[ToDoItem alloc] init];
        [homework setItemName:@"Study Git branching"];
        
        
        
    }
    return 0;
}
