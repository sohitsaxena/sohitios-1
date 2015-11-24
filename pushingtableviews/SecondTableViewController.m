//
//  SecondTableViewController.m
//  pushingtableviews
//
//  Created by Parag Sharma on 16/09/15.
//  Copyright (c) 2015 Mantra Labs. All rights reserved.
//

#import "SecondTableViewController.h"

@interface SecondTableViewController ()

@end

@implementation SecondTableViewController{
    NSArray *general;
    NSArray *generalImage;
    NSArray *privacy;
    NSArray *icloud;
    NSArray *maps;
    NSArray *safari;
    NSArray *camera;
    NSArray *games;
    NSArray *twitter;
    NSArray *facebook;
    NSArray *flickr;
    NSArray *developer;
    
    
}
-(id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if(self)
    {
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    general = [NSArray arrayWithObjects:@"name", @"city", @"mobileno", nil];
    generalImage =  [NSArray arrayWithObjects:@"maps.jpg",@"icloud.jpg",@"facebook.jpg",nil];
    
    privacy= [NSArray arrayWithObjects:@"username", @"password", nil];
    icloud= [NSArray arrayWithObjects:@"about", @"application", @"interface", nil];
    maps= [NSArray arrayWithObjects:@"about", @"location", @"guide", nil];
    safari= [NSArray arrayWithObjects:@"about", @"application", @"interface", nil];
    camera= [NSArray arrayWithObjects:@"pictures", @"videos", @"images", nil];
    games= [NSArray arrayWithObjects:@"about", @"play", @"help", nil];
    twitter= [NSArray arrayWithObjects:@"about", @"login", @"newuser", nil];
    facebook= [NSArray arrayWithObjects:@"about", @"login", @"newuser", nil];
    flickr= [NSArray arrayWithObjects:@"about", @"search", @"interface", nil];
    developer= [NSArray arrayWithObjects:@"about", @"application", @"interface", nil];
    
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
    if([_animalname isEqualToString:@"general" ])
    {
        return [general count];
    }
    else if([_animalname isEqualToString:@"privacy" ])
    {
        return [privacy count];
    }
    else if([_animalname isEqualToString:@"icloud" ])
    {
        return [icloud count];
    }
    else if([_animalname isEqualToString:@"maps" ])
    {
        return [maps count];
    }
    else if([_animalname isEqualToString:@"safari" ])
    {
        return [safari count];
    }
    else if([_animalname isEqualToString:@"camera" ])
    {
        return [camera count];
    }
    else if([_animalname isEqualToString:@"games" ])
    {
        return [games count];
    }
    else if([_animalname isEqualToString:@"twitter" ])
    {
        return [twitter count];
    }
    else if([_animalname isEqualToString:@"facebook" ])
    {
        return [facebook count];
    }
    else if([_animalname isEqualToString:@"flickr" ])
    {
        return [flickr count];
    }
    else if([_animalname isEqualToString:@"developer" ])
    {
        return [developer count];
    }
    
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier =@"animalcell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell==nil)
    {
        cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    if([_animalname isEqualToString:@"general" ])
    {
        //cell.textLabel.text= [general objectAtIndex:indexPath.row];
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[general objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
        
        UISwitch *switchview = [[UISwitch alloc] initWithFrame:CGRectZero];
        cell.accessoryView = switchview;
       // [switchview release];
    }
    else if([_animalname isEqualToString:@"privacy" ])
    {
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[privacy objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
    }
    else if([_animalname isEqualToString:@"icloud" ])
    {
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[icloud objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
    }
    else if([_animalname isEqualToString:@"maps" ])
    {
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[maps objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
    }
    else if([_animalname isEqualToString:@"safari" ])
    {
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[safari objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
    }
    else if([_animalname isEqualToString:@"camera" ])
    {
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[camera objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
    }
    else if([_animalname isEqualToString:@"games" ])
    {
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[games objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
    }
    else if([_animalname isEqualToString:@"twitter" ])
    {
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[twitter objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
    }
    else if([_animalname isEqualToString:@"facebook" ])
    {
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[facebook objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
    }
    else if([_animalname isEqualToString:@"flickr" ])
    {
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[flickr objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
    }
    else if([_animalname isEqualToString:@"developer" ])
    {
        UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
        textview.text =[developer objectAtIndex:indexPath.row];
        [cell addSubview:textview];
        
        UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
        image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
        [cell addSubview: image];
    }
    
//    UILabel *textview =[[UILabel alloc]initWithFrame:CGRectMake(50,10, 200, 30)];
//    textview.text =[general objectAtIndex:indexPath.row];
//    [cell addSubview:textview];
    
//    UIImageView *image= [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 30 , 30)];
//    image.image= [UIImage imageNamed:[generalImage objectAtIndex:indexPath.row]];
//    [cell addSubview: image];
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

@end
