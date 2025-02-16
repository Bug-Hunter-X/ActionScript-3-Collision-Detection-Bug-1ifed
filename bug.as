function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);
  return rect1.intersects(rect2);
}

// ... later in your code ...

if (checkCollision(mySprite, otherSprite)) {
  // Handle collision
}

//This code has an edge case where objects that are not in the same parent would return false even when they do intersect on stage.