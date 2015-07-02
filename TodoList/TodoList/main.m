//
//  main.m
//  TodoList
//
//  Created by Zoufishan Mehdi and Ayuna Vogel 🇷🇺🇺🇸 {{ in 💛 with 🚕 city }} on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

//checking push for github - Ayuna


#import <Foundation/Foundation.h>

@class ToDoApp;
@class ToDoList;
@class ToDoItem;

//********************** INTERFACE TO DO APP *********
@interface ToDoApp : NSObject

-(void)displayLists:(NSMutableArray*)displayLists;
-(NSMutableArray *)displayLists;

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

//-(void)removeItem:(NSString*)remove;
//-(NSString *)remove;
//
//-(void)markItem:(NSString*)mark;
//-(NSString *)mark;
//
//-(void)listCompletedItems:(NSMutableArray*)listCompletedItems;
//
//@end

//************************INTERFACE TODO ITEM
@interface ToDoItem : NSObject

-(void)setItemName:(NSString *)itemName;
-(NSString *)itemName;

-(void)setPriority:(int)priority;
-(int *)priority;

@end


//*************** IMPLEM TO DO APP ***************
//@implementation ToDoApp {
    NSMutableArray *_allLists;
}


//    ToDoItem *newItem = [[ToDoItem alloc]init];
//    [newItem setItemName:newItemName];
//    [_listOfItems addObject:newItemName];
//    return newItemName;


-(void)displayLists:(NSMutableArray*)displayLists {
    
        for(ToDoApp *something in _allLists) {
        printf("%s\n", [[something description] UTF8String]);
    }
}
-(NSMutableArray *)displayLists {
    return _displayLists;
}

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

-(void)renameList:(NSString*) name{
    _listName = name;
}


-(NSString*)addItem:(NSString*)newItemName {
    scanf("%s", &newItemName);
    
}

//
//    ToDoItem *newItem = [[ToDoItem alloc]init];
//    [newItem setItemName:newItemName];
//    [_listOfItems addObject:newItemName];
//    return newItemName;


//-(void)removeItem:(NSString*)remove;
//-(NSString *)remove;

//-(void)markItem:(NSString*)mark {
////-(NSString *)mark;
//}


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
        //        ToDoItem *homework = [[ToDoItem alloc] init];
        ToDoList *userList1 = [[ToDoList alloc] init];
        
        //        [homework setItemName:@"Study Git branching"];
        
        int createListYesNo;
        printf("Would you like to create a to-do list? \n 0)No 1)Yes \n");
        scanf("%d", &createListYesNo);
        
        if (createListYesNo == 0) {
            return 0;
        } else {
            NSString *userListName;
            char listName[256];
            printf("Enter a name for your to-do list \n");
            scanf("%s", listName);
            userListName = [NSString stringWithCString:listName encoding:NSUTF8StringEncoding];
            [userList1 renameList:userListName];
        }
        
        NSMutableArray *allLists;
        ToDoList *listsCreated = [[ToDoList alloc] init];
        [listsCreated displayLists:allLists]
        
        printf("What would you like to do next?");
        
        
        
        
        
//        
//        int enterOrRun;
//        printf("Will I beat superman?, \n 0) I'm ready to defeat superman \n 1) I would rather for my life while I can \n");
//        scanf("%d", &enterOrRun);
//        
//        //Enter the fork in the road: Batman & Kryptonite
//        
//        if (enterOrRun == 0) {
//            int batmanVsKryptonite;
//            printf("Which path do you choose: Goddamned Batman or Kryptonite? \n 0)Batman, here we go! \n 1) Batwhat? I will go with Kryptonite \n");
//            scanf("%d", &batmanVsKryptonite);
//            //You choose Batman
//            if (batmanVsKryptonite == 0) {
//                int batOrNot;
//                printf("Am I the Goddamned Batman? \n 0)Why yes! I also have batwings \n 1) Definitely not! Can I pretend though? \n");
//                scanf("%d", &batOrNot);
//                //You are batman
//                if ((batOrNot == 0) && batwings){
//                    printf("Maybe, once. On a good day.");
//                    //You are not batman
//                } else {
//                    printf("No. You lose HORRIBLY!");
//                }
//        
        
        //Arrays
//        NSMutableArray *myArray = [[NSMutableArray alloc] init];
//        NSArray *array = [[[NSArray alloc]] initWithObjects:@"one",
//                          @"two", nil];
        
        // Person *person = [[Person alloc] init];
//        [myArray addObject:[person name]];
//        [[myArray firstObject] danceInTheRain];
//
//        
//        [myArray addObject:@"mike"];
//        NSString *name = @"mike";
//        [name length];
//        
//        NSString *myName = [myArray firstObject];
//        [myName length];
        
    }
    return 0;
}
