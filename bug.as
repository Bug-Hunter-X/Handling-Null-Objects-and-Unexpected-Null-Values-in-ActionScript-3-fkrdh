The following ActionScript 3 code attempts to access a property of an object before checking if the object is null:

```actionscript
function handleEvent(event:Event):void {
  var myObject:MyObject = event.target as MyObject;
  trace(myObject.someProperty); // Potential error here
}
```

This will throw a null pointer exception if `event.target` is null or is not an instance of `MyObject`.  A less common, but more subtle error arises when relying on default property values in a custom class when an unexpected null value is passed in during object creation.