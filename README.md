# ActionScript 3 Collision Detection Bug

This repository demonstrates a subtle bug in ActionScript 3's collision detection when using the `getBounds()` method. The issue arises when two DisplayObjects are in different display lists or containers.

The `getBounds()` method returns the bounds relative to the object's parent. If the objects have different parents, their bounds are calculated relative to different coordinate systems, leading to inaccurate intersection checks.

## Bug Description

The provided `checkCollision` function uses `getBounds()` to determine if two display objects intersect.  However, if `obj1` and `obj2` have different parent containers, the intersection check will often be incorrect. 

## Solution

The solution involves converting the bounds to a common coordinate system, typically the stage.  This allows for accurate comparison irrespective of the object's placement within the display list hierarchy.