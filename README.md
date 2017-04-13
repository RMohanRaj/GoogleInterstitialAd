# GoogleInterstitialAd
*google fullscreen Ad
* needs to install pod first,
```
pod init
pod install
open -e pod file
```
   *In the pod file insert this two files
```
   pod 'Firebase/Core'
   pod 'Firebase/AdMob'
   pod  update
```
* Next you have to create the Publisherid and AdUnitID,To generate it refer this link "admob.com"
*create a button, and call the method "createAndLoadInterstitial" in button Action.
```
#import "ViewController.h"
@import GoogleMobileAds;

@interface ViewController ()<UIAlertViewDelegate,GADInterstitialDelegate>
@property(nonatomic, strong) GADInterstitial *interstitial;

@end

- (IBAction)interstitialAdBtn:(id)sender {
    
    [self createAndLoadInterstitial];
}


- (void)createAndLoadInterstitial {
    self.interstitial =
    [[GADInterstitial alloc] initWithAdUnitID:@"Your AdUnit id"];
    
    GADRequest *request = [GADRequest request];
       request.testDevices = @[kGADSimulatorID,@"2077ef9a63d2b398840261c8221a0c9b"];
    
    _interstitial.delegate = self;
    [self.interstitial loadRequest:request];
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)ad
{
    [_interstitial presentFromRootViewController:self];
}
```


   
