function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  var rect1:Rectangle = obj1.getBounds(stage);
  var rect2:Rectangle = obj2.getBounds(stage);
  return rect1.intersects(rect2);
}

// ... later in your code ...

if (checkCollision(mySprite, otherSprite)) {
  // Handle collision
} 

// This revised function uses stage as the reference for getting bounds which solves the collision issue.