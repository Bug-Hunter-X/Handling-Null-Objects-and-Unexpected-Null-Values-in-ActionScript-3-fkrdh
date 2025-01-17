The solution involves adding null checks before accessing object properties:

```actionscript
function handleEvent(event:Event):void {
  var myObject:MyObject = event.target as MyObject;
  if (myObject != null && myObject is MyObject) {
    trace(myObject.someProperty);
  } else {
    trace("myObject is null or not an instance of MyObject");
  }
}

//For the second case, add null checks within the constructor of the custom class:

public class MyObject{

    public var someProperty:String = "defaultValue";
    
    public function MyObject(someProperty:String){
        if(someProperty != null) {
            this.someProperty = someProperty;
        }
    }
}
```

This revised code ensures that the `someProperty` is only accessed if `myObject` is a valid instance of `MyObject` and not null.  Similarly, the updated constructor handles the case where a null value could be passed for someProperty.