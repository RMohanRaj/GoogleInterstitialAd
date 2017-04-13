//
//  ViewController.m
//  googleAds
//
//  Created by Ocsmobi-5 on 13/04/17.
//  Copyright © 2017 com.oclocksoftware.SampleApp. All rights reserved.
//

#import "ViewController.h"
@import GoogleMobileAds;

@interface ViewController ()<UIAlertViewDelegate,GADInterstitialDelegate>
@property(nonatomic, strong) GADInterstitial *interstitial;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)interstitialAdBtn:(id)sender {
    
    [self createAndLoadInterstitial];
}


- (void)createAndLoadInterstitial {
    self.interstitial =
    [[GADInterstitial alloc] initWithAdUnitID:@"ca-app-pub-9217120626178631/1181096101"];
    
    GADRequest *request = [GADRequest request];
       request.testDevices = @[kGADSimulatorID,@"2077ef9a63d2b398840261c8221a0c9b"];
    
    _interstitial.delegate = self;
    [self.interstitial loadRequest:request];
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)ad
{
    [_interstitial presentFromRootViewController:self];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
