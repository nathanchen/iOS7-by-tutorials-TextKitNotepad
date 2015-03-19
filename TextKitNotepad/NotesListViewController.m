//
//  NotesListViewController.m
//  TextKitNotepad
//
//  Created by Nate on 19/03/2015.
//  Copyright (c) 2015 Nathan CHEN. All rights reserved.
//

#import "NotesListViewController.h"
#import "AppDelegate.h"
#import "Note.h"
#import "NoteEditorViewController.h"

@interface NotesListViewController ()

@end

@implementation NotesListViewController

- (NSMutableArray *)notes
{
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    return appDelegate.notes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [self.tableView reloadData];
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [[self notes] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    Note *note = [[self notes] objectAtIndex:indexPath.row];
    cell.textLabel.text = note.title;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 20.0;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NoteEditorViewController *editorVC = [segue destinationViewController];
    if ([[segue identifier] isEqualToString:@"CellSelected"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        editorVC.note = [[self notes] objectAtIndex:indexPath.row];
    }
    else if([[segue identifier] isEqualToString:@"AddNewNote"])
    {
        editorVC.note = [[Note alloc] initWithText:@" "];
        AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
        [appDelegate.notes addObject:editorVC.note];
    }
}


@end
