//
//  ViewController.m
//  TextView
//
//  Created by keith Alperin on 11/5/12.
//  Copyright (c) 2012 keith Alperin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *jaberwock = @"'Twas brillig, and the slithy toves\nDid gyre and gimble in the wabe;\nAll mimsy were the borogoves,\nAnd the mome raths outgrabe.\n\n\"Beware the Jabberwock, my son!\nThe jaws that bite, the claws that catch!\nBeware the Jubjub bird, and shun\nThe frumious Bandersnatch!\"\n\nHe took his vorpal sword in hand:\nLong time the manxome foe he sought—\nSo rested he by the Tumtum tree,\nAnd stood awhile in thought.\n\nAnd as in uffish thought he stood,\nThe Jabberwock, with eyes of flame,\nCame whiffling through the tulgey wood,\nAnd burbled as it came!\n\nOne, two! One, two! and through and through\nThe vorpal blade went snicker-snack!\nHe left it dead, and with its head\nHe went galumphing back.\n\n\"And hast thou slain the Jabberwock?\nCome to my arms, my beamish boy!\nO frabjous day! Callooh! Callay!\"\nHe chortled in his joy.\n\n'Twas brillig, and the slithy toves\nDid gyre and gimble in the wabe;\nAll mimsy were the borogoves,\nAnd the mome raths outgrabe.";
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] init];

    int next = 1;
    
    NSArray *lines = [jaberwock componentsSeparatedByString:@"\n"];
    for (NSString *line in lines)
    {
        
        NSMutableAttributedString *attributedLine = [[NSMutableAttributedString alloc] initWithString:line];
        
        switch (next) {
            case 1:
                
                for (NSInteger i=0;i<20;i++)
                {
                    if (i < [line length])
                    {
                        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 - ((i + 1.0) / 20.0) alpha:1.0];
                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange([line length] - i - 1, 1)];
                    }
                }
                
                next = 2;
                break;
            
            case 2:
                
                for (NSInteger i=0;i<20;i++)
                {
                    if ([line length] > i)
                    {
                        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 - ((i + 1.0) / 20.0) alpha:1.0];
                        //change the colors of the first 5 and last 5 characters
                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(i, 1)];
                    }
                }
                
                next = 3;
                break;
            
            case 3:
                
                for (NSInteger i=0;i<20;i++)
                {
                    if (i < [line length])
                    {
                        UIColor *color = [UIColor colorWithRed:1.0 - ((i + 1.0) / 20.0) green:0.0 blue:0.0 alpha:1.0];
                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange([line length] - i - 1, 1)];
                    }
                }
                
                next = 4;
                break;
            
            case 4:
                
                for (NSInteger i=0;i<20;i++)
                {
                    if ([line length] > i)
                    {
                        UIColor *color = [UIColor colorWithRed:1.0 - ((i + 1.0) / 20.0) green:0.0 blue:0.0 alpha:1.0];
                        //change the colors of the first 5 and last 5 characters
                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(i, 1)];
                    }
                }
                
                next = 1;
                break;
        }
        
        
//        if (next==1) {
//            
//            if (modifyHead)
//            {
//                for (NSInteger i=0;i<20;i++)
//                {
//                    if ([line length] > i)
//                    {
//                        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 - ((i + 1.0) / 20.0) alpha:1.0];
//                        //change the colors of the first 5 and last 5 characters
//                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(i, 1)];
//                    }
//                }
//                modifyHead = NO;
//            }
//            else
//            {
//                for (NSInteger i=0;i<20;i++)
//                {
//                    if (i < [line length])
//                    {
//                        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 - ((i + 1.0) / 20.0) alpha:1.0];
//                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange([line length] - i - 1, 1)];
//                    }
//                }
//                modifyHead = YES;
//            }
//            
//            next = 2;
//        }
//        else if (next==2)
//        {
//            
//            if (modifyHead)
//            {
//                for (NSInteger i=0;i<20;i++)
//                {
//                    if ([line length] > i)
//                    {
//                        UIColor *color = [UIColor colorWithRed:1.0 - ((i + 1.0) / 20.0) green:0.0 blue:0.0 alpha:1.0];
//                        //change the colors of the first 5 and last 5 characters
//                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(i, 1)];
//                    }
//                }
//                modifyHead = NO;
//            }
//            else
//            {
//                for (NSInteger i=0;i<20;i++)
//                {
//                    if (i < [line length])
//                    {
//                        UIColor *color = [UIColor colorWithRed:1.0 - ((i + 1.0) / 20.0) green:0.0 blue:0.0 alpha:1.0];
//                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange([line length] - i - 1, 1)];
//                    }
//                }
//                modifyHead = YES;
//            }
//            
//            next = 3;
//        }
//        else if (next == 3)
//        {
//            
//            if (modifyHead)
//            {
//                for (NSInteger i=0;i<20;i++)
//                {
//                    if ([line length] > i)
//                    {
//                        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 - ((i + 1.0) / 20.0) alpha:1.0];
//                        //change the colors of the first 5 and last 5 characters
//                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(i, 1)];
//                    }
//                }
//                modifyHead = NO;
//            }
//            else
//            {
//                for (NSInteger i=0;i<20;i++)
//                {
//                    if (i < [line length])
//                    {
//                        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 - ((i + 1.0) / 20.0) alpha:1.0];
//                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange([line length] - i - 1, 1)];
//                    }
//                }
//                modifyHead = YES;
//            }
//            
//            next = 4;
//        }
//        else if (next == 4)
//        {
//            
//            if (modifyHead)
//            {
//                for (NSInteger i=0;i<20;i++)
//                {
//                    if ([line length] > i)
//                    {
//                        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 - ((i + 1.0) / 20.0) alpha:1.0];
//                        //change the colors of the first 5 and last 5 characters
//                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(i, 1)];
//                    }
//                }
//                modifyHead = NO;
//            }
//            else
//            {
//                for (NSInteger i=0;i<20;i++)
//                {
//                    if (i < [line length])
//                    {
//                        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 - ((i + 1.0) / 20.0) alpha:1.0];
//                        [attributedLine addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange([line length] - i - 1, 1)];
//                    }
//                }
//                modifyHead = YES;
//            }
//            
//            next = 1;
//        }
        
        

        
        
        
        [attributedString appendAttributedString:attributedLine] ;
        [attributedString appendAttributedString:[[NSAttributedString alloc] initWithString:@"\n"]] ;
    }

    self.textView.attributedText = attributedString;
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
