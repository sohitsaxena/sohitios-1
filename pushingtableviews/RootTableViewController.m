//
//  RootTableViewController.m
//  pushingtableviews
//
//  Created by Parag Sharma on 16/09/15.
//  Copyright (c) 2015 Mantra Labs. All rights reserved.
//

#import "RootTableViewController.h"
#import "SecondTableViewController.h"


@interface RootTableViewController ()

@end

@implementation RootTableViewController
{
    NSArray *animal;
    NSArray *imagesArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    {
        animal= [NSArray arrayWithObjects: @"general",@"privacy",@"icloud",@"maps", @"safari", @"camera", @"games",@"twitter", @"facebook",@"flickr",@"developer", nil];
        imagesArray= [NSArray arrayWithObjects:@"general.jpg", @"privacy.jpg", @"icloud.jpg", @"maps.jpg", @"safari.png", @"camera.png", @"games.jpg", @"twitter.png", @"facebook.jpg", @"flickr.jpg", @"developer.jpg",nil];
        
    }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

   
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [animal count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"amimalcell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell==nil)
    {
        cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
    textview.text =[animal objectAtIndex:indexPath.row];
    [cell addSubview:textview];
   
    
    UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
    image.image= [UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
    [cell addSubview: image];
//    cell.textLabel.text= [animal objectAtIndex:indexPath.row];
    return  cell;
    
    
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"arraydetail"]) {
        NSIndexPath *indexpath= [self.tableView indexPathForSelectedRow];
        SecondTableViewController *destViewController = segue.destinationViewController;
        destViewController.animalname= [animal objectAtIndex:indexpath.row];
        destViewController.title= destViewController.animalname;
        
        
    }
}

@end
