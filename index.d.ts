import { EventSubscription } from 'react-native';


interface IBaiduOcr {
    initAuth:(ak:string,sk:string)=> void,
    idcardOCROnlineFront:(callback:()=>void,err:any)=>void,
    localIdcardOCROnlineFront:(callback:()=>void,err:any)=>void,
    idcardOCROnlineBack:(callback:()=>void,err:any)=>void,
    localIdcardOCROnlineBack:(callback:()=>void,err:any)=>void,
}

export const BaiduOcr : IBaiduOcr;
