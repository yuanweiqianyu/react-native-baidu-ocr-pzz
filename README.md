# react-native-baidu-ocr-pzz

## Getting started

`$ npm install react-native-baidu-ocr-pzz --save`

### Mostly automatic installation

`$ react-native link react-native-baidu-ocr-pzz`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-baidu-ocr-pzz` and add `RNBaiduOcrPzz.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNBaiduOcrPzz.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.RNBaiduOcrPzzPackage;` to the imports at the top of the file
  - Add `new RNBaiduOcrPzzPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-baidu-ocr-pzz'
  	project(':react-native-baidu-ocr-pzz').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-baidu-ocr-pzz/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-baidu-ocr-pzz')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNBaiduOcrPzz.sln` in `node_modules/react-native-baidu-ocr-pzz/windows/RNBaiduOcrPzz.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Baidu.Ocr.Pzz.RNBaiduOcrPzz;` to the usings at the top of the file
  - Add `new RNBaiduOcrPzzPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNBaiduOcrPzz from 'react-native-baidu-ocr-pzz';

// TODO: What to do with the module?
RNBaiduOcrPzz;
```
  