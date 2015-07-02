//
//  List.m
//  toDoListFromScratchZoufAndAyuna
//
//  Created by Ayuna Vogel on 6/30/15.
//  Copyright (c) 2015 Ayuna Vogel. All rights reserved.
//

#import "List.h"
#import "ListManager.h"
#import "ListManager.m"
@class List;

@implementation List {
    NSString* _listName;
    NSMutableArray* _itemsInList;
}

-(void)setListName:(NSString *)listName {
    _listName = listName;
}
-(NSString*) listName {
    return _listName;
}
-(NSMutableArray*)itemsInList {
    if (_itemsInList == nil) {
        _itemsInList = [[NSMutableArray alloc] init];
    }
    return _itemsInList;
}

-(void) addItemToList: (Item*) task {
    [_itemsInList addObject:task];
}

-(void) deleteItemFromList {
    NSLog(@"Enter a number to delete task");
    int j;
    scanf("%d", &j);
    [_itemsInList removeObjectAtIndex:j-1];
}

-(void) printAllItemsInList {
    for (int i = 0; i < [_itemsInList count]; i++) {
        NSString *itemName = [[_itemsInList objectAtIndex:i] itemName];
        int itemPriority = [[_itemsInList objectAtIndex:i] itemPriority];
        NSLog(@"%i %@, priority %d", i+1, itemName, itemPriority);
    }
}

-(void) printAllCompletedItems:(BOOL) value {
    for (int i = 0; i < [_itemsInList count]; i++) {
        if ([[_itemsInList objectAtIndex:i] markedDone] == value) {
            NSString *itemName = [[_itemsInList objectAtIndex:i] itemName];
            int itemPriority = [[_itemsInList objectAtIndex:i] itemPriority];
            NSLog(@"%i %@, priority %d", i+1, itemName, itemPriority);
        }
    }
}

-(void) markItemDone: (Item *) task {
    NSLog(@"Enter a number to mark task done");
    int j;
    scanf("%d", &j);
    for (int i = 0; i < [_itemsInList count]; i++) {
        if (i == j) {
            NSString *task = [[_itemsInList objectAtIndex:j-1] itemName];
            NSString *printTaskAsCompleted = [NSString stringWithFormat:@"✔︎ %i %@", i, task];
            [[_itemsInList objectAtIndex:j-1] setMarkedDone:YES];
            NSLog(@"%@", printTaskAsCompleted);
        }
    }
}


-(void) goBackToLists {
    int j;
    scanf("%d", &j);
     for (int i = 0; i < [_lists count]; i++) {
        if (j == 8) {
            [[_lists objectAtIndex:i] ListManagerMenuOptions];
        }
    }
}



-(void) editItemName {
    //print the list of items in this list 
    NSLog(@"Enter a number to pick a task to edit"); 
// first version of this code - doesn't work
//    NSLog(@"Enter task description");
//    char newItemName[256];
//    fgets(newItemName, 256, stdin);
//    NSString *editedItemName = [NSString stringWithUTF8String:newItemName];

//2nd version:
    //if scanf user input = edit task {
//    int j;
//    scanf("%d", &j);
//    for (int i = 0; i < [_itemsInList count]; i++) {
//        if (j == i) {
//            NSString *itemName = [[_itemsInList objectAtIndex:j-1] itemName];
//            NSLog(@"Enter task description");
//            char newItemName[256];
//            fgets(newItemName, 256, stdin);
//            NSString *editedItemName = [NSString stringWithUTF8String:newItemName];
//            itemName = editedItemName;
//        }
//    }
}

-(void) addListDescription {
    NSLog(@"Enter list description: ");
    // fgets method allows user to input more than one word ie: "finish project"
    char listDescriptionInput[256];
    fgets(listDescriptionInput, 256, stdin);
    //  NSLog(@"item added: %s", name); // we test our work above here
    NSString *listDescription = [NSString stringWithUTF8String:listDescriptionInput]; //stringWithUTF8String converts char to string
    //    NSLog(@"string test: %@", item1);
    [self setListName:listDescription];
}

-(void) listOptions {
    int i;
    BOOL runListOptionsMenu = true;
    while (runListOptionsMenu) {
        
        NSArray *listOptions = [[NSArray alloc] initWithObjects:@"1 - Display all tasks", @"2 - Add new task", @"3 - Edit task", @"4 - Delete task", @"5 - Mark task done", @"6 - List all active tasks", @"7 - List completed tasks", @"8 - Go back to Lists", @"0 - Quit",  nil];
        
        NSLog(@"%@", listOptions);
        scanf("%d", &i);
        fpurge(stdin);
        
        if (i == 1) {
            //display all items in the selected list
            [self printAllItemsInList];
        }
        else if (i == 2) {
            //add new item
            NSLog(@"Enter task description: ");
            Item *newToDoItem = [[Item alloc]init];
            [newToDoItem addItemDescription];
            [newToDoItem itemName];
            [self addItemToList:newToDoItem];
        }
        else if (i == 3) {
            //rename item
            [self printAllItemsInList];
            NSLog(@"Enter a number to edit task");
            int i;
            scanf("%d", &i);
            [self editItemName];
        }
        else if (i == 4) {
            //delete item
            [self printAllItemsInList];
//            NSLog(@"Enter an item number to delete it");
//            int i;
//            scanf("%d", &i);
            [self deleteItemFromList];
            NSLog(@"Deleted");
        }
        else if (i == 5) {
            //mark task done
            [self printAllItemsInList];
            NSLog(@"Enter a task number to mark it completed");
            int i;
            scanf("%d", &i);
            //[self markItemDone];
        }
        else if (i == 6) {
            [self printAllCompletedItems:NO];
        }
        else if (i == 7) {
            //print all items in list, versions: either excluding marked done items, or print all incl marked done items with a check sign
            [self printAllCompletedItems:YES];
        }
        else if (i == 8) {
            
        }
        else if (i == 0) {
            NSLog(@"It was good to see you! Bye!");
            break; 
        }
        else {
            NSLog(@"Bummer! Try again?");
        }
    }
}


@end

