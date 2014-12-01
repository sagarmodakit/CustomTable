//
//  FirstTableViewController.m
//  CustomTable
//
//  Created by sagar modak on 14/11/14.
//  Copyright (c) 2014 com.EmpoweringVisions. All rights reserved.
//

#import "FirstTableViewController.h"

#import "MyCell.h"

@interface FirstTableViewController ()

@end

@implementation FirstTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
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
    
    
    [self.tableView registerNib:[UINib nibWithNibName:@"MyCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"MyCell"];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Configure the cell...
    
    MyCell * cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    
    cell.profileImage.layer.cornerRadius = 25;
    
    cell.profileImage.clipsToBounds = YES;
    
    if (indexPath.row == 0)
    {
        
        cell.customImage.image = [UIImage imageNamed:@"1.jpg"];
        
        [cell.customBtn addTarget:self action:@selector(likeBtnClicked) forControlEvents:UIControlEventTouchUpInside];
        
        cell.userName.text = @"Rushikesh shared this image";
        
        cell.profileImage.image = [UIImage imageNamed:@"rushiImage.jpg"];
        
        
        
        
        
        cell.likeCount.text = @"2";
        
        
        
    }
    
    else if (indexPath.row == 1)
    {
        
        cell.customImage.image = [UIImage imageNamed:@"2.jpg"];
        
        cell.userName.text = @"sagar shared this image";
        
        cell.profileImage.image = [UIImage imageNamed:@"sagarImage.jpg"];
        
        cell.likeCount.text = @"1";
    }
    
    
    return cell;
}

-(void)likeBtnClicked
{
    UIAlertView * likeAlert = [[UIAlertView alloc]initWithTitle:@"Like Button" message:@"Like button functions will be executed" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
    
    [likeAlert show];
    
}



-(float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 360;
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
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
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

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
