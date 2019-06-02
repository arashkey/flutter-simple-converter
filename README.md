# Convert Map json to Object Class

This project for converting json to Object

## Getting Started
1. At the first get flutter packages
2. For making fromJson and toJson functions go to [Convector](https://javiercbk.github.io/json_to_dart/ "Convector")
 website and make your class in models folder
3. Convert fromJson function in your model to this format:   

Model fromJson(Map<String, dynamic> json) {

. . .

    return this;
    
    } 
    
4. Use  var result = TServiceResponse<Model>(jsonString, new Model());