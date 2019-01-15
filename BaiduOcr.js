import { NativeModules } from 'react-native';

const { RNBaiduOcrPzz } = NativeModules;


export default {
  initAuth:(ak,sk)=> RNBaiduOcrPzz.authWithAK(ak ,sk),
  idcardOCROnlineFront:(callback,err)=>RNBaiduOcrPzz.idcardOCROnlineFront(callback,err),
  localIdcardOCROnlineFront:(callback,err)=>RNBaiduOcrPzz.localIdcardOCROnlineFront(callback,err),
  idcardOCROnlineBack:(callback,err)=>RNBaiduOcrPzz.idcardOCROnlineBack(callback,err),
  localIdcardOCROnlineBack:(callback,err)=>RNBaiduOcrPzz.localIdcardOCROnlineBack(callback,err),
};
