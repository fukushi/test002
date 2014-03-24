//
//  chikuwakuVideoListViewController.m
//  testapp002
//
//  Created by fukushi on 2014/03/18.
//  Copyright (c) 2014年 chikuwaku. All rights reserved.
//

#import "chikuwakuVideoListViewController.h"

@interface chikuwakuVideoListViewController ()

@end

@implementation chikuwakuVideoListViewController{
    __strong NSMutableArray *items;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        items = [NSMutableArray array];
        for (int i=0; i<5; i++) {
            // Make contents
            NSString *title = [NSString stringWithFormat:@"TITLE %d",i];
            NSString *desc = [NSString stringWithFormat:@"This is a description of this cell."];
            NSDictionary *dict = @{@"title":title, @"desc":desc};
            [items addObject:dict];
        }
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // Instantiate cell from Nib to set default row height.
    UINib *nib = [UINib nibWithNibName:@"CustomCell" bundle:nil];
    CustomCell *cell = [[nib instantiateWithOwner:nil options:nil] objectAtIndex:0];
    self.tableView.rowHeight = cell.frame.size.height;
    
    // Register CustomCell
    [self.tableView registerNib:nib forCellReuseIdentifier:@"CustomCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [items count] + 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell"];
    
    // Set contents
    if (indexPath.row > items.count - 1) {
        NSLog(@"%i", indexPath.row);
        NSLog(@"[items objectAtIndex:indexPath.row] == [NSNull null]");
        cell.textLabel.text = @"ここにアイテムを追加";
        [cell.thumbnailBtn setBackgroundImage:[UIImage imageNamed:@"you_gave_me_love.png"] forState:UIControlStateNormal];
    } else {
        cell.textLabel.text = [[items objectAtIndex:indexPath.row] objectForKey:@"title"];
        [cell.thumbnailBtn setBackgroundImage:[UIImage imageNamed:@"you_gave_me_love.png"] forState:UIControlStateNormal];
    
    NSLog(@"%i",indexPath.row);
    NSLog(@"%i", items.count);
    }

    
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

#pragma mark - UserDefault

- (void)setDefaultUserdefaultkey
{
    /* NSUserDefaultsに初期値を登録する */
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSMutableDictionary *defaults = [NSMutableDictionary dictionary];
    [defaults setObject:@"YES" forKey:@"nead_intro_flg"];  // nead_intro_flgというキーの初期値はYES
    [ud registerDefaults:defaults];
    
}

@end
