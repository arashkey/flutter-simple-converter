# Convert Map json to Object Class

This project for converting json to Object

## Getting Started
1. At the first get flutter packages
2. For making fromJson and toJson functions go to [Convector](https://javiercbk.github.io/json_to_dart/ "Convector")
 website and make your class in models folder
3. Extends model class from  IServiceResponce like this
```dart
class YourModel extends IServiceResponce<YourModel>{
  // ...
  }
```
4. Convert fromJson function in your model to this format:   
```dart
YourModel fromJson(Map<String, dynamic> json) {
//...
    
    return this;    
} 
```
5. Use it:
```dart
 var result = TServiceResponse<YourModel>(jsonString, new YourModel());
```