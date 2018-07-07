//
//  PhotosTableViewController.m
//  PhotoApp
//
//  Created by rMBP on 2014/01/19.
//  Copyright (c) 2014年 Tom Ice. All rights reserved.
//

#import "PhotosTableViewController.h"

@interface PhotosTableViewController ()
{
    NSMutableArray *photos;
    NSMutableArray *thumbnails;
}

@end

@implementation PhotosTableViewController

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
    
    self.title = @"Photos";
    
    // Creates array and loads in data
    photos = [[NSMutableArray alloc] init];
    thumbnails = [[NSMutableArray alloc] init];
    
    Photo *pic = [[Photo alloc] init];
    pic.nameOfPhoto = @"Bird";
    pic.filename = @"bird";
    pic.information = @"Birds (class Aves or clade Avialae) are feathered, winged, two-legged, warm-blooded, egg-laying vertebrates. Aves ranks as the tetrapod class with the most living species, approximately ten thousand. Extant birds belong to the subclass Neornithes, living worldwide and ranging in size from the 5 cm (2 in) Bee Hummingbird to the 2.75 m (9 ft) Ostrich. The fossil record indicates that birds emerged within the theropod dinosaurs during the Jurassic period, around 150 million years ago. Most researchers agree that modern-day birds are the only living members of the Dinosauria clade.";
    [photos addObject:pic];
    
    Photo *thumb = [[Photo alloc] init];
    thumb.filename = @"birdthumb";
    [thumbnails addObject:thumb];
    
    pic = [[Photo alloc] init];
    pic.nameOfPhoto = @"Cat";
    pic.filename = @"cat";
    pic.information = @"The domestic cat (Felis catus or Felis silvestris catus) is a small, usually furry, domesticated, and carnivorous mammal. It is often called the housecat when kept as an indoor pet,[6] or simply the cat when there is no need to distinguish it from other felids and felines. Cats are often valued by humans for companionship and their ability to hunt vermin and household pests.";
    [photos addObject:pic];
    
    pic = [[Photo alloc] init];
    pic.nameOfPhoto = @"Dog";
    pic.filename = @"dog";
    pic.information = @"The domestic dog (Canis lupus familiaris) is a subspecies of the gray wolf (Canis lupus), a member of the Canidae family of the mammalian order Carnivora. The term domestic dog is generally used for both domesticated and feral varieties. The dog was the first domesticated animal and has been the most widely kept working, hunting, and pet animal in human history. The word dog can also refer to the male of a canine species, as opposed to the word bitch which refers to the female of the species.";
    [photos addObject:pic];
    
    pic = [[Photo alloc] init];
    pic.nameOfPhoto = @"Guinea Pig";
    pic.filename = @"guineapig";
    pic.information = @"The guinea pig (Cavia porcellus), also called the cavy, is a species of rodent belonging to the family Caviidae and the genus Cavia. Despite their common name, these animals are not in the pig family, nor are they from Guinea. They originated in the Andes, and earlier studies based on biochemistry and hybridization suggested they are domesticated descendants of a closely related species of cavy such as Cavia aperea, C. fulgida, or C. tschudii and, therefore, do not exist naturally in the wild. Recent studies applying molecular markers,in addition to studying the skull and skeletal morphology of current and mummified animals, revealed that the ancestor is most likely Cavia tschudii.";
    [photos addObject:pic];
    
    pic = [[Photo alloc] init];
    pic.nameOfPhoto = @"Snake";
    pic.filename = @"snake";
    pic.information = @"Snakes are elongated, legless, carnivorous reptiles of the suborder Serpentes that can be distinguished from legless lizards by their lack of eyelids and external ears. Like all squamates, snakes are ectothermic, amniote vertebrates covered in overlapping scales. Many species of snakes have skulls with many more joints than their lizard ancestors, enabling them to swallow prey much larger than their heads with their highly mobile jaws. To accommodate their narrow bodies, snakes' paired organs (such as kidneys) appear one in front of the other instead of side by side, and most have only one functional lung. Some species retain a pelvic girdle with a pair of vestigial claws on either side of the cloaca.";
    [photos addObject:pic];
    
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return photos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    Photo *current = [photos objectAtIndex:indexPath.row];
    cell.textLabel.text = [current nameOfPhoto];
    
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


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    DisplayViewController *pvc = [segue destinationViewController];
    // Pass the selected object to the new view controller.
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    Photo *c = photos[path.row];
    [pvc setCurrentPhoto:c];
    
}


@end
