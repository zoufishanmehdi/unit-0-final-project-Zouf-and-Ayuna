//
//  main.m
//  toDoListFromScratchZoufAndAyuna
//
//  Created by Ayuna Vogel on 6/28/15.
//  Copyright (c) 2015 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "List.h"
#import "ListManager.h"

@class ListManager;
@class List;
@class Item;

// ************ *********** ****** >>> MAIN FUNCTION <<< ********* ******** **********

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Item *firstTask = [[Item alloc]init];
        [firstTask setItem:@"Buy bananas"];
        [firstTask setItemPriority:1];
        
        Item *secondTask = [[Item alloc]init];
        [secondTask setItem:@"Buy coffee and tea"];
        [secondTask setItemPriority:2];
        
        List *groceryList = [[List alloc]init];
        [groceryList setListName:@"Grocery List"];
        [groceryList itemsInList];
        [groceryList addItemToList:firstTask];
        [groceryList addItemToList:secondTask];
        //[groceryList printAllItemsInList];
        //[groceryList editItemName:secondTask];
        
        
        Item *finishToDoListAppProject = [[Item alloc] init];
        [finishToDoListAppProject setItem:@"Finish to-do list app project"];
        [finishToDoListAppProject setItemPriority:1];
        
        Item *learnGitBranching = [[Item alloc] init];
        [learnGitBranching setItem:@"Learn Git branching"];
        [learnGitBranching setItemPriority:2];
        
        Item *readBook = [[Item alloc] init];
        [readBook setItem:@"Read Objective-C programming: The big nerd ranch guide book"];
        [readBook setItemPriority:3];
        
        List *homeworkToDoList = [[List alloc] init];
        [homeworkToDoList itemsInList];
        [homeworkToDoList setListName:@"Homework"];
        [homeworkToDoList addItemToList:finishToDoListAppProject];
        [homeworkToDoList addItemToList:learnGitBranching];
        [homeworkToDoList addItemToList:readBook];
        //[homeworkToDoList printAllItemsInList];
        
        ListManager *allLists = [[ListManager alloc]init];
        [allLists getLists];
        [allLists addListToListManager: groceryList];
        [allLists addListToListManager:homeworkToDoList];
        
        //[groceryList deleteItemFromList:firstTask];
        //[groceryList printAllItemsInList];
        //[groceryList markItemDone:secondTask];
        //[groceryList printAllItemsInList];
        //[groceryList listOptions];
        
        
        NSLog(@"Welcome to your to-do list app! Let's get you started:\n");
        [allLists listManagerMenuOptions]; //prints List Manager options menu

        //here's a line to save the code
        
    }
    return 0;
}
