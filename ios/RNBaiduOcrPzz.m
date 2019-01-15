#import "RNBaiduOcrPzz.h"

@implementation RNBaiduOcrPzz

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(authWithAK:(NSString *)ak andSK:(NSString *)sk){

  RCTLogInfo(@"%@--%@", ak,sk);

  [[AipOcrService shardService] authWithAK:ak andSK:sk];
}


//error:(RCTResponseSenderBlock)errCallback
RCT_EXPORT_METHOD(idcardOCROnlineFront:(RCTResponseSenderBlock)sucCallback error:(RCTResponseSenderBlock)errCallback){


  __weak typeof(self) weakSelf = self;
   UIViewController * vc = [AipCaptureCardVC ViewControllerWithCardType:CardTypeIdCardFont
                               andImageHandler:^(UIImage *image) {

                                 [[AipOcrService shardService] detectIdCardFrontFromImage:image
                                                                              withOptions:nil
                                                                           successHandler:^(id result) {

                                                                             NSLog(@"---------------[SUCCESS]%@",result);

                                                                             sucCallback(@[result]);

                                                                             NSLog(@"~~~vc:%@",vc);
                                                                             [weakSelf.photoVC dismissViewControllerAnimated:YES completion:^{

                                                                             }];


                                                                           } failHandler:^(NSError *err) {
                                                                             errCallback(@[err]);
                                                                             NSLog(@"----------------[ERROR]%@",err);



                                                                           }];
                               }];

  [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:vc animated:YES completion:nil];

  self.photoVC = vc;


}

//身份证反面拍照识别
RCT_EXPORT_METHOD(localIdcardOCROnlineFront:(RCTResponseSenderBlock)sucCallback error:(RCTResponseSenderBlock)errCallback){

  __weak typeof(self) weakSelf = self;
  UIViewController * vc =
  [AipCaptureCardVC ViewControllerWithCardType:CardTypeLocalIdCardFont
                               andImageHandler:^(UIImage *image) {

                                 [[AipOcrService shardService] detectIdCardFrontFromImage:image
                                                                              withOptions:nil
                                                                           successHandler:^(id result) {

                                                                             NSLog(@"---------------[SUCCESS]%@",result);

                                                                             sucCallback(@[result]);

                                                                             NSLog(@"~~~vc:%@",vc);
                                                                             [weakSelf.photoVC dismissViewControllerAnimated:YES completion:^{

                                                                             }];


                                                                           } failHandler:^(NSError *err) {
                                                                             errCallback(@[err]);
                                                                             NSLog(@"----------------[ERROR]%@",err);



                                                                           }];
                               }];
  [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:vc animated:YES completion:nil];


}

//身份证正面(嵌入式质量控制+云端识别)
RCT_EXPORT_METHOD(idcardOCROnlineBack:(RCTResponseSenderBlock)sucCallback error:(RCTResponseSenderBlock)errCallback){
  __weak typeof(self) weakSelf = self;

  UIViewController * vc =
  [AipCaptureCardVC ViewControllerWithCardType:CardTypeIdCardBack
                               andImageHandler:^(UIImage *image) {

                                 [[AipOcrService shardService] detectIdCardBackFromImage:image
                                                                             withOptions:nil
                                                                          successHandler:^(id result) {

                                                                            NSLog(@"---------------[SUCCESS]%@",result);

                                                                            sucCallback(@[result]);

                                                                            NSLog(@"~~~vc:%@",vc);
                                                                            [weakSelf.photoVC dismissViewControllerAnimated:YES completion:^{

                                                                            }];


                                                                          } failHandler:^(NSError *err) {
                                                                            errCallback(@[err]);
                                                                            NSLog(@"----------------[ERROR]%@",err);


                                                                          }];
                               }];
  [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:vc animated:YES completion:nil];
}

//身份证反面(嵌入式质量控制+云端识别)
RCT_EXPORT_METHOD(localIdcardOCROnlineBack:(RCTResponseSenderBlock)sucCallback error:(RCTResponseSenderBlock)errCallback){
  __weak typeof(self) weakSelf = self;

  UIViewController * vc =
  [AipCaptureCardVC ViewControllerWithCardType:CardTypeLocalIdCardBack
                               andImageHandler:^(UIImage *image) {

                                 [[AipOcrService shardService] detectIdCardBackFromImage:image
                                                                             withOptions:nil
                                                                          successHandler:^(id result) {

                                                                            NSLog(@"---------------[SUCCESS]%@",result);

                                                                            sucCallback(@[result]);

                                                                            NSLog(@"~~~vc:%@",vc);
                                                                            [weakSelf.photoVC dismissViewControllerAnimated:YES completion:^{

                                                                            }];


                                                                          } failHandler:^(NSError *err) {
                                                                            errCallback(@[err]);
                                                                            NSLog(@"----------------[ERROR]%@",err);



                                                                          }];
                               }];
  [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:vc animated:YES completion:nil];
}




@end
