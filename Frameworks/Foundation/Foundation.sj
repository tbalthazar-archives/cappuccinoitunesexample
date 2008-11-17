@STATIC;1.0;p;9;CPArray.ji;10;CPObject.ji;9;CPRange.ji;14;CPEnumerator.ji;18;CPSortDescriptor.ji;13;CPException.jc;24427;
{var the_class = objj_allocateClassPair(CPEnumerator, "_CPArrayEnumerator"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_array"), new objj_ivar("_index")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithArray:"), function $_CPArrayEnumerator__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPEnumerator") }, "init");
    if (self)
    {
        _array = anArray;
        _index = -1;
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("nextObject"), function $_CPArrayEnumerator__nextObject(self, _cmd)
{ with(self)
{
    if (++_index >= objj_msgSend(_array, "count"))
        return nil;
    return _array[_index];
}
});
class_addMethods(the_class, instance_methods);
}
{var the_class = objj_allocateClassPair(CPEnumerator, "_CPReverseArrayEnumerator"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_array"), new objj_ivar("_index")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithArray:"), function $_CPReverseArrayEnumerator__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPEnumerator") }, "init");
    if (self)
    {
        _array = anArray;
        _index = objj_msgSend(_array, "count");
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("nextObject"), function $_CPReverseArrayEnumerator__nextObject(self, _cmd)
{ with(self)
{
    if (--_index < 0)
        return nil;
    return _array[_index];
}
});
class_addMethods(the_class, instance_methods);
}
{var the_class = objj_allocateClassPair(CPObject, "CPArray"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("alloc"), function $CPArray__alloc(self, _cmd)
{ with(self)
{
    return [];
}
});
class_methods[1] = new objj_method(sel_registerName("array"), function $CPArray__array(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
});
class_methods[2] = new objj_method(sel_registerName("arrayWithArray:"), function $CPArray__arrayWithArray_(self, _cmd, anArray)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithArray:", anArray);
}
});
class_methods[3] = new objj_method(sel_registerName("arrayWithObject:"), function $CPArray__arrayWithObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:", anObject);
}
});
class_methods[4] = new objj_method(sel_registerName("arrayWithObjects:"), function $CPArray__arrayWithObjects_(self, _cmd, anObject)
{ with(self)
{
    var i = 2,
        array = objj_msgSend(objj_msgSend(self, "alloc"), "init"),
        argument;
    for(; i < arguments.length && (argument = arguments[i]) != nil; ++i)
        array.push(argument);
    return array;
}
});
class_methods[5] = new objj_method(sel_registerName("arrayWithObjects:count:"), function $CPArray__arrayWithObjects_count_(self, _cmd, objects, aCount)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:count:", objects, aCount);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("init"), function $CPArray__init(self, _cmd)
{ with(self)
{
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithArray:"), function $CPArray__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        objj_msgSend(self, "setArray:", anArray);
    return self;
}
});
instance_methods[2] = new objj_method(sel_registerName("initWithArray:copyItems:"), function $CPArray__initWithArray_copyItems_(self, _cmd, anArray, copyItems)
{ with(self)
{
    if (!copyItems)
        return objj_msgSend(self, "initWithArray:", anArray);
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        var index = 0,
            count = objj_msgSend(anArray, "count");
        for(; index < count; ++i)
        {
            if (anArray[i].isa)
                self[i] = objj_msgSend(anArray, "copy");
            else
                self[i] = anArray;
        }
    }
    return self;
}
});
instance_methods[3] = new objj_method(sel_registerName("initWithObjects:"), function $CPArray__initWithObjects_(self, _cmd, anObject)
{ with(self)
{
    var i = 2,
        argument;
    for(; i < arguments.length && (argument = arguments[i]) != nil; ++i)
        push(argument);
    return self;
}
});
instance_methods[4] = new objj_method(sel_registerName("initWithObjects:count:"), function $CPArray__initWithObjects_count_(self, _cmd, objects, aCount)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        var index = 0;
        for(; index < aCount; ++index)
            push(objects[index]);
    }
    return self;
}
});
instance_methods[5] = new objj_method(sel_registerName("hash"), function $CPArray__hash(self, _cmd)
{ with(self)
{
    if (self.__address == nil)
        self.__address = _objj_generateObjectHash();
    return self.__address;
}
});
instance_methods[6] = new objj_method(sel_registerName("containsObject:"), function $CPArray__containsObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(self, "indexOfObject:", anObject) != CPNotFound;
}
});
instance_methods[7] = new objj_method(sel_registerName("count"), function $CPArray__count(self, _cmd)
{ with(self)
{
    return length;
}
});
instance_methods[8] = new objj_method(sel_registerName("indexOfObject:"), function $CPArray__indexOfObject_(self, _cmd, anObject)
{ with(self)
{
    if (anObject === nil)
        return CPNotFound;
    var i = 0,
        count = length;
    if (anObject.isa)
    {
        for(; i < count; ++i)
            if(objj_msgSend(self[i], "isEqual:", anObject))
                return i;
    }
    else if (self.indexOf)
        return indexOf(anObject);
    else
        for(; i < count; ++i)
            if(self[i] == anObject)
                return i;
    return CPNotFound;
}
});
instance_methods[9] = new objj_method(sel_registerName("indexOfObject:inRange:"), function $CPArray__indexOfObject_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    if (anObject === nil)
        return CPNotFound;
    var i = aRange.location,
        count = MIN(CPMaxRange(aRange), length);
    if (anObject.isa)
    {
        for(; i < count; ++i)
            if(objj_msgSend(self[i], "isEqual:", anObject))
                return i;
    }
    else
        for(; i < count; ++i)
            if(self[i] == anObject)
                return i;
    return CPNotFound;
}
});
instance_methods[10] = new objj_method(sel_registerName("indexOfObjectIdenticalTo:"), function $CPArray__indexOfObjectIdenticalTo_(self, _cmd, anObject)
{ with(self)
{
    if (anObject === nil)
        return CPNotFound;
    if (self.indexOf)
        return indexOf(anObject);
    else
    {
        var index = 0,
            count = length;
        for(; index < count; ++index)
            if(self[index] == anObject)
                return index;
    }
    return CPNotFound;
}
});
instance_methods[11] = new objj_method(sel_registerName("indexOfObjectIdenticalTo:inRange:"), function $CPArray__indexOfObjectIdenticalTo_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    if (anObject === nil)
        return CPNotFound;
    if (self.indexOf)
    {
        var index = indexOf(anObject, aRange.location);
        if (CPLocationInRange(index, aRange))
            return index;
    }
    else
    {
        var index = aRange.location,
            count = MIN(CPMaxRange(aRange), length);
        for(; index < count; ++index)
            if(self[index] == anObject)
                return index;
    }
    return CPNotFound;
}
});
instance_methods[12] = new objj_method(sel_registerName("lastObject"), function $CPArray__lastObject(self, _cmd)
{ with(self)
{
    var count = objj_msgSend(self, "count");
    if (!count) return nil;
    return self[count-1];
}
});
instance_methods[13] = new objj_method(sel_registerName("objectAtIndex:"), function $CPArray__objectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return self[anIndex];
}
});
instance_methods[14] = new objj_method(sel_registerName("objectsAtIndexes:"), function $CPArray__objectsAtIndexes_(self, _cmd, indexes)
{ with(self)
{
    var index = objj_msgSend(indexes, "firstIndex"),
        objects = [];
    while(index != CPNotFound)
    {
        objj_msgSend(objects, "addObject:", self[index]);
        index = objj_msgSend(indexes, "indexGreaterThanIndex:", index);
    }
    return objects;
}
});
instance_methods[15] = new objj_method(sel_registerName("objectEnumerator"), function $CPArray__objectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(_CPArrayEnumerator, "alloc"), "initWithArray:", self);
}
});
instance_methods[16] = new objj_method(sel_registerName("reverseObjectEnumerator"), function $CPArray__reverseObjectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(_CPReverseArrayEnumerator, "alloc"), "initWithArray:", self);
}
});
instance_methods[17] = new objj_method(sel_registerName("makeObjectsPerformSelector:"), function $CPArray__makeObjectsPerformSelector_(self, _cmd, aSelector)
{ with(self)
{
    if (!aSelector)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "makeObjectsPerformSelector: 'aSelector' can't be nil");
    var index = 0,
        count = length;
    for(; index < count; ++index)
        objj_msgSend(self[index], aSelector);
}
});
instance_methods[18] = new objj_method(sel_registerName("makeObjectsPerformSelector:withObject:"), function $CPArray__makeObjectsPerformSelector_withObject_(self, _cmd, aSelector, anObject)
{ with(self)
{
    if (!aSelector)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "makeObjectsPerformSelector:withObject 'aSelector' can't be nil");
    var index = 0,
        count = length;
    for(; index < count; ++index)
        objj_msgSend(self[index], aSelector, anObject);
}
});
instance_methods[19] = new objj_method(sel_registerName("firstObjectCommonWithArray:"), function $CPArray__firstObjectCommonWithArray_(self, _cmd, anArray)
{ with(self)
{
    if (!objj_msgSend(anArray, "count") || !objj_msgSend(self, "count"))
        return nil;
    var i = 0,
        count = objj_msgSend(self, "count");
    for(; i < count; ++i)
        if(objj_msgSend(anArray, "containsObject:", self[i]))
            return self[i];
    return nil;
}
});
instance_methods[20] = new objj_method(sel_registerName("isEqualToArray:"), function $CPArray__isEqualToArray_(self, _cmd, anArray)
{ with(self)
{
    if(length != anArray.length)
        return NO;
    var index = 0,
        count = objj_msgSend(self, "count");
    for(; index < count; ++index)
        if(!self[index] || !anArray[index] || !objj_msgSend(self[index], "isEqual:", anArray[index]))
            return NO;
    return YES;
}
});
instance_methods[21] = new objj_method(sel_registerName("arrayByAddingObject:"), function $CPArray__arrayByAddingObject_(self, _cmd, anObject)
{ with(self)
{
    if (!anObject)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "arrayByAddingObject: object can't be nil");
    var array = objj_msgSend(self, "copy");
    array.push(anObject);
    return array;
}
});
instance_methods[22] = new objj_method(sel_registerName("arrayByAddingObjectsFromArray:"), function $CPArray__arrayByAddingObjectsFromArray_(self, _cmd, anArray)
{ with(self)
{
    return slice(0).concat(anArray);
}
});
instance_methods[23] = new objj_method(sel_registerName("subarrayWithRange:"), function $CPArray__subarrayWithRange_(self, _cmd, aRange)
{ with(self)
{
    if (aRange.location < 0 || (aRange.location + CPMaxRange(aRange)) > length)
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "subarrayWithRange: aRange out of bounds");
    return slice(aRange.location, maxRange);
}
});
instance_methods[24] = new objj_method(sel_registerName("sortedArrayUsingDescriptors:"), function $CPArray__sortedArrayUsingDescriptors_(self, _cmd, descriptors)
{ with(self)
{
    var sorted = objj_msgSend(self, "copy");
    objj_msgSend(sorted, "sortUsingDescriptors:", descriptors);
    return sorted;
}
});
instance_methods[25] = new objj_method(sel_registerName("sortedArrayUsingFunction:context:"), function $CPArray__sortedArrayUsingFunction_context_(self, _cmd, aFunction, aContext)
{ with(self)
{
    var sorted = objj_msgSend(self, "copy");
    objj_msgSend(sorted, "sortUsingFunction:context:", aFunction, aContext);
    return sorted;
}
});
instance_methods[26] = new objj_method(sel_registerName("sortedArrayUsingSelector:"), function $CPArray__sortedArrayUsingSelector_(self, _cmd, aSelector)
{ with(self)
{
    var sorted = objj_msgSend(self, "copy")
    objj_msgSend(sorted, "sortUsingSelector:", aSelector);
    return sorted;
}
});
instance_methods[27] = new objj_method(sel_registerName("componentsJoinedByString:"), function $CPArray__componentsJoinedByString_(self, _cmd, aString)
{ with(self)
{
    return join(aString);
}
});
instance_methods[28] = new objj_method(sel_registerName("description"), function $CPArray__description(self, _cmd)
{ with(self)
{
    var i = 0,
        count = objj_msgSend(self, "count"),
        description = '(';
    for(; i < count; ++i)
    {
        if (self[i].isa) description += objj_msgSend(self[i], "description");
        else description += self[i];
        if (i != count - 1) description += ", ";
    }
    return description + ')';
}
});
instance_methods[29] = new objj_method(sel_registerName("pathsMatchingExtensions:"), function $CPArray__pathsMatchingExtensions_(self, _cmd, filterTypes)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(self, "count"),
        array = [];
    for(; index < count; ++index)
        if (self[index].isa && objj_msgSend(self[index], "isKindOfClass:", objj_msgSend(CPString, "class")) && objj_msgSend(filterTypes, "containsObject:", objj_msgSend(self[index], "pathExtension")))
            array.push(self[index]);
    return array;
}
});
instance_methods[30] = new objj_method(sel_registerName("setValue:forKey:"), function $CPArray__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    var i = 0,
        count = objj_msgSend(self, "count");
    for(; i < count; ++i)
        objj_msgSend(self[i], "setValue:forKey:", aValue, aKey);
}
});
instance_methods[31] = new objj_method(sel_registerName("valueForKey:"), function $CPArray__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    var i = 0,
        count = objj_msgSend(self, "count"),
        array = [];
    for(; i < count; ++i)
        array.push(objj_msgSend(self[i], "valueForKey:", aKey));
    return array;
}
});
instance_methods[32] = new objj_method(sel_registerName("copy"), function $CPArray__copy(self, _cmd)
{ with(self)
{
    return slice(0);
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPArray\""));
var meta_class = the_class.isa;var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("arrayWithCapacity:"), function $CPArray__arrayWithCapacity_(self, _cmd, aCapacity)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithCapacity:", aCapacity);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithCapacity:"), function $CPArray__initWithCapacity_(self, _cmd, aCapacity)
{ with(self)
{
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("addObject:"), function $CPArray__addObject_(self, _cmd, anObject)
{ with(self)
{
    push(anObject);
}
});
instance_methods[2] = new objj_method(sel_registerName("addObjectsFromArray:"), function $CPArray__addObjectsFromArray_(self, _cmd, anArray)
{ with(self)
{
    splice.apply(self, [length,0].concat(anArray));
}
});
instance_methods[3] = new objj_method(sel_registerName("insertObject:atIndex:"), function $CPArray__insertObject_atIndex_(self, _cmd, anObject, anIndex)
{ with(self)
{
    splice(anIndex, 0, anObject);
}
});
instance_methods[4] = new objj_method(sel_registerName("insertObjects:atIndexes:"), function $CPArray__insertObjects_atIndexes_(self, _cmd, objects, anIndexSet)
{ with(self)
{
    var index = 0,
        position = CPNotFound;
    while ((position = objj_msgSend(indexes, "indexGreaterThanIndex:", position)) != CPNotFound)
        objj_msgSend(self, "insertObject:atindex:", objects[index++], position);
}
});
instance_methods[5] = new objj_method(sel_registerName("replaceObjectAtIndex:withObject:"), function $CPArray__replaceObjectAtIndex_withObject_(self, _cmd, anIndex, anObject)
{ with(self)
{
    self[anIndex] = anObject;
}
});
instance_methods[6] = new objj_method(sel_registerName("replaceObjectsAtIndexes:withObjects:"), function $CPArray__replaceObjectsAtIndexes_withObjects_(self, _cmd, anIndexSet, objects)
{ with(self)
{
    var i = 0,
        index = objj_msgSend(anIndexSet, "firstIndex");
    while(index != CPNotFound)
    {
        objj_msgSend(self, "replaceObjectAtIndex:withObject:", index, objects[i++]);
        index = objj_msgSend(anIndexSet, "indexGreaterThanIndex:", index);
    }
}
});
instance_methods[7] = new objj_method(sel_registerName("replaceObjectsInRange:withObjectsFromArray:range:"), function $CPArray__replaceObjectsInRange_withObjectsFromArray_range_(self, _cmd, aRange, anArray, otherRange)
{ with(self)
{
    if (!otherRange.location && otherRange.length == objj_msgSend(anArray, "count"))
        objj_msgSend(self, "replaceObjectsInRange:withObjectsFromArray:", aRange, anArray);
    else
        splice.apply(self, [aRange.location,aRange.length].concat(objj_msgSend(anArray, "subarrayWithRange:", otherRange)));
}
});
instance_methods[8] = new objj_method(sel_registerName("replaceObjectsInRange:withObjectsFromArray:"), function $CPArray__replaceObjectsInRange_withObjectsFromArray_(self, _cmd, aRange, anArray)
{ with(self)
{
    splice.apply(self, [aRange.location,aRange.length].concat(anArray));
}
});
instance_methods[9] = new objj_method(sel_registerName("setArray:"), function $CPArray__setArray_(self, _cmd, anArray)
{ with(self)
{
    if(self == anArray) return;
    splice.apply(self, [0,length].concat(anArray));
}
});
instance_methods[10] = new objj_method(sel_registerName("removeAllObjects"), function $CPArray__removeAllObjects(self, _cmd)
{ with(self)
{
    splice(0, length);
}
});
instance_methods[11] = new objj_method(sel_registerName("removeLastObject"), function $CPArray__removeLastObject(self, _cmd)
{ with(self)
{
    pop();
}
});
instance_methods[12] = new objj_method(sel_registerName("removeObject:"), function $CPArray__removeObject_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "removeObject:inRange:", anObject, CPMakeRange(0,length));
}
});
instance_methods[13] = new objj_method(sel_registerName("removeObject:inRange:"), function $CPArray__removeObject_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    var index;
    while ((index = objj_msgSend(self, "indexOfObject:inRange:", anObject, aRange)) != CPNotFound)
    {
        objj_msgSend(self, "removeObjectAtIndex:", index);
        aRange = CPIntersectionRange(CPMakeRange(index, length - index), aRange);
    }
}
});
instance_methods[14] = new objj_method(sel_registerName("removeObjectAtIndex:"), function $CPArray__removeObjectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    splice(anIndex, 1);
}
});
instance_methods[15] = new objj_method(sel_registerName("removeObjectsAtIndexes:"), function $CPArray__removeObjectsAtIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    var index = objj_msgSend(anIndexSet, "lastIndex");
    while (index != CPNotFound)
    {
        objj_msgSend(self, "removeObjectAtIndex:", index);
        index = objj_msgSend(anIndexSet, "indexSmallerThanIndex:", index);
    }
}
});
instance_methods[16] = new objj_method(sel_registerName("removeObjectIdenticalTo:"), function $CPArray__removeObjectIdenticalTo_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "removeObjectIdenticalTo:inRange:", anObject, CPMakeRange(0,length));
}
});
instance_methods[17] = new objj_method(sel_registerName("removeObjectIdenticalTo:inRange:"), function $CPArray__removeObjectIdenticalTo_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    var index;
    while ((index = objj_msgSend(self, "indexOfObjectIdenticalTo:inRange:", anObject, aRange)) != CPNotFound)
    {
        objj_msgSend(self, "removeObjectAtIndex:", index);
        aRange = CPIntersectionRange(CPMakeRange(index, length - index), aRange);
    }
}
});
instance_methods[18] = new objj_method(sel_registerName("removeObjectsInArray:"), function $CPArray__removeObjectsInArray_(self, _cmd, anArray)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(anArray, "count");
    for (; index < count; ++index)
        objj_msgSend(self, "removeObject:", anArray[index]);
}
});
instance_methods[19] = new objj_method(sel_registerName("removeObjectsInRange:"), function $CPArray__removeObjectsInRange_(self, _cmd, aRange)
{ with(self)
{
    splice(aRange.location, aRange.length);
}
});
instance_methods[20] = new objj_method(sel_registerName("exchangeObjectAtIndex:withObjectAtIndex:"), function $CPArray__exchangeObjectAtIndex_withObjectAtIndex_(self, _cmd, anIndex, otherIndex)
{ with(self)
{
    var temporary = self[anIndex];
    self[anIndex] = self[otherIndex];
    self[otherIndex] = temporary;
}
});
instance_methods[21] = new objj_method(sel_registerName("sortUsingDescriptors:"), function $CPArray__sortUsingDescriptors_(self, _cmd, descriptors)
{ with(self)
{
    sort(function(lhs, rhs)
    {
        var i = 0,
            count = objj_msgSend(descriptors, "count"),
            result = CPOrderedSame;
        while(i < count)
            if((result = objj_msgSend(descriptors[i++], "compareObject:withObject:", lhs, rhs)) != CPOrderedSame)
                return result;
        return result;
    });
}
});
instance_methods[22] = new objj_method(sel_registerName("sortUsingFunction:context:"), function $CPArray__sortUsingFunction_context_(self, _cmd, aFunction, aContext)
{ with(self)
{
    sort(function(lhs, rhs) { return aFunction(lhs, rhs, aContext); });
}
});
instance_methods[23] = new objj_method(sel_registerName("sortUsingSelector:"), function $CPArray__sortUsingSelector_(self, _cmd, aSelector)
{ with(self)
{
    sort(function(lhs, rhs) { return objj_msgSend(lhs, aSelector, rhs); });
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPArray\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithCoder:"), function $CPArray__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(aCoder, "_decodeArrayOfObjectsForKey:", "CP.objects");
}
});
instance_methods[1] = new objj_method(sel_registerName("encodeWithCoder:"), function $CPArray__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "_encodeArrayOfObjects:forKey:", self, "CP.objects");
}
});
class_addMethods(the_class, instance_methods);
}
{var the_class = objj_allocateClassPair(CPArray, "CPMutableArray"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
}
Array.prototype.isa = CPArray;
objj_msgSend(CPArray, "initialize");

p;10;CPBundle.ji;10;CPObject.ji;14;CPDictionary.jc;2228;
{var the_class = objj_allocateClassPair(CPObject, "CPBundle"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_principalClass")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("alloc"), function $CPBundle__alloc(self, _cmd)
{ with(self)
{
    return new objj_bundle;
}
});
class_methods[1] = new objj_method(sel_registerName("bundleWithPath:"), function $CPBundle__bundleWithPath_(self, _cmd, aPath)
{ with(self)
{
    return objj_getBundleWithPath(aPath);
}
});
class_methods[2] = new objj_method(sel_registerName("bundleForClass:"), function $CPBundle__bundleForClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_bundleForClass(aClass);
}
});
class_methods[3] = new objj_method(sel_registerName("mainBundle"), function $CPBundle__mainBundle(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPBundle, "bundleWithPath:", "Info.plist");
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("classNamed:"), function $CPBundle__classNamed_(self, _cmd, aString)
{ with(self)
{}
});
instance_methods[1] = new objj_method(sel_registerName("bundlePath"), function $CPBundle__bundlePath(self, _cmd)
{ with(self)
{
    return objj_msgSend(path, "stringByDeletingLastPathComponent");
}
});
instance_methods[2] = new objj_method(sel_registerName("principalClass"), function $CPBundle__principalClass(self, _cmd)
{ with(self)
{
    var className = objj_msgSend(objj_msgSend(self, "infoDictionary"), "objectForKey:", "CPPrincipalClass");
    return className ? CPClassFromString(className) : Nil;
}
});
instance_methods[3] = new objj_method(sel_registerName("infoDictionary"), function $CPBundle__infoDictionary(self, _cmd)
{ with(self)
{
    return info;
}
});
instance_methods[4] = new objj_method(sel_registerName("objectForInfoDictionaryKey:"), function $CPBundle__objectForInfoDictionaryKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(info, "objectForKey:", aKey);
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
objj_bundle.prototype.isa = CPBundle;

p;9;CPCoder.ji;10;CPObject.ji;13;CPException.jc;3019;
{var the_class = objj_allocateClassPair(CPObject, "CPCoder"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("allowsKeyedCoding"), function $CPCoder__allowsKeyedCoding(self, _cmd)
{ with(self)
{
   return NO;
}
});
instance_methods[1] = new objj_method(sel_registerName("encodeValueOfObjCType:at:"), function $CPCoder__encodeValueOfObjCType_at_(self, _cmd, aType, anObject)
{ with(self)
{
   CPInvalidAbstractInvocation();
}
});
instance_methods[2] = new objj_method(sel_registerName("encodeDataObject:"), function $CPCoder__encodeDataObject_(self, _cmd, aData)
{ with(self)
{
   CPInvalidAbstractInvocation();
}
});
instance_methods[3] = new objj_method(sel_registerName("encodeObject:"), function $CPCoder__encodeObject_(self, _cmd, anObject)
{ with(self)
{}
});
instance_methods[4] = new objj_method(sel_registerName("encodePoint:"), function $CPCoder__encodePoint_(self, _cmd, aPoint)
{ with(self)
{
    objj_msgSend(self, "encodeNumber:", aPoint.x);
    objj_msgSend(self, "encodeNumber:", aPoint.y);
}
});
instance_methods[5] = new objj_method(sel_registerName("encodeRect:"), function $CPCoder__encodeRect_(self, _cmd, aRect)
{ with(self)
{
    objj_msgSend(self, "encodePoint:", aRect.origin);
    objj_msgSend(self, "encodeSize:", aRect.size);
}
});
instance_methods[6] = new objj_method(sel_registerName("encodeSize:"), function $CPCoder__encodeSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSend(self, "encodeNumber:", aSize.width);
    objj_msgSend(self, "encodeNumber:", aSize.height);
}
});
instance_methods[7] = new objj_method(sel_registerName("encodePropertyList:"), function $CPCoder__encodePropertyList_(self, _cmd, aPropertyList)
{ with(self)
{}
});
instance_methods[8] = new objj_method(sel_registerName("encodeRootObject:"), function $CPCoder__encodeRootObject_(self, _cmd, anObject)
{ with(self)
{
   objj_msgSend(self, "encodeObject:", anObject);
}
});
instance_methods[9] = new objj_method(sel_registerName("encodeBycopyObject:"), function $CPCoder__encodeBycopyObject_(self, _cmd, anObject)
{ with(self)
{
   objj_msgSend(self, "encodeObject:", object);
}
});
instance_methods[10] = new objj_method(sel_registerName("encodeConditionalObject:"), function $CPCoder__encodeConditionalObject_(self, _cmd, anObject)
{ with(self)
{
   objj_msgSend(self, "encodeObject:", object);
}
});
class_addMethods(the_class, instance_methods);
}
{
var the_class = objj_getClass("CPObject")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPObject\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("awakeAfterUsingCoder:"), function $CPObject__awakeAfterUsingCoder_(self, _cmd, aDecoder)
{ with(self)
{
    return self;
}
});
class_addMethods(the_class, instance_methods);
}

p;8;CPData.ji;10;CPObject.ji;10;CPString.jc;3337;
{var the_class = objj_allocateClassPair(CPObject, "CPData"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_plistObject")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("alloc"), function $CPData__alloc(self, _cmd)
{ with(self)
{
    return new objj_data();
}
});
class_methods[1] = new objj_method(sel_registerName("data"), function $CPData__data(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithPlistObject:", nil);
}
});
class_methods[2] = new objj_method(sel_registerName("dataWithString:"), function $CPData__dataWithString_(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:", aString);
}
});
class_methods[3] = new objj_method(sel_registerName("dataWithPlistObject:"), function $CPData__dataWithPlistObject_(self, _cmd, aPlistObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithPlistObject:", aPlistObject);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithString:"), function $CPData__initWithString_(self, _cmd, aString)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        string = aString;
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithPlistObject:"), function $CPData__initWithPlistObject_(self, _cmd, aPlistObject)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        _plistObject = aPlistObject;
    return self;
}
});
instance_methods[2] = new objj_method(sel_registerName("length"), function $CPData__length(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "string"), "length");
}
});
instance_methods[3] = new objj_method(sel_registerName("description"), function $CPData__description(self, _cmd)
{ with(self)
{
    return string;
}
});
instance_methods[4] = new objj_method(sel_registerName("string"), function $CPData__string(self, _cmd)
{ with(self)
{
    if (!string && _plistObject)
        string = objj_msgSend(objj_msgSend(CPPropertyListSerialization, "dataFromPropertyList:format:errorDescription:", _plistObject, CPPropertyList280NorthFormat_v1_0, NULL), "string");
    return string;
}
});
instance_methods[5] = new objj_method(sel_registerName("setString:"), function $CPData__setString_(self, _cmd, aString)
{ with(self)
{
    string = aString;
    _plistObject = nil;
}
});
instance_methods[6] = new objj_method(sel_registerName("plistObject"), function $CPData__plistObject(self, _cmd)
{ with(self)
{
    if (string && !_plistObject)
        _plistObject = objj_msgSend(CPPropertyListSerialization, "propertyListFromData:format:errorDescription:", self, 0, NULL);
    return _plistObject;
}
});
instance_methods[7] = new objj_method(sel_registerName("setPlistObject:"), function $CPData__setPlistObject_(self, _cmd, aPlistObject)
{ with(self)
{
    string = nil;
    _plistObject = aPlistObject;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
objj_data.prototype.isa = CPData;

p;8;CPDate.ji;10;CPObject.ji;10;CPString.jc;4928;
var CPDateReferenceDate = new Date(Date.UTC(2001,1,1,0,0,0,0));
{var the_class = objj_allocateClassPair(CPObject, "CPDate"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("alloc"), function $CPDate__alloc(self, _cmd)
{ with(self)
{
    return new Date;
}
});
class_methods[1] = new objj_method(sel_registerName("date"), function $CPDate__date(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
});
class_methods[2] = new objj_method(sel_registerName("dateWithTimeIntervalSinceNow:"), function $CPDate__dateWithTimeIntervalSinceNow_(self, _cmd, seconds)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithTimeIntervalSinceNow:", seconds);
}
});
class_methods[3] = new objj_method(sel_registerName("dateWithTimeIntervalSinceReferenceDate:"), function $CPDate__dateWithTimeIntervalSinceReferenceDate_(self, _cmd, seconds)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithTimeIntervalSinceReferenceDate:", seconds);
}
});
class_methods[4] = new objj_method(sel_registerName("distantPast"), function $CPDate__distantPast(self, _cmd)
{ with(self)
{
    return new Date(-10000,1,1,0,0,0,0);
}
});
class_methods[5] = new objj_method(sel_registerName("distantFuture"), function $CPDate__distantFuture(self, _cmd)
{ with(self)
{
    return new Date(10000,1,1,0,0,0,0);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithTimeIntervalSinceNow:"), function $CPDate__initWithTimeIntervalSinceNow_(self, _cmd, seconds)
{ with(self)
{
    self = new Date((new Date()).getTime() + seconds * 1000);
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithTimeIntervalSinceReferenceDate:"), function $CPDate__initWithTimeIntervalSinceReferenceDate_(self, _cmd, seconds)
{ with(self)
{
    self = objj_msgSend(self, "initWithTimeInterval:sinceDate:", seconds, CPDateReferenceDate);
    return self;
}
});
instance_methods[2] = new objj_method(sel_registerName("initWithTimeInterval:sinceDate:"), function $CPDate__initWithTimeInterval_sinceDate_(self, _cmd, seconds, refDate)
{ with(self)
{
    self = new Date(refDate.getTime() + seconds * 1000);
    return self;
}
});
instance_methods[3] = new objj_method(sel_registerName("initWithString:"), function $CPDate__initWithString_(self, _cmd, description)
{ with(self)
{
    self = new Date(description);
    return self;
}
});
instance_methods[4] = new objj_method(sel_registerName("timeIntervalSinceDate:"), function $CPDate__timeIntervalSinceDate_(self, _cmd, anotherDate)
{ with(self)
{
    return (self.getTime() - anotherDate.getTime()) / 1000.0;
}
});
instance_methods[5] = new objj_method(sel_registerName("timeIntervalSinceNow"), function $CPDate__timeIntervalSinceNow(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "timeIntervalSinceDate:", objj_msgSend(CPDate, "date"));
}
});
instance_methods[6] = new objj_method(sel_registerName("timeIntervalSince1970"), function $CPDate__timeIntervalSince1970(self, _cmd)
{ with(self)
{
    return self.getTime() / 1000.0;
}
});
instance_methods[7] = new objj_method(sel_registerName("timeIntervalSinceReferenceDate"), function $CPDate__timeIntervalSinceReferenceDate(self, _cmd)
{ with(self)
{
    return (self.getTime() - CPDateReferenceDate.getTime()) / 1000.0;
}
});
class_methods[6] = new objj_method(sel_registerName("timeIntervalSinceReferenceDate"), function $CPDate__timeIntervalSinceReferenceDate(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "date"), "timeIntervalSinceReferenceDate");
}
});
instance_methods[8] = new objj_method(sel_registerName("isEqualToDate:"), function $CPDate__isEqualToDate_(self, _cmd, anotherDate)
{ with(self)
{
    return !(self < anotherDate || self > anotherDate);
}
});
instance_methods[9] = new objj_method(sel_registerName("compare:"), function $CPDate__compare_(self, _cmd, anotherDate)
{ with(self)
{
    return (self > anotherDate) ? CPOrderedDescending : ((self < anotherDate) ? CPOrderedAscending : CPOrderedSame);
}
});
instance_methods[10] = new objj_method(sel_registerName("earlierDate:"), function $CPDate__earlierDate_(self, _cmd, anotherDate)
{ with(self)
{
    return (self < anotherDate) ? self : anotherDate;
}
});
instance_methods[11] = new objj_method(sel_registerName("laterDate:"), function $CPDate__laterDate_(self, _cmd, anotherDate)
{ with(self)
{
    return (self > anotherDate) ? self : anotherDate;
}
});
instance_methods[12] = new objj_method(sel_registerName("description"), function $CPDate__description(self, _cmd)
{ with(self)
{
    return self.toString();
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
Date.prototype.isa = CPDate;

p;14;CPDictionary.ji;10;CPObject.ji;14;CPEnumerator.ji;13;CPException.jc;6886;
{var the_class = objj_allocateClassPair(CPEnumerator, "_CPDictionaryValueEnumerator"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_keyEnumerator"), new objj_ivar("_dictionary")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithDictionary:"), function $_CPDictionaryValueEnumerator__initWithDictionary_(self, _cmd, aDictionary)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPEnumerator") }, "init");
    if (self)
    {
        _keyEnumerator = objj_msgSend(aDictionary, "keyEnumerator");
        _dictionary = aDictionary;
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("nextObject"), function $_CPDictionaryValueEnumerator__nextObject(self, _cmd)
{ with(self)
{
    var key = objj_msgSend(_keyEnumerator, "nextObject");
    if (!key)
        return nil;
    return objj_msgSend(_dictionary, "objectForKey:", key);
}
});
class_addMethods(the_class, instance_methods);
}
{var the_class = objj_allocateClassPair(CPObject, "CPDictionary"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("alloc"), function $CPDictionary__alloc(self, _cmd)
{ with(self)
{
    return new objj_dictionary();
}
});
class_methods[1] = new objj_method(sel_registerName("dictionary"), function $CPDictionary__dictionary(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
});
class_methods[2] = new objj_method(sel_registerName("dictionaryWithDictionary:"), function $CPDictionary__dictionaryWithDictionary_(self, _cmd, aDictionary)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithDictionary:", aDictionary);
}
});
class_methods[3] = new objj_method(sel_registerName("dictionaryWithObject:forKey:"), function $CPDictionary__dictionaryWithObject_forKey_(self, _cmd, anObject, aKey)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:forKeys:", [anObject], [aKey]);
}
});
class_methods[4] = new objj_method(sel_registerName("dictionaryWithObjects:forKeys:"), function $CPDictionary__dictionaryWithObjects_forKeys_(self, _cmd, objects, keys)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:forKeys:", objects, keys);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithDictionary:"), function $CPDictionary__initWithDictionary_(self, _cmd, aDictionary)
{ with(self)
{
    var key = "",
        dictionary = objj_msgSend(objj_msgSend(CPDictionary, "alloc"), "init");
    for (key in aDictionary._buckets)
        objj_msgSend(dictionary, "setObject:forKey:", objj_msgSend(aDictionary, "objectForKey:", key), key);
    return dictionary;
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithObjects:forKeys:"), function $CPDictionary__initWithObjects_forKeys_(self, _cmd, objects, keyArray)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (objj_msgSend(objects, "count") != objj_msgSend(keyArray, "count"))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Counts are different.("+objj_msgSend(objects, "count")+"!="+objj_msgSend(keyArray, "count")+")");
    if (self)
    {
        var i = objj_msgSend(keyArray, "count");
        while (i--)
            objj_msgSend(self, "setObject:forKey:", objects[i], keyArray[i]);
    }
    return self;
}
});
instance_methods[2] = new objj_method(sel_registerName("count"), function $CPDictionary__count(self, _cmd)
{ with(self)
{
    return count;
}
});
instance_methods[3] = new objj_method(sel_registerName("allKeys"), function $CPDictionary__allKeys(self, _cmd)
{ with(self)
{
    return _keys;
}
});
instance_methods[4] = new objj_method(sel_registerName("allValues"), function $CPDictionary__allValues(self, _cmd)
{ with(self)
{
    var index = _keys.length,
        values = [];
    while (index--)
        values.push(dictionary_getValue(self, [_keys[index]]));
    return values;
}
});
instance_methods[5] = new objj_method(sel_registerName("keyEnumerator"), function $CPDictionary__keyEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(_keys, "objectEnumerator");
}
});
instance_methods[6] = new objj_method(sel_registerName("objectEnumerator"), function $CPDictionary__objectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(_CPDictionaryValueEnumerator, "alloc"), "initWithDictionary:", self);
}
});
instance_methods[7] = new objj_method(sel_registerName("objectForKey:"), function $CPDictionary__objectForKey_(self, _cmd, aKey)
{ with(self)
{
    return _buckets[aKey];
}
});
instance_methods[8] = new objj_method(sel_registerName("removeAllObjects"), function $CPDictionary__removeAllObjects(self, _cmd)
{ with(self)
{
    _keys = [];
    count = 0;
    _buckets = {};
}
});
instance_methods[9] = new objj_method(sel_registerName("removeObjectForKey:"), function $CPDictionary__removeObjectForKey_(self, _cmd, aKey)
{ with(self)
{
    dictionary_removeValue(self, aKey);
}
});
instance_methods[10] = new objj_method(sel_registerName("setObject:forKey:"), function $CPDictionary__setObject_forKey_(self, _cmd, anObject, aKey)
{ with(self)
{
    dictionary_setValue(self, aKey, anObject);
}
});
instance_methods[11] = new objj_method(sel_registerName("description"), function $CPDictionary__description(self, _cmd)
{ with(self)
{
    var description = "CPDictionary {\n";
    var i = _keys.length;
    while (i--)
        description += _keys[i] +":"+objj_msgSend(_buckets[_keys[i]], "description")+"\n";
    description += "}";
    return description;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
{
var the_class = objj_getClass("CPDictionary")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPDictionary\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithCoder:"), function $CPDictionary__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(aCoder, "_decodeDictionaryOfObjectsForKey:", "CP.objects");
}
});
instance_methods[1] = new objj_method(sel_registerName("encodeWithCoder:"), function $CPDictionary__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "_encodeDictionaryOfObjects:forKey:", self, "CP.objects");
}
});
class_addMethods(the_class, instance_methods);
}
objj_dictionary.prototype.isa = CPDictionary;

p;14;CPEnumerator.ji;10;CPObject.jc;599;
{var the_class = objj_allocateClassPair(CPObject, "CPEnumerator"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("nextObject"), function $CPEnumerator__nextObject(self, _cmd)
{ with(self)
{
    return nil;
}
});
instance_methods[1] = new objj_method(sel_registerName("allObjects"), function $CPEnumerator__allObjects(self, _cmd)
{ with(self)
{
    return [];
}
});
class_addMethods(the_class, instance_methods);
}

p;13;CPException.ji;9;CPCoder.ji;10;CPObject.ji;10;CPString.jc;4671;
CPInvalidArgumentException = "CPInvalidArgumentException";
CPUnsupportedMethodException = "CPUnsupportedMethodException";
CPRangeException = "CPRangeException";
CPInternalInconsistencyException = "CPInternalInconsistencyException";
{var the_class = objj_allocateClassPair(CPObject, "CPException"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("alloc"), function $CPException__alloc(self, _cmd)
{ with(self)
{
    return new objj_exception();
}
});
class_methods[1] = new objj_method(sel_registerName("raise:reason:"), function $CPException__raise_reason_(self, _cmd, aName, aReason)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "exceptionWithName:reason:userInfo:", aName, aReason, nil), "raise");
}
});
class_methods[2] = new objj_method(sel_registerName("exceptionWithName:reason:userInfo:"), function $CPException__exceptionWithName_reason_userInfo_(self, _cmd, aName, aReason, aUserInfo)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithName:reason:userInfo:", aName, aReason, aUserInfo);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithName:reason:userInfo:"), function $CPException__initWithName_reason_userInfo_(self, _cmd, aName, aReason, aUserInfo)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        name = aName;
        reason = aReason;
        userInfo = aUserInfo;
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("name"), function $CPException__name(self, _cmd)
{ with(self)
{
    return name;
}
});
instance_methods[2] = new objj_method(sel_registerName("reason"), function $CPException__reason(self, _cmd)
{ with(self)
{
    return reason;
}
});
instance_methods[3] = new objj_method(sel_registerName("userInfo"), function $CPException__userInfo(self, _cmd)
{ with(self)
{
    return userInfo;
}
});
instance_methods[4] = new objj_method(sel_registerName("description"), function $CPException__description(self, _cmd)
{ with(self)
{
    return reason;
}
});
instance_methods[5] = new objj_method(sel_registerName("raise"), function $CPException__raise(self, _cmd)
{ with(self)
{
    objj_exception_throw(self);
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
{
var the_class = objj_getClass("CPException")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPException\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("copy"), function $CPException__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "exceptionWithName:reason:userInfo:", name, reason, userInfo);
}
});
class_addMethods(the_class, instance_methods);
}
{
var the_class = objj_getClass("CPException")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPException\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithCoder:"), function $CPException__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        name = objj_msgSend(aCoder, "decodeObjectForKey:", CPExceptionNameKey);
        reason = objj_msgSend(aCoder, "decodeObjectForKey:", CPExceptionReasonKey);
        userInfo = objj_msgSend(aCoer, "decodeObjectForKey:", CPExceptionUserInfoKey);
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("encodeWithCoder:"), function $CPException__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", name, CPExceptionNameKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", reason, CPExceptionReasonKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", userInfo, CPExceptionUserInfoKey);
}
});
class_addMethods(the_class, instance_methods);
}
objj_exception.prototype.isa = CPException;
objj_msgSend(CPException, "initialize");
_CPRaiseInvalidAbstractInvocation= function(anObject, aSelector)
{
    objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "*** -"+sel_getName(aSelector)+" cannot be sent to an abstract object of class "+objj_msgSend(anObject, "className")+": Create a concrete instance!");
}

p;12;CPIndexSet.ji;9;CPRange.ji;10;CPObject.jc;19546;
{var the_class = objj_allocateClassPair(CPObject, "CPIndexSet"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_count"), new objj_ivar("_cachedRangeIndex"), new objj_ivar("_ranges")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("indexSet"), function $CPIndexSet__indexSet(self, _cmd)
{ with(self)
{
 return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
});
class_methods[1] = new objj_method(sel_registerName("indexSetWithIndex:"), function $CPIndexSet__indexSetWithIndex_(self, _cmd, anIndex)
{ with(self)
{
 return objj_msgSend(objj_msgSend(self, "alloc"), "initWithIndex:", anIndex);
}
});
class_methods[2] = new objj_method(sel_registerName("indexSetWithIndexesInRange:"), function $CPIndexSet__indexSetWithIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
 return objj_msgSend(objj_msgSend(self, "alloc"), "initWithIndexesInRange:", aRange);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("init"), function $CPIndexSet__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _count = 0;
        _ranges = [];
        _cachedRangeIndex = 0;
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithIndex:"), function $CPIndexSet__initWithIndex_(self, _cmd, anIndex)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _count = 1;
        _ranges = objj_msgSend(CPArray, "arrayWithObject:", CPMakeRange(anIndex,1));
        _cachedRangeIndex = 0;
    }
    return self;
}
});
instance_methods[2] = new objj_method(sel_registerName("initWithIndexesInRange:"), function $CPIndexSet__initWithIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _count = aRange.length;
        _ranges = objj_msgSend(CPArray, "arrayWithObject:", aRange);
        _cachedRangeIndex = 0;
    }
    return self;
}
});
instance_methods[3] = new objj_method(sel_registerName("initWithIndexSet:"), function $CPIndexSet__initWithIndexSet_(self, _cmd, anIndexSet)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _count = objj_msgSend(anIndexSet, "count");
        _ranges = [];
        _cachedRangeIndex = 0;
        var index = 0,
            count = anIndexSet._ranges.length;
        for (; index < count; ++index)
            _ranges.push(CPCopyRange(anIndexSet._ranges[index]));
    }
    return self;
}
});
instance_methods[4] = new objj_method(sel_registerName("isEqualToIndexSet:"), function $CPIndexSet__isEqualToIndexSet_(self, _cmd, anIndexSet)
{ with(self)
{
 if (self == anIndexSet)
    return YES;
    var i = 0,
        count = _ranges.length;
        otherRanges = anIndexSet._ranges;
 if (count != otherRanges.length || _count != objj_msgSend(anIndexSet, "count"))
    return NO;
 for (; i < count; ++i)
  if (!CPEqualRanges(_ranges[i], otherRanges[i]))
   return NO;
 return YES;
}
});
instance_methods[5] = new objj_method(sel_registerName("containsIndex:"), function $CPIndexSet__containsIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(self, "containsIndexesInRange:", CPMakeRange(anIndex,1));
}
});
instance_methods[6] = new objj_method(sel_registerName("containsIndexesInRange:"), function $CPIndexSet__containsIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
    if(!_count)
        return NO;
    var i = SOERangeIndex(self, aRange.location),
     lower = aRange.location,
     upper = CPMaxRange(aRange),
     count = _ranges.length;
    for(;i < count && _ranges[i].location < upper; ++i)
     if (_ranges[i].location <= lower && CPMaxRange(_ranges[i]) >= upper)
     {
            _cachedRangeIndex = i;
            return YES;
        }
    _cachedRangeIndex = i;
    return NO;
}
});
instance_methods[7] = new objj_method(sel_registerName("containsIndexes:"), function $CPIndexSet__containsIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    if(!objj_msgSend(anIndexSet, "count"))
        return YES;
    if(!_count)
        return NO;
    var i = 0,
        count = _ranges.length;
    for(; i < count; ++i)
        if (!objj_msgSend(anIndexSet, "containsIndexesInRange:", _ranges[i]))
            return NO;
    return YES;
}
});
instance_methods[8] = new objj_method(sel_registerName("intersectsIndexesInRange:"), function $CPIndexSet__intersectsIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
    if(!_count)
        return NO;
    var i = SOERangeIndex(self, aRange.location),
        count = _ranges.length,
        upper = CPMaxRange(aRange);
    for (; i < count && _ranges[i].location < upper; ++i)
        if(CPIntersectionRange(aRange, _ranges[i]).length)
            return YES;
    return NO;
}
});
instance_methods[9] = new objj_method(sel_registerName("count"), function $CPIndexSet__count(self, _cmd)
{ with(self)
{
    return _count;
}
});
instance_methods[10] = new objj_method(sel_registerName("firstIndex"), function $CPIndexSet__firstIndex(self, _cmd)
{ with(self)
{
    return _count ? _ranges[0].location : CPNotFound;
}
});
instance_methods[11] = new objj_method(sel_registerName("lastIndex"), function $CPIndexSet__lastIndex(self, _cmd)
{ with(self)
{
    return _count ? CPMaxRange(_ranges[_ranges.length-1]) - 1 : CPNotFound;
}
});
instance_methods[12] = new objj_method(sel_registerName("indexGreaterThanIndex:"), function $CPIndexSet__indexGreaterThanIndex_(self, _cmd, anIndex)
{ with(self)
{
    if(!_count)
        return CPNotFound;
    var i = SOERangeIndex(self, anIndex++),
        count = _ranges.length;
    for(; i < count && anIndex >= CPMaxRange(_ranges[i]); ++i) ;
    if (i == count)
        return CPNotFound;
    _cachedRangeIndex = i;
    if (anIndex < _ranges[i].location)
        return _ranges[i].location;
    return anIndex;
}
});
instance_methods[13] = new objj_method(sel_registerName("indexLessThanIndex:"), function $CPIndexSet__indexLessThanIndex_(self, _cmd, anIndex)
{ with(self)
{
    if (!_count)
        return CPNotFound;
    var i = GOERangeIndex(self, anIndex--);
    for (; i >= 0 && anIndex < _ranges[i].location; --i) ;
    if(i < 0)
        return CPNotFound;
    _cachedRangeIndex = i;
   if (CPLocationInRange(anIndex, _ranges[i]))
        return anIndex;
    if (CPMaxRange(_ranges[i]) - 1 < anIndex)
        return CPMaxRange(_ranges[i]) - 1;
    return CPNotFound;
}
});
instance_methods[14] = new objj_method(sel_registerName("indexGreaterThanOrEqualToIndex:"), function $CPIndexSet__indexGreaterThanOrEqualToIndex_(self, _cmd, anIndex)
{ with(self)
{
 return objj_msgSend(self, "indexGreaterThanIndex:", anIndex-1);
}
});
instance_methods[15] = new objj_method(sel_registerName("indexLessThanOrEqualToIndex:"), function $CPIndexSet__indexLessThanOrEqualToIndex_(self, _cmd, anIndex)
{ with(self)
{
 return objj_msgSend(self, "indexLessThanIndex:", anIndex+1);
}
});
instance_methods[16] = new objj_method(sel_registerName("getIndexes:maxCount:inIndexRange:"), function $CPIndexSet__getIndexes_maxCount_inIndexRange_(self, _cmd, anArray, aMaxCount, aRangePointer)
{ with(self)
{
    if (!_count || aMaxCount <= 0 || aRangePointer && !aRangePointer.length)
        return 0;
    var i = SOERangeIndex(self, aRangePointer? aRangePointer.location : 0),
        total = 0,
        count = _ranges.length;
    for (; i < count; ++i)
    {
        var intersection = aRangePointer ? CPIntersectionRange(_ranges[i], aRangePointer) : _ranges[i],
            index = intersection.location,
            maximum = CPMaxRange(intersection);
        for (; index < maximum; ++index)
        {
            anArray[total++] = index;
            if (total == aMaxCount)
            {
                if (aRangePointer)
                {
                    var upper = CPMaxRange(aRangePointer);
                    aRangePointer.location = index + 1;
                    aRangePointer.length = upper - index - 1;
                }
                return aMaxCount;
            }
        }
    }
    if (aRangePointer)
    {
        aRangePointer.location = CPNotFound;
        aRangePointer.length = 0;
    }
    return total;
}
});
instance_methods[17] = new objj_method(sel_registerName("description"), function $CPIndexSet__description(self, _cmd)
{ with(self)
{
    var desc = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "description") + " ";
 if (_count)
 {
  desc += "[number of indexes: " + _count + " (in " + _ranges.length + " ranges), indexes: (";
  for (i = 0; i < _ranges.length; i++)
  {
   desc += _ranges[i].location;
   if (_ranges[i].length > 1) desc += "-" + (CPMaxRange(_ranges[i])-1) + ":"+_ranges[i].length+":";
   if (i+1 < _ranges.length) desc += " ";
  }
  desc += ")]";
 }
 else
  desc += "(no indexes)";
 return desc;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
{
var the_class = objj_getClass("CPIndexSet")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPIndexSet\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("addIndex:"), function $CPIndexSet__addIndex_(self, _cmd, anIndex)
{ with(self)
{
    objj_msgSend(self, "addIndexesInRange:", CPMakeRange(anIndex,1));
}
});
instance_methods[1] = new objj_method(sel_registerName("addIndexes:"), function $CPIndexSet__addIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    var i = 0,
        ranges = anIndexSet._ranges,
        count = ranges.length;
    for(; i < count; ++i)
        objj_msgSend(self, "addIndexesInRange:", ranges[i]);
}
});
instance_methods[2] = new objj_method(sel_registerName("addIndexesInRange:"), function $CPIndexSet__addIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
    if (_ranges.length == 0)
    {
        _count = aRange.length;
        return objj_msgSend(_ranges, "addObject:", CPCopyRange(aRange));
    }
    var i = SOERangeIndex(self, aRange.location),
        count = _ranges.length,
        padded = CPMakeRange(aRange.location - 1, aRange.length + 2),
        maximum = CPMaxRange(aRange);
    if (count && CPMaxRange(_ranges[count-1]) < aRange.location)
        objj_msgSend(_ranges, "addObject:", CPCopyRange(aRange));
    else
        for (; i < count; ++i)
        {
            if (maximum < _ranges[i].location)
            {
                _count += aRange.length;
                if (i < _cachedRangeIndex) ++_cachedRangeIndex;
                return objj_msgSend(_ranges, "insertObject:atIndex:", CPCopyRange(aRange), i);
            }
            if (CPIntersectionRange(_ranges[i], padded).length)
            {
                var union = CPUnionRange(_ranges[i], aRange);
                if (union.length == _ranges[i].length)
                    return;
                 ++union.length;
                var j = i;
                for(; j < count; ++j)
                    if(CPIntersectionRange(union, _ranges[j]).length)
                        _count -= _ranges[j].length;
                    else
                        break;
                --union.length;
                _ranges[i] = union;
                if (j - i - 1 > 0)
                {
                    var remove = CPMakeRange(i + 1, j - i - 1);
                    _ranges[i] = CPUnionRange(_ranges[i], _ranges[j-1]);
                    objj_msgSend(_ranges, "removeObjectsInRange:", remove);
                    if (_cachedRangeIndex >= CPMaxRange(remove)) _cachedRangedIndex -= remove.length;
                    else if (CPLocationInRange(_cachedRangeIndex, remove)) _cachedRangeIndex = i;
                }
                _count += _ranges[i].length;
                return;
            }
        }
    _count += aRange.length;
}
});
instance_methods[3] = new objj_method(sel_registerName("removeIndex:"), function $CPIndexSet__removeIndex_(self, _cmd, anIndex)
{ with(self)
{
    objj_msgSend(self, "removeIndexesInRange:", CPMakeRange(anIndex,1));
}
});
instance_methods[4] = new objj_method(sel_registerName("removeIndexes:"), function $CPIndexSet__removeIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    var i = 0,
        ranges = anIndexSet._ranges,
        count = ranges.length;
    for(; i < count; ++i)
        objj_msgSend(self, "removeIndexesInRange:", ranges[i]);
}
});
instance_methods[5] = new objj_method(sel_registerName("removeAllIndexes"), function $CPIndexSet__removeAllIndexes(self, _cmd)
{ with(self)
{
    _ranges = [];
 _count = 0;
    _cachedRangeIndex = 0;
}
});
instance_methods[6] = new objj_method(sel_registerName("removeIndexesInRange:"), function $CPIndexSet__removeIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
    var i = SOERangeIndex(self, aRange.location),
        count = _ranges.length,
        maximum = CPMaxRange(aRange),
        removal = CPMakeRange(CPNotFound, 0);
    for (; i < count; ++i)
    {
        var range = _ranges[i];
        if (maximum < range.location)
            break;
        var intersection = CPIntersectionRange(range, aRange);
        if (!intersection.length)
            continue;
        else if (intersection.length == range.length)
        {
            if (removal.location == CPNotFound)
                removal = CPMakeRange(i, 1);
            else
                ++removal.length;
        }
        else if (intersection.location > range.location && CPMaxRange(intersection) < CPMaxRange(range))
        {
            var insert = CPMakeRange(CPMaxRange(intersection), CPMaxRange(range) - CPMaxRange(intersection));
            range.length = intersection.location - range.location;
            _count -= intersection.length;
            return objj_msgSend(_ranges, "insertObject:atIndex:", insert, i+1);
        }
        else
        {
            range.length -= intersection.length;
            if (intersection.location <= range.location)
                range.location += intersection.length;
        }
        _count -= intersection.length;
    }
    if (removal.length)
        objj_msgSend(_ranges, "removeObjectsInRange:", removal);
}
});
instance_methods[7] = new objj_method(sel_registerName("shiftIndexesStartingAtIndex:by:"), function $CPIndexSet__shiftIndexesStartingAtIndex_by_(self, _cmd, anIndex, aDelta)
{ with(self)
{
 if (!_count || aDelta == 0)
    return;
    var i = _ranges.length - 1,
        shifted = CPMakeRange(CPNotFound, 0);
    for(; i >= 0; --i)
    {
        var range = _ranges[i],
            maximum = CPMaxRange(range);
        if (anIndex > maximum)
            break;
        if (anIndex > range.location && anIndex < maximum)
        {
            shifted = CPMakeRange(anIndex + aDelta, maximum - anIndex);
            range.length = anIndex - range.location;
            if (aDelta > 0)
                objj_msgSend(_ranges, "insertObject:atIndex:", shifted, i+1);
            else if (shifted.location < 0)
            {
                shifted.length = CPMaxRange(shifted);
                shifted.location = 0;
            }
            break;
        }
        if ((range.location += aDelta) < 0)
        {
            range.length = CPMaxRange(range);
            range.location = 0;
        }
    }
    if (aDelta < 0)
    {
        var j = i + 1,
            count = _ranges.length,
            shifts = [];
        for (; j < count; ++j)
            objj_msgSend(shifts, "addObject:", _ranges[j]);
        if ((j = i + 1) < count)
        {
            objj_msgSend(_ranges, "removeObjectsInRange:", CPMakeRange(j,count-j));
            for (j = 0, count = shifts.length; j < count; ++j)
                objj_msgSend(self, "addIndexesInRange:", shifts[j]);
        }
        if (shifted.location != CPNotFound)
            objj_msgSend(self, "addIndexesInRange:", shifted);
    }
}
});
class_addMethods(the_class, instance_methods);
}
var CPIndexSetCountKey = "CPIndexSetCountKey",
    CPIndexSetCachedRangeIndexKey = "CPIndexSetCachedRangeIndexKey",
    CPIndexSetRangeStringsKey = "CPIndexSetRangeStringsKey";
{
var the_class = objj_getClass("CPIndexSet")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPIndexSet\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithCoder:"), function $CPIndexSet__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _count = objj_msgSend(aCoder, "decodeIntForKey:", CPIndexSetCountKey);
        _cachedRangeIndex = objj_msgSend(aCoder, "decodeIntForKey:", CPIndexSetCachedRangeIndexKey);
        _ranges = [];
        var rangeStrings = objj_msgSend(aCoder, "decodeObjectForKey:", CPIndexSetRangeStringsKey),
            index = 0,
            count = rangeStrings.length;
        for (; index < count; ++index)
            _ranges.push(CPRangeFromString(rangeStrings[index]));
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("encodeWithCoder:"), function $CPIndexSet__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeInt:forKey:", _count, CPIndexSetCountKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _cachedRangeIndex, CPIndexSetCachedRangeIndexKey);
    var index = 0,
        count = _ranges.length,
        rangeStrings = [];
    for (; index < count; ++index)
        rangeStrings[index] = CPStringFromRange(_ranges[index]);
    objj_msgSend(aCoder, "encodeObject:forKey:", rangeStrings, CPIndexSetRangeStringsKey);
}
});
class_addMethods(the_class, instance_methods);
}
{
var the_class = objj_getClass("CPIndexSet")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPIndexSet\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("copy"), function $CPIndexSet__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithIndexSet:", self);
}
});
instance_methods[1] = new objj_method(sel_registerName("mutableCopy"), function $CPIndexSet__mutableCopy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithIndexSet:", self);
}
});
class_addMethods(the_class, instance_methods);
}
{var the_class = objj_allocateClassPair(CPIndexSet, "CPMutableIndexSet"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
}
var SOERangeIndex = function(anIndexSet, anIndex)
{
    var ranges = anIndexSet._ranges,
        cachedRangeIndex = 0;
    if(cachedRangeIndex < ranges.length && anIndex >= ranges[cachedRangeIndex].location)
        return cachedRangeIndex;
    return 0;
}
var GOERangeIndex = function(anIndexSet, anIndex)
{
    var ranges = anIndexSet._ranges,
        cachedRangeIndex = anIndexSet._ranges.length;
    if(cachedRangeIndex < ranges.length && anIndex <= ranges[cachedRangeIndex].location)
        return cachedRangeIndex;
    return ranges.length - 1;
}

p;14;CPInvocation.ji;10;CPObject.ji;13;CPException.jc;4283;
{var the_class = objj_allocateClassPair(CPObject, "CPInvocation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_returnValue"), new objj_ivar("_arguments"), new objj_ivar("_methodSignature")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("invocationWithMethodSignature:"), function $CPInvocation__invocationWithMethodSignature_(self, _cmd, aMethodSignature)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithMethodSignature:", aMethodSignature);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithMethodSignature:"), function $CPInvocation__initWithMethodSignature_(self, _cmd, aMethodSignature)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _arguments = [];
        _methodSignature = aMethodSignature;
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("setSelector:"), function $CPInvocation__setSelector_(self, _cmd, aSelector)
{ with(self)
{
    _arguments[1] = aSelector;
}
});
instance_methods[2] = new objj_method(sel_registerName("selector"), function $CPInvocation__selector(self, _cmd)
{ with(self)
{
    return _arguments[1];
}
});
instance_methods[3] = new objj_method(sel_registerName("setTarget:"), function $CPInvocation__setTarget_(self, _cmd, aTarget)
{ with(self)
{
    _arguments[0] = aTarget;
}
});
instance_methods[4] = new objj_method(sel_registerName("target"), function $CPInvocation__target(self, _cmd)
{ with(self)
{
    return _arguments[0];
}
});
instance_methods[5] = new objj_method(sel_registerName("setArgument:atIndex:"), function $CPInvocation__setArgument_atIndex_(self, _cmd, anArgument, anIndex)
{ with(self)
{
    _arguments[anIndex] = anArgument;
}
});
instance_methods[6] = new objj_method(sel_registerName("argumentAtIndex:"), function $CPInvocation__argumentAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return _arguments[anIndex];
}
});
instance_methods[7] = new objj_method(sel_registerName("setReturnValue:"), function $CPInvocation__setReturnValue_(self, _cmd, aReturnValue)
{ with(self)
{
    _returnValue = aReturnValue;
}
});
instance_methods[8] = new objj_method(sel_registerName("returnValue"), function $CPInvocation__returnValue(self, _cmd)
{ with(self)
{
    return _returnValue;
}
});
instance_methods[9] = new objj_method(sel_registerName("invoke"), function $CPInvocation__invoke(self, _cmd)
{ with(self)
{
    _returnValue = objj_msgSend.apply(objj_msgSend, _arguments);
}
});
instance_methods[10] = new objj_method(sel_registerName("invokeWithTarget:"), function $CPInvocation__invokeWithTarget_(self, _cmd, aTarget)
{ with(self)
{
    _arguments[0] = aTarget;
    _returnValue = objj_msgSend.apply(objj_msgSend, _arguments);
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
var CPInvocationArguments = "CPInvocationArguments",
    CPInvocationReturnValue = "CPInvocationReturnValue";
{
var the_class = objj_getClass("CPInvocation")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPInvocation\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithCoder:"), function $CPInvocation__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _returnValue = objj_msgSend(aCoder, "decodeObjectForKey:", CPInvocationReturnValue);
        _arguments = objj_msgSend(aCoder, "decodeObjectForKey:", CPInvocationArguments);
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("encodeWithCoder:"), function $CPInvocation__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _returnValue, CPInvocationReturnValue);
    objj_msgSend(aCoder, "encodeObject:forKey:", _arguments, CPInvocationArguments);
}
});
class_addMethods(the_class, instance_methods);
}

p;19;CPJSONPConnection.jI;21;Foundation/CPObject.jc;3614;
CPJSONPConnectionCallbacks = {};
{var the_class = objj_allocateClassPair(CPObject, "CPJSONPConnection"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_request"), new objj_ivar("_delegate"), new objj_ivar("_callbackParameter"), new objj_ivar("_scriptTag")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("sendRequest:callback:delegate:"), function $CPJSONPConnection__sendRequest_callback_delegate_(self, _cmd, aRequest, callbackParameter, aDelegate)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithRequest:callback:delegate:startImmediately:", aRequest, callbackParameter, aDelegate, YES);;
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithRequest:callback:delegate:"), function $CPJSONPConnection__initWithRequest_callback_delegate_(self, _cmd, aRequest, aString, aDelegate)
{ with(self)
{
    return objj_msgSend(self, "initWithRequest:callback:delegate:startImmediately:", aRequest, aString, aDelegate, NO);
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithRequest:callback:delegate:startImmediately:"), function $CPJSONPConnection__initWithRequest_callback_delegate_startImmediately_(self, _cmd, aRequest, aString, aDelegate, shouldStartImmediately)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    _request = aRequest;
    _delegate = aDelegate;
    _callbackParameter = aString;
    CPJSONPConnectionCallbacks["callback"+objj_msgSend(self, "hash")] = function(data)
    {
        objj_msgSend(_delegate, "connection:didReceiveData:", self, data);
        objj_msgSend(self, "removeScriptTag");
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "performSelectors");
    };
    if(shouldStartImmediately)
        objj_msgSend(self, "start");
    return self;
}
});
instance_methods[2] = new objj_method(sel_registerName("start"), function $CPJSONPConnection__start(self, _cmd)
{ with(self)
{
    try
    {
        var head = document.getElementsByTagName("head").item(0);
        var source = objj_msgSend(_request, "URL");
        source += (source.indexOf('?') < 0) ? "?" : "&";
        source += _callbackParameter+"=CPJSONPConnectionCallbacks.callback"+objj_msgSend(self, "hash");
        _scriptTag = document.createElement("script");
        _scriptTag.setAttribute("type", "text/javascript");
        _scriptTag.setAttribute("charset", "utf-8");
        _scriptTag.setAttribute("src", source);
        head.appendChild(_scriptTag);
    }
    catch (exception)
    {
        objj_msgSend(_delegate, "connection:didFailWithError:", self, exception);
        objj_msgSend(self, "removeScriptTag");
    }
}
});
instance_methods[3] = new objj_method(sel_registerName("removeScriptTag"), function $CPJSONPConnection__removeScriptTag(self, _cmd)
{ with(self)
{
    var head = document.getElementsByTagName("head").item(0);
    if(_scriptTag.parentNode == head)
        head.removeChild(_scriptTag);
    CPJSONPConnectionCallbacks["callback"+objj_msgSend(self, "hash")] = nil;
    delete CPJSONPConnectionCallbacks["callback"+objj_msgSend(self, "hash")];
}
});
instance_methods[4] = new objj_method(sel_registerName("cancel"), function $CPJSONPConnection__cancel(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "removeScriptTag");
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}

p;17;CPKeyedArchiver.ji;8;CPData.ji;9;CPCoder.ji;9;CPArray.ji;10;CPString.ji;10;CPNumber.ji;14;CPDictionary.ji;9;CPValue.jc;17077;
var CPArchiverReplacementClassNames = nil;
var _CPKeyedArchiverDidEncodeObjectSelector = 1,
    _CPKeyedArchiverWillEncodeObjectSelector = 2,
    _CPKeyedArchiverWillReplaceObjectWithObjectSelector = 4,
    _CPKeyedArchiverDidFinishSelector = 8,
    _CPKeyedArchiverWillFinishSelector = 16;
var _CPKeyedArchiverNullString = "$null",
    _CPKeyedArchiverNullReference = nil,
    _CPKeyedArchiverUIDKey = "CP$UID",
    _CPKeyedArchiverTopKey = "$top",
    _CPKeyedArchiverObjectsKey = "$objects",
    _CPKeyedArchiverArchiverKey = "$archiver",
    _CPKeyedArchiverVersionKey = "$version",
    _CPKeyedArchiverClassNameKey = "$classname",
    _CPKeyedArchiverClassesKey = "$classes",
    _CPKeyedArchiverClassKey = "$class";
var _CPKeyedArchiverStringClass = Nil,
    _CPKeyedArchiverNumberClass = Nil;
{var the_class = objj_allocateClassPair(CPValue, "_CPKeyedArchiverValue"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
}
{var the_class = objj_allocateClassPair(CPCoder, "CPKeyedArchiver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate"), new objj_ivar("_delegateSelectors"), new objj_ivar("_data"), new objj_ivar("_objects"), new objj_ivar("_UIDs"), new objj_ivar("_conditionalUIDs"), new objj_ivar("_replacementObjects"), new objj_ivar("_replacementClassNames"), new objj_ivar("_plistObject"), new objj_ivar("_plistObjects"), new objj_ivar("_outputFormat")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("initialize"), function $CPKeyedArchiver__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPKeyedArchiver, "class"))
        return;
    _CPKeyedArchiverStringClass = objj_msgSend(CPString, "class");
    _CPKeyedArchiverNumberClass = objj_msgSend(CPNumber, "class");
    _CPKeyedArchiverNullReference = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", 0, _CPKeyedArchiverUIDKey);
}
});
class_methods[1] = new objj_method(sel_registerName("allowsKeyedCoding"), function $CPKeyedArchiver__allowsKeyedCoding(self, _cmd)
{ with(self)
{
    return YES;
}
});
class_methods[2] = new objj_method(sel_registerName("archivedDataWithRootObject:"), function $CPKeyedArchiver__archivedDataWithRootObject_(self, _cmd, anObject)
{ with(self)
{
    var data = objj_msgSend(CPData, "dataWithPlistObject:", nil),
        archiver = objj_msgSend(objj_msgSend(self, "alloc"), "initForWritingWithMutableData:", data);
    objj_msgSend(archiver, "encodeObject:forKey:", anObject, "root");
    objj_msgSend(archiver, "finishEncoding");
    return data;
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initForWritingWithMutableData:"), function $CPKeyedArchiver__initForWritingWithMutableData_(self, _cmd, data)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCoder") }, "init");
    if (self)
    {
        _data = data;
        _objects = [];
        _UIDs = objj_msgSend(CPDictionary, "dictionary");
        _conditionalUIDs = objj_msgSend(CPDictionary, "dictionary");
        _replacementObjects = objj_msgSend(CPDictionary, "dictionary");
        _data = data;
        _plistObject = objj_msgSend(CPDictionary, "dictionary");
        _plistObjects = objj_msgSend(CPArray, "arrayWithObject:", _CPKeyedArchiverNullString);
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("finishEncoding"), function $CPKeyedArchiver__finishEncoding(self, _cmd)
{ with(self)
{
    if (_delegate && _delegateSelectors & _CPKeyedArchiverWillFinishSelector)
        objj_msgSend(_delegate, "archiverWillFinish:", self);
    var i = 0,
        topObject = _plistObject,
        classes = [];
    for (; i < _objects.length; ++i)
    {
        var object = _objects[i],
            theClass = objj_msgSend(object, "classForKeyedArchiver");
        _plistObject = _plistObjects[objj_msgSend(_UIDs, "objectForKey:", objj_msgSend(object, "hash"))];
        objj_msgSend(object, "encodeWithCoder:", self);
        if (_delegate && _delegateSelectors & _CPKeyedArchiverDidEncodeObjectSelector)
            objj_msgSend(_delegate, "archiver:didEncodeObject:", self, object);
    }
    _plistObject = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(_plistObject, "setObject:forKey:", topObject, _CPKeyedArchiverTopKey);
    objj_msgSend(_plistObject, "setObject:forKey:", _plistObjects, _CPKeyedArchiverObjectsKey);
    objj_msgSend(_plistObject, "setObject:forKey:", objj_msgSend(self, "className"), _CPKeyedArchiverArchiverKey);
    objj_msgSend(_plistObject, "setObject:forKey:", "100000", _CPKeyedArchiverVersionKey);
    objj_msgSend(_data, "setPlistObject:", _plistObject);
    if (_delegate && _delegateSelectors & _CPKeyedArchiverDidFinishSelector)
        objj_msgSend(_delegate, "archiverDidFinish:", self);
}
});
instance_methods[2] = new objj_method(sel_registerName("outputFormat"), function $CPKeyedArchiver__outputFormat(self, _cmd)
{ with(self)
{
    return _outputFormat;
}
});
instance_methods[3] = new objj_method(sel_registerName("setOutputFormat:"), function $CPKeyedArchiver__setOutputFormat_(self, _cmd, aPropertyListFormat)
{ with(self)
{
    _outputFormat = aPropertyListFormat;
}
});
instance_methods[4] = new objj_method(sel_registerName("encodeBool:forKey:"), function $CPKeyedArchiver__encodeBool_forKey_(self, _cmd, aBOOL, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,aBOOL,NO), aKey);
}
});
instance_methods[5] = new objj_method(sel_registerName("encodeDouble:forKey:"), function $CPKeyedArchiver__encodeDouble_forKey_(self, _cmd, aDouble, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,aDouble,NO), aKey);
}
});
instance_methods[6] = new objj_method(sel_registerName("encodeFloat:forKey:"), function $CPKeyedArchiver__encodeFloat_forKey_(self, _cmd, aFloat, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,aFloat,NO), aKey);
}
});
instance_methods[7] = new objj_method(sel_registerName("encodeInt:forKey:"), function $CPKeyedArchiver__encodeInt_forKey_(self, _cmd, anInt, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,anInt,NO), aKey);
}
});
instance_methods[8] = new objj_method(sel_registerName("setDelegate:"), function $CPKeyedArchiver__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    _delegate = aDelegate;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("archiver:didEncodeObject:")))
        _delegateSelectors |= _CPKeyedArchiverDidEncodeObjectSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("archiver:willEncodeObject:")))
        _delegateSelectors |= _CPKeyedArchiverWillEncodeObjectSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("archiver:willReplaceObject:withObject:")))
        _delegateSelectors |= _CPKeyedArchiverWillReplaceObjectWithObjectSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("archiver:didFinishEncoding:")))
        _delegateSelectors |= _CPKeyedArchiverDidFinishEncodingSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("archiver:willFinishEncoding:")))
        _delegateSelectors |= _CPKeyedArchiverWillFinishEncodingSelector;
}
});
instance_methods[9] = new objj_method(sel_registerName("delegate"), function $CPKeyedArchiver__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
});
instance_methods[10] = new objj_method(sel_registerName("encodePoint:forKey:"), function $CPKeyedArchiver__encodePoint_forKey_(self, _cmd, aPoint, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,CPStringFromPoint(aPoint),NO), aKey);
}
});
instance_methods[11] = new objj_method(sel_registerName("encodeRect:forKey:"), function $CPKeyedArchiver__encodeRect_forKey_(self, _cmd, aRect, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,CPStringFromRect(aRect),NO), aKey);
}
});
instance_methods[12] = new objj_method(sel_registerName("encodeSize:forKey:"), function $CPKeyedArchiver__encodeSize_forKey_(self, _cmd, aSize, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,CPStringFromSize(aSize),NO), aKey);
}
});
instance_methods[13] = new objj_method(sel_registerName("encodeConditionalObject:forKey:"), function $CPKeyedArchiver__encodeConditionalObject_forKey_(self, _cmd, anObject, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,anObject,YES), aKey);
}
});
instance_methods[14] = new objj_method(sel_registerName("encodeNumber:forKey:"), function $CPKeyedArchiver__encodeNumber_forKey_(self, _cmd, aNumber, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,aNuumber,NO), aKey);
}
});
instance_methods[15] = new objj_method(sel_registerName("encodeObject:forKey:"), function $CPKeyedArchiver__encodeObject_forKey_(self, _cmd, anObject, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,anObject,NO), aKey);
}
});
instance_methods[16] = new objj_method(sel_registerName("_encodeArrayOfObjects:forKey:"), function $CPKeyedArchiver___encodeArrayOfObjects_forKey_(self, _cmd, objects, aKey)
{ with(self)
{
    var i = 0,
        count = objects.length,
        references = objj_msgSend(CPArray, "arrayWithCapacity:", count);
    for (; i < count; ++i)
        objj_msgSend(references, "addObject:", _CPKeyedArchiverEncodeObject(self,objects[i],NO));
    objj_msgSend(_plistObject, "setObject:forKey:", references, aKey);
}
});
instance_methods[17] = new objj_method(sel_registerName("_encodeDictionaryOfObjects:forKey:"), function $CPKeyedArchiver___encodeDictionaryOfObjects_forKey_(self, _cmd, aDictionary, aKey)
{ with(self)
{
    var key,
        keys = objj_msgSend(aDictionary, "keyEnumerator"),
        references = objj_msgSend(CPDictionary, "dictionary");
    while (key = objj_msgSend(keys, "nextObject"))
        objj_msgSend(references, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self,objj_msgSend(aDictionary, "objectForKey:", key),NO), key);
    objj_msgSend(_plistObject, "setObject:forKey:", references, aKey);
}
});
class_methods[3] = new objj_method(sel_registerName("setClassName:forClass:"), function $CPKeyedArchiver__setClassName_forClass_(self, _cmd, aClassName, aClass)
{ with(self)
{
    if (!CPArchiverReplacementClassNames)
        CPArchiverReplacementClassNames = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(CPArchiverReplacementClassNames, "setObject:forKey:", aClassName, CPStringFromClass(aClass));
}
});
class_methods[4] = new objj_method(sel_registerName("classNameForClass:"), function $CPKeyedArchiver__classNameForClass_(self, _cmd, aClass)
{ with(self)
{
    if (!CPArchiverReplacementClassNames)
        return aClass.name;
    var className = objj_msgSend(CPArchiverReplacementClassNames, "objectForKey:", CPStringFromClass(aClassName));
    return className ? className : aClass.name;
}
});
instance_methods[18] = new objj_method(sel_registerName("setClassName:forClass:"), function $CPKeyedArchiver__setClassName_forClass_(self, _cmd, aClassName, aClass)
{ with(self)
{
    if (!_replacementClassNames)
        _replacementClassNames = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(_replacementClassNames, "setObject:forKey:", aClassName, CPStringFromClass(aClass));
}
});
instance_methods[19] = new objj_method(sel_registerName("classNameForClass:"), function $CPKeyedArchiver__classNameForClass_(self, _cmd, aClass)
{ with(self)
{
    if (!_replacementClassNames)
        return aClass.name;
    var className = objj_msgSend(_replacementClassNames, "objectForKey:", CPStringFromClass(aClassName));
    return className ? className : aClass.name;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
var _CPKeyedArchiverEncodeObject = function(self, anObject, isConditional)
{
    if (anObject != nil && !anObject.isa)
        anObject = objj_msgSend(_CPKeyedArchiverValue, "valueWithJSObject:", anObject);
    var hash = objj_msgSend(anObject, "hash"),
        object = objj_msgSend(self._replacementObjects, "objectForKey:", hash);
    if (object == nil)
    {
        object = objj_msgSend(anObject, "replacementObjectForKeyedArchiver:", self);
        if (self._delegate)
        {
            if (object != anObject && self._delegateSelectors & _CPKeyedArchiverWillReplaceObjectWithObjectSelector)
                objj_msgSend(self._delegate, "archiver:willReplaceObject:withObject:", self, anObject, object);
            if (self._delegateSelectors & _CPKeyedArchiverWillEncodeObjectSelector)
            {
                anObject = objj_msgSend(self._delegate, "archiver:willEncodeObject:", self, object);
                if (anObject != object && self._delegateSelectors & _CPKeyedArchiverWillReplaceObjectWithObjectSelector)
                    objj_msgSend(self._delegate, "archiver:willReplaceObject:withObject:", self, object, anObject);
                object = anObject;
            }
        }
        objj_msgSend(self._replacementObjects, "setObject:forKey:", object, hash);
    }
    if (object == nil)
        return _CPKeyedArchiverNullReference;
    var UID = objj_msgSend(self._UIDs, "objectForKey:", hash=objj_msgSend(object, "hash"));
    if (UID == nil)
    {
        if (isConditional)
        {
            if ((UID = objj_msgSend(self._conditionalUIDs, "objectForKey:", hash)) == nil)
            {
                objj_msgSend(self._conditionalUIDs, "setObject:forKey:", UID=objj_msgSend(self._plistObjects, "count"), hash);
                objj_msgSend(self._plistObjects, "addObject:", _CPKeyedArchiverNullString);
            }
        }
        else
        {
            var theClass = objj_msgSend(anObject, "classForKeyedArchiver"),
                plistObject = nil,
                shouldEncodeObject = NO;
            if (theClass == _CPKeyedArchiverStringClass || theClass == _CPKeyedArchiverNumberClass)
                plistObject = object;
            else
            {
                shouldEncodeObject = YES;
                plistObject = objj_msgSend(CPDictionary, "dictionary");
            }
            if ((UID = objj_msgSend(self._conditionalUIDs, "objectForKey:", hash)) == nil)
            {
                objj_msgSend(self._UIDs, "setObject:forKey:", UID=objj_msgSend(self._plistObjects, "count"), hash);
                objj_msgSend(self._plistObjects, "addObject:", plistObject);
                if (shouldEncodeObject)
                {
                    objj_msgSend(self._objects, "addObject:", object);
                    var className = objj_msgSend(self, "classNameForClass:", theClass);
                    if (!className)
                        className = objj_msgSend(objj_msgSend(self, "class"), "classNameForClass:", theClass);
                    if (!className)
                        className = theClass.name;
                    else
                        theClass = window[className];
                    var classUID = objj_msgSend(self._UIDs, "objectForKey:", className);
                    if (!classUID)
                    {
                        var plistClass = objj_msgSend(CPDictionary, "dictionary"),
                            hierarchy = [];
                        objj_msgSend(plistClass, "setObject:forKey:", className, _CPKeyedArchiverClassNameKey);
                        do
                        {
                            objj_msgSend(hierarchy, "addObject:", CPStringFromClass(theClass));
                        } while (theClass = objj_msgSend(theClass, "superclass"));
                        objj_msgSend(plistClass, "setObject:forKey:", hierarchy, _CPKeyedArchiverClassesKey);
                        classUID = objj_msgSend(self._plistObjects, "count");
                        objj_msgSend(self._plistObjects, "addObject:", plistClass);
                        objj_msgSend(self._UIDs, "setObject:forKey:", classUID, className);
                    }
                    objj_msgSend(plistObject, "setObject:forKey:", objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", classUID, _CPKeyedArchiverUIDKey), _CPKeyedArchiverClassKey);
                }
            }
            else
            {
                objj_msgSend(self._UIDs, "setObject:forKey:", object, UID);
                objj_msgSend(self._plistObjects, "replaceObjectAtIndex:withObject:", UID, plistObject);
            }
        }
    }
    return objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", UID, _CPKeyedArchiverUIDKey);
}

p;19;CPKeyedUnarchiver.ji;8;CPNull.ji;9;CPCoder.jc;12649;
var _CPKeyedUnarchiverCannotDecodeObjectOfClassNameOriginalClassesSelector = 1,
    _CPKeyedUnarchiverDidDecodeObjectSelector = 1 << 1,
    _CPKeyedUnarchiverWillReplaceObjectWithObjectSelector = 1 << 2,
    _CPKeyedUnarchiverWillFinishSelector = 1 << 3,
    _CPKeyedUnarchiverDidFinishSelector = 1 << 4;
var _CPKeyedArchiverNullString = "$null"
    _CPKeyedArchiverUIDKey = "CP$UID",
    _CPKeyedArchiverTopKey = "$top",
    _CPKeyedArchiverObjectsKey = "$objects",
    _CPKeyedArchiverArchiverKey = "$archiver",
    _CPKeyedArchiverVersionKey = "$version",
    _CPKeyedArchiverClassNameKey = "$classname",
    _CPKeyedArchiverClassesKey = "$classes",
    _CPKeyedArchiverClassKey = "$class";
var _CPKeyedUnarchiverArrayClass = Nil,
    _CPKeyedUnarchiverStringClass = Nil,
    _CPKeyedUnarchiverDictionaryClass = Nil,
    _CPKeyedUnarchiverArchiverValueClass = Nil;
{var the_class = objj_allocateClassPair(CPCoder, "CPKeyedUnarchiver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate"), new objj_ivar("_delegateSelectors"), new objj_ivar("_data"), new objj_ivar("_replacementClassNames"), new objj_ivar("_objects"), new objj_ivar("_archive"), new objj_ivar("_plistObject"), new objj_ivar("_plistObjects")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("initialize"), function $CPKeyedUnarchiver__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPKeyedUnarchiver, "class"))
        return;
    _CPKeyedUnarchiverArrayClass = objj_msgSend(CPArray, "class");
    _CPKeyedUnarchiverStringClass = objj_msgSend(CPString, "class");
    _CPKeyedUnarchiverDictionaryClass = objj_msgSend(CPDictionary, "class");
    _CPKeyedUnarchiverArchiverValueClass = objj_msgSend(_CPKeyedArchiverValue, "class");
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initForReadingWithData:"), function $CPKeyedUnarchiver__initForReadingWithData_(self, _cmd, data)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCoder") }, "init");
    if (self)
    {
        _archive = objj_msgSend(data, "plistObject");
        _objects = objj_msgSend(CPArray, "arrayWithObject:", objj_msgSend(CPNull, "null"));
        _plistObject = objj_msgSend(_archive, "objectForKey:", _CPKeyedArchiverTopKey);
        _plistObjects = objj_msgSend(_archive, "objectForKey:", _CPKeyedArchiverObjectsKey);
    }
    return self;
}
});
class_methods[1] = new objj_method(sel_registerName("unarchiveObjectWithData:"), function $CPKeyedUnarchiver__unarchiveObjectWithData_(self, _cmd, data)
{ with(self)
{
    var unarchiver = objj_msgSend(objj_msgSend(self, "alloc"), "initForReadingWithData:", data),
        object = objj_msgSend(unarchiver, "decodeObjectForKey:", "root");
    objj_msgSend(unarchiver, "finishDecoding");
    return object;
}
});
class_methods[2] = new objj_method(sel_registerName("unarchiveObjectWithFile:"), function $CPKeyedUnarchiver__unarchiveObjectWithFile_(self, _cmd, aFilePath)
{ with(self)
{}
});
class_methods[3] = new objj_method(sel_registerName("unarchiveObjectWithFile:asynchronously:"), function $CPKeyedUnarchiver__unarchiveObjectWithFile_asynchronously_(self, _cmd, aFilePath, aFlag)
{ with(self)
{}
});
instance_methods[1] = new objj_method(sel_registerName("containsValueForKey:"), function $CPKeyedUnarchiver__containsValueForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(_plistObject, "objectForKey:", aKey) != nil;
}
});
instance_methods[2] = new objj_method(sel_registerName("_decodeArrayOfObjectsForKey:"), function $CPKeyedUnarchiver___decodeArrayOfObjectsForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(_plistObject, "objectForKey:", aKey);
    if (objj_msgSend(object, "isKindOfClass:", _CPKeyedUnarchiverArrayClass))
    {
        var index = 0,
            count = object.length,
            array = [];
        for (; index < count; ++index)
            array[index] = _CPKeyedUnarchiverDecodeObjectAtIndex(self, objj_msgSend(object[index], "objectForKey:", _CPKeyedArchiverUIDKey));
        return array;
    }
    return nil;
}
});
instance_methods[3] = new objj_method(sel_registerName("_decodeDictionaryOfObjectsForKey:"), function $CPKeyedUnarchiver___decodeDictionaryOfObjectsForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(_plistObject, "objectForKey:", aKey);
    if (objj_msgSend(object, "isKindOfClass:", _CPKeyedUnarchiverDictionaryClass))
    {
        var key,
            keys = objj_msgSend(object, "keyEnumerator"),
            dictionary = objj_msgSend(CPDictionary, "dictionary");
        while (key = objj_msgSend(keys, "nextObject"))
            objj_msgSend(dictionary, "setObject:forKey:", _CPKeyedUnarchiverDecodeObjectAtIndex(self,objj_msgSend(objj_msgSend(object, "objectForKey:", key), "objectForKey:", _CPKeyedArchiverUIDKey)), key);
        return dictionary;
    }
    return nil;
}
});
instance_methods[4] = new objj_method(sel_registerName("decodeBoolForKey:"), function $CPKeyedUnarchiver__decodeBoolForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(self, "decodeObjectForKey:", aKey);
}
});
instance_methods[5] = new objj_method(sel_registerName("decodeFloatForKey:"), function $CPKeyedUnarchiver__decodeFloatForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(self, "decodeObjectForKey:", aKey);
}
});
instance_methods[6] = new objj_method(sel_registerName("decodeDoubleForKey:"), function $CPKeyedUnarchiver__decodeDoubleForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(self, "decodeObjectForKey:", aKey);
}
});
instance_methods[7] = new objj_method(sel_registerName("decodeIntForKey:"), function $CPKeyedUnarchiver__decodeIntForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(self, "decodeObjectForKey:", aKey);
}
});
instance_methods[8] = new objj_method(sel_registerName("decodePointForKey:"), function $CPKeyedUnarchiver__decodePointForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(self, "decodeObjectForKey:", aKey);
    if(object)
        return CPPointFromString(object);
    else
        return CPPointMake(0.0, 0.0);
}
});
instance_methods[9] = new objj_method(sel_registerName("decodeRectForKey:"), function $CPKeyedUnarchiver__decodeRectForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(self, "decodeObjectForKey:", aKey);
    if(object)
        return CPRectFromString(object);
    else
        return CPRectMakeZero();
}
});
instance_methods[10] = new objj_method(sel_registerName("decodeSizeForKey:"), function $CPKeyedUnarchiver__decodeSizeForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(self, "decodeObjectForKey:", aKey);
    if(object)
        return CPSizeFromString(object);
    else
        return CPSizeMake(0.0, 0.0);
}
});
instance_methods[11] = new objj_method(sel_registerName("decodeObjectForKey:"), function $CPKeyedUnarchiver__decodeObjectForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(_plistObject, "objectForKey:", aKey);
    if (objj_msgSend(object, "isKindOfClass:", _CPKeyedUnarchiverDictionaryClass))
        return _CPKeyedUnarchiverDecodeObjectAtIndex(self, objj_msgSend(object, "objectForKey:", _CPKeyedArchiverUIDKey));
    else if (objj_msgSend(object, "isKindOfClass:", objj_msgSend(CPNumber, "class")))
        return object;
    return nil;
}
});
instance_methods[12] = new objj_method(sel_registerName("finishDecoding"), function $CPKeyedUnarchiver__finishDecoding(self, _cmd)
{ with(self)
{
    if (_delegateSelectors & _CPKeyedUnarchiverWillFinishSelector)
        objj_msgSend(_delegate, "unarchiverWillFinish:", self);
    if (_delegateSelectors & _CPKeyedUnarchiverDidFinishSelector)
        objj_msgSend(_delegate, "unarchiverDidFinish:", self);
}
});
instance_methods[13] = new objj_method(sel_registerName("delegate"), function $CPKeyedUnarchiver__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
});
instance_methods[14] = new objj_method(sel_registerName("setDelegate:"), function $CPKeyedUnarchiver__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    _delegate = aDelegate;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("unarchiver:cannotDecodeObjectOfClassName:originalClasses:")))
        _delegateSelectors |= _CPKeyedUnarchiverCannotDecodeObjectOfClassNameOriginalClassesSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("unarchiver:didDecodeObject:")))
        _delegateSelectors |= _CPKeyedUnarchiverDidDecodeObjectSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("unarchiver:willReplaceObject:withObject:")))
        _delegateSelectors |= _CPKeyedUnarchiverWillReplaceObjectWithObjectSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("unarchiverWillFinish:")))
        _delegateSelectors |= _CPKeyedUnarchiverWilFinishSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("unarchiverDidFinish:")))
        _delegateSelectors |= _CPKeyedUnarchiverDidFinishSelector;
}
});
instance_methods[15] = new objj_method(sel_registerName("allowsKeyedCoding"), function $CPKeyedUnarchiver__allowsKeyedCoding(self, _cmd)
{ with(self)
{
    return YES;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
var _CPKeyedUnarchiverDecodeObjectAtIndex = function(self, anIndex)
{
    var object = self._objects[anIndex];
    if (object)
        if (object == self._objects[0])
            return nil;
        else
            return object;
    var object,
        plistObject = self._plistObjects[anIndex];
    if (objj_msgSend(plistObject, "isKindOfClass:", _CPKeyedUnarchiverDictionaryClass))
    {
        var plistClass = self._plistObjects[objj_msgSend(objj_msgSend(plistObject, "objectForKey:", _CPKeyedArchiverClassKey), "objectForKey:", _CPKeyedArchiverUIDKey)],
            className = objj_msgSend(plistClass, "objectForKey:", _CPKeyedArchiverClassNameKey),
            classes = objj_msgSend(plistClass, "objectForKey:", _CPKeyedArchiverClassesKey),
            theClass = CPClassFromString(className);
        object = objj_msgSend(theClass, "alloc");
        self._objects[anIndex] = object;
        var savedPlistObject = self._plistObject;
        self._plistObject = plistObject;
        var processedObject = objj_msgSend(object, "initWithCoder:", self);
        self._plistObject = savedPlistObject;
        if (processedObject != object)
        {
            if (self._delegateSelectors & _CPKeyedUnarchiverWillReplaceObjectWithObjectSelector)
                objj_msgSend(self._delegate, "unarchiver:willReplaceObject:withObject:", self, object, processedObject);
            object = processedObject;
            self._objects[anIndex] = processedObject;
        }
        processedObject = objj_msgSend(object, "awakeAfterUsingCoder:", self);
        if (processedObject != object)
        {
            if (self._delegateSelectors & _CPKeyedUnarchiverWillReplaceObjectWithObjectSelector)
                objj_msgSend(self._delegate, "unarchiver:willReplaceObject:withObject:", self, object, processedObject);
            object = processedObject;
            self._objects[anIndex] = processedObject;
        }
        if (self._delegate)
        {
            if (self._delegateSelectors & _CPKeyedUnarchiverDidDecodeObjectSelector)
                processedObject = objj_msgSend(self._delegate, "unarchiver:didDecodeObject:", self, object);
            if (processedObject != object)
            {
                if (self._delegateSelectors & _CPKeyedUnarchiverWillReplaceObjectWithObjectSelector)
                    objj_msgSend(self._delegate, "unarchiver:willReplaceObject:withObject:", self, object, processedObject);
                object = processedObject;
                self._objects[anIndex] = processedObject;
            }
        }
    }
    else
    {
        self._objects[anIndex] = object = plistObject;
        if (objj_msgSend(object, "class") == _CPKeyedUnarchiverStringClass)
        {
            if (object == _CPKeyedArchiverNullString)
            {
                self._objects[anIndex] = self._objects[0];
                return nil;
            }
            else
                self._objects[anIndex] = object = plistObject;
        }
    }
    if (objj_msgSend(object, "isMemberOfClass:", _CPKeyedUnarchiverArchiverValueClass))
        object = objj_msgSend(object, "JSObject");
    return object;
}

p;18;CPKeyValueCoding.ji;9;CPArray.ji;10;CPObject.ji;14;CPDictionary.jc;11419;
var CPObjectAccessorsForClass = nil,
    CPObjectModifiersForClass = nil;
CPUndefinedKeyException = "CPUndefinedKeyException";
CPTargetObjectUserInfoKey = "CPTargetObjectUserInfoKey";
CPUnknownUserInfoKey = "CPUnknownUserInfoKey";
{
var the_class = objj_getClass("CPObject")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPObject\""));
var meta_class = the_class.isa;var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("accessInstanceVariablesDirectly"), function $CPObject__accessInstanceVariablesDirectly(self, _cmd)
{ with(self)
{
    return YES;
}
});
class_methods[1] = new objj_method(sel_registerName("_accessorForKey:"), function $CPObject___accessorForKey_(self, _cmd, aKey)
{ with(self)
{
    if (!CPObjectAccessorsForClass)
        CPObjectAccessorsForClass = objj_msgSend(CPDictionary, "dictionary");
    var hash = objj_msgSend(isa, "hash"),
        selector = nil,
        accessors = objj_msgSend(CPObjectAccessorsForClass, "objectForKey:", hash);
    if (accessors)
    {
        selector = objj_msgSend(accessors, "objectForKey:", aKey);
        if (selector)
            return selector == objj_msgSend(CPNull, "null") ? nil : selector;
    }
    else
    {
        accessors = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(CPObjectAccessorsForClass, "setObject:forKey:", accessors, hash);
    }
    var capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substr(1);
    if (objj_msgSend(self, "instancesRespondToSelector:", selector=CPSelectorFromString("get"+capitalizedKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector=CPSelectorFromString(aKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector=CPSelectorFromString("is"+capitalizedKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector=CPSelectorFromString("_get"+capitalizedKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector=CPSelectorFromString("_"+aKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector=CPSelectorFromString("_is"+capitalizedKey)))
    {
        objj_msgSend(accessors, "setObject:forKey:", selector, aKey);
        return selector;
    }
    objj_msgSend(accessors, "setObject:forKey:", objj_msgSend(CPNull, "null"), aKey);
    return nil;
}
});
class_methods[2] = new objj_method(sel_registerName("_modifierForKey:"), function $CPObject___modifierForKey_(self, _cmd, aKey)
{ with(self)
{
    if (!CPObjectModifiersForClass)
        CPObjectModifiersForClass = objj_msgSend(CPDictionary, "dictionary");
    var hash = objj_msgSend(isa, "hash"),
        selector = nil,
        modifiers = objj_msgSend(CPObjectModifiersForClass, "objectForKey:", hash);
    if (modifiers)
    {
        selector = objj_msgSend(modifiers, "objectForKey:", aKey);
        if (selector)
            return selector == objj_msgSend(CPNull, "null") ? nil : selector;
    }
    else
    {
        modifiers = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(CPObjectModifiersForClass, "setObject:forKey:", modifiers, hash);
    }
    if (selector)
        return selector == objj_msgSend(CPNull, "null") ? nil : selector;
    var capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substr(1) + ':';
    if (objj_msgSend(self, "instancesRespondToSelector:", selector=CPSelectorFromString("set"+capitalizedKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector=CPSelectorFromString("_set"+capitalizedKey)))
    {
        objj_msgSend(modifiers, "setObject:forKey:", selector, aKey);
        return selector;
    }
    objj_msgSend(modifiers, "setObject:forKey:", objj_msgSend(CPNull, "null"), aKey);
    return nil;
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("_ivarForKey:"), function $CPObject___ivarForKey_(self, _cmd, aKey)
{ with(self)
{
    var ivar = '_' + aKey;
    if (typeof self[ivar] != "undefined")
        return ivar;
    var isKey = "is" + aKey.charAt(0).toUpperCase() + aKey.substr(1);
    ivar = '_' + isKey;
    if (typeof self[ivar] != "undefined")
        return ivar;
    ivar = aKey;
    if (typeof self[ivar] != "undefined")
        return ivar;
    ivar = isKey;
    if (typeof self[ivar] != "undefined")
        return ivar;
    return nil;
}
});
instance_methods[1] = new objj_method(sel_registerName("valueForKey:"), function $CPObject__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    var theClass = objj_msgSend(self, "class"),
        selector = objj_msgSend(theClass, "_accessorForKey:", aKey);
    if (selector)
        return objj_msgSend(self, selector);
    if(objj_msgSend(theClass, "accessInstanceVariablesDirectly"))
    {
        var ivar = objj_msgSend(self, "_ivarForKey:", aKey);
        if (ivar)
            return self[ivar];
    }
    return objj_msgSend(self, "valueForUndefinedKey:", aKey);
}
});
instance_methods[2] = new objj_method(sel_registerName("valueForKeyPath:"), function $CPObject__valueForKeyPath_(self, _cmd, aKeyPath)
{ with(self)
{
    var keys = aKeyPath.split("."),
        index = 0,
        count = keys.length,
        value = self;
    for(; index < count; ++index)
        value = objj_msgSend(value, "valueForKey:", keys[index]);
    return value;
}
});
instance_methods[3] = new objj_method(sel_registerName("dictionaryWithValuesForKeys:"), function $CPObject__dictionaryWithValuesForKeys_(self, _cmd, keys)
{ with(self)
{
    var index = 0,
        count = keys.length,
        dictionary = objj_msgSend(CPDictionary, "dictionary");
    for (; index < count; ++index)
    {
        var key = keys[index],
            value = objj_msgSend(self, "valueForKey:", key);
        if (value === nil)
            objj_msgSend(dictionary, "setObject:forKey:", objj_msgSend(CPNull, "null"), key);
        else
            objj_msgSend(dictionary, "setObject:forKey:", value, key);
    }
    return dictionary;
}
});
instance_methods[4] = new objj_method(sel_registerName("valueForUndefinedKey:"), function $CPObject__valueForUndefinedKey_(self, _cmd, aKey)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPException, "exceptionWithName:reason:userInfo:", CPUndefinedKeyException, objj_msgSend(self, "description")+" is not key value coding-compliant for the key "+aKey, objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [self,aKey], [CPTargetObjectUserInfoKey,CPUnknownUserInfoKey])), "raise");
}
});
instance_methods[5] = new objj_method(sel_registerName("setValue:forKeyPath:"), function $CPObject__setValue_forKeyPath_(self, _cmd, aValue, aKeyPath)
{ with(self)
{
    if (!aKeyPath) aKeyPath = "self";
    var i = 0,
        keys = aKeyPath.split("."),
        count = keys.length - 1,
        owner = self;
    for(; i < count; ++i)
        owner = objj_msgSend(owner, "valueForKey:", keys[i]);
    objj_msgSend(owner, "setValue:forKey:", aValue, keys[i]);
}
});
instance_methods[6] = new objj_method(sel_registerName("setValue:forKey:"), function $CPObject__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    var theClass = objj_msgSend(self, "class"),
        selector = objj_msgSend(theClass, "_modifierForKey:", aKey);
    if (selector)
        return objj_msgSend(self, selector, aValue);
    if(objj_msgSend(theClass, "accessInstanceVariablesDirectly"))
    {
        var ivar = objj_msgSend(self, "_ivarForKey:", aKey);
        if (ivar)
        {
            objj_msgSend(self, "willChangeValueForKey:", aKey);
            self[ivar] = aValue;
            objj_msgSend(self, "didChangeValueForKey:", aKey);
        }
        return;
    }
    objj_msgSend(self, "setValue:forUndefinedKey:", aValue, aKey);
}
});
instance_methods[7] = new objj_method(sel_registerName("setValue:forUndefinedKey:"), function $CPObject__setValue_forUndefinedKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPException, "exceptionWithName:reason:userInfo:", CPUndefinedKeyException, objj_msgSend(self, "description")+" is not key value coding-compliant for the key "+aKey, objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [self,aKey], [CPTargetObjectUserInfoKey,CPUnknownUserInfoKey])), "raise");
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
{
var the_class = objj_getClass("CPDictionary")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPDictionary\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("valueForKey:"), function $CPDictionary__valueForKey_(self, _cmd, aKey)
{ with(self)
{
 return objj_msgSend(self, "objectForKey:", aKey);
}
});
instance_methods[1] = new objj_method(sel_registerName("setValue:forKey:"), function $CPDictionary__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    objj_msgSend(self, "setObject:forKey:", aValue, aKey);
}
});
class_addMethods(the_class, instance_methods);
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPArray\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("valueForKey:"), function $CPArray__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    if (aKey.indexOf("@") == 0)
    {
        if (aKey == "@count")
            return length;
        return nil;
    }
    else
    {
        var newArray = [],
            enumerator = objj_msgSend(self, "objectEnumerator"),
            object;
        while (object = objj_msgSend(enumerator, "nextObject"))
        {
            var value = objj_msgSend(object, "valueForKey:", aKey);
            if (!value && value !== "")
                value = objj_msgSend(NSNull, "null");
            newArray.push(value);
        }
        return newArray;
    }
}
});
instance_methods[1] = new objj_method(sel_registerName("valueForKeyPath:"), function $CPArray__valueForKeyPath_(self, _cmd, aKeyPath)
{ with(self)
{
    if (aKey.indexOf("@") == 0)
    {
        return nil;
    }
    else
    {
        var newArray = [],
            enumerator = objj_msgSend(self, "objectEnumerator"),
            object;
        while (object = objj_msgSend(enumerator, "nextObject"))
        {
            var value = objj_msgSend(object, "valueForKeyPath:", aKeyPath);
            if (!value && value !== "")
                value = objj_msgSend(NSNull, "null");
            newArray.push(value);
        }
        return newArray;
    }
}
});
instance_methods[2] = new objj_method(sel_registerName("setValue:forKey:"), function $CPArray__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    var enumerator = objj_msgSend(self, "objectEnumerator"),
        object;
    while (object = objj_msgSend(enumerator, "nextObject"))
        objj_msgSend(object, "setValue:forKey:", aValue, aKey);
}
});
instance_methods[3] = new objj_method(sel_registerName("setValue:forKeyPath:"), function $CPArray__setValue_forKeyPath_(self, _cmd, aValue, aKeyPath)
{ with(self)
{
    var enumerator = objj_msgSend(self, "objectEnumerator"),
        object;
    while (object = objj_msgSend(enumerator, "nextObject"))
        objj_msgSend(object, "setValue:forKeyPath:", aValue, aKeyPath);
}
});
class_addMethods(the_class, instance_methods);
}

p;21;CPKeyValueObserving.ji;9;CPArray.ji;14;CPDictionary.ji;13;CPException.ji;10;CPObject.jc;18767;
{
var the_class = objj_getClass("CPObject")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPObject\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("willChangeValueForKey:"), function $CPObject__willChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{}
});
instance_methods[1] = new objj_method(sel_registerName("didChangeValueForKey:"), function $CPObject__didChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{}
});
instance_methods[2] = new objj_method(sel_registerName("addObserver:forKeyPath:options:context:"), function $CPObject__addObserver_forKeyPath_options_context_(self, _cmd, anObserver, aPath, options, aContext)
{ with(self)
{
    if (!anObserver || !aPath)
        return;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_addObserver:forKeyPath:options:context:", anObserver, aPath, options, aContext);
}
});
instance_methods[3] = new objj_method(sel_registerName("removeObserver:forKeyPath:"), function $CPObject__removeObserver_forKeyPath_(self, _cmd, anObserver, aPath)
{ with(self)
{
    if (!anObserver || !aPath)
        return;
    objj_msgSend(objj_msgSend(KVOProxyMap, "objectForKey:", objj_msgSend(self, "hash")), "_removeObserver:forKeyPath:", anObserver, aPath);
}
});
instance_methods[4] = new objj_method(sel_registerName("automaticallyNotifiesObserversForKey:"), function $CPObject__automaticallyNotifiesObserversForKey_(self, _cmd, aKey)
{ with(self)
{
    return YES;
}
});
class_addMethods(the_class, instance_methods);
}
CPKeyValueObservingOptionNew = 1 << 0;
CPKeyValueObservingOptionOld = 1 << 1;
CPKeyValueObservingOptionInitial = 1 << 2;
CPKeyValueObservingOptionPrior = 1 << 3;
var kvoNewAndOld = CPKeyValueObservingOptionNew|CPKeyValueObservingOptionOld;
CPKeyValueChangeKindKey = "CPKeyValueChangeKindKey";
CPKeyValueChangeNewKey = "CPKeyValueChangeNewKey";
CPKeyValueChangeOldKey = "CPKeyValueChangeOldKey";
CPKeyValueChangeIndexesKey = "CPKeyValueChangeIndexesKey";
CPKeyValueChangeNotificationIsPriorKey = "CPKeyValueChangeNotificationIsPriorKey";
var KVOProxyMap = objj_msgSend(CPDictionary, "dictionary");
{var the_class = objj_allocateClassPair(CPObject, "_CPKVOProxy"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_targetObject"), new objj_ivar("_nativeClass"), new objj_ivar("_changesForKey"), new objj_ivar("_observersForKey"), new objj_ivar("_replacementMethods")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("proxyForObject:"), function $_CPKVOProxy__proxyForObject_(self, _cmd, anObject)
{ with(self)
{
    var proxy = objj_msgSend(KVOProxyMap, "objectForKey:", objj_msgSend(anObject, "hash"));
    if (proxy)
        return proxy;
    proxy = objj_msgSend(objj_msgSend(self, "alloc"), "initWithTarget:", anObject);
    objj_msgSend(proxy, "_replaceClass");
    objj_msgSend(KVOProxyMap, "setObject:forKey:", proxy, objj_msgSend(anObject, "hash"));
    return proxy;
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithTarget:"), function $_CPKVOProxy__initWithTarget_(self, _cmd, aTarget)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    _targetObject = aTarget;
    _nativeClass = objj_msgSend(aTarget, "class");
    _replacementMethods = objj_msgSend(CPDictionary, "dictionary");
    _observersForKey = objj_msgSend(CPDictionary, "dictionary");
    _changesForKey = objj_msgSend(CPDictionary, "dictionary");
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("_replaceSetters"), function $_CPKVOProxy___replaceSetters(self, _cmd)
{ with(self)
{
    var currentClass = objj_msgSend(_targetObject, "class");
    while (currentClass && currentClass != currentClass.super_class)
    {
        var methodList = currentClass.method_list,
            count = methodList.length;
        for (var i=0; i<count; i++)
        {
            var newMethod = _kvoMethodForMethod(_targetObject, methodList[i]);
            if (newMethod)
                objj_msgSend(_replacementMethods, "setObject:forKey:", newMethod, methodList[i].name);
        }
        currentClass = currentClass.super_class;
    }
}
});
instance_methods[2] = new objj_method(sel_registerName("_replaceSetters"), function $_CPKVOProxy___replaceSetters(self, _cmd)
{ with(self)
{
    var currentClass = objj_msgSend(_targetObject, "class");
    while (currentClass && currentClass != currentClass.super_class)
    {
        var methodList = currentClass.method_list,
            count = methodList.length;
        for (var i=0; i<count; i++)
        {
            var newMethod = _kvoMethodForMethod(_targetObject, methodList[i]);
            if (newMethod)
                objj_msgSend(_replacementMethods, "setObject:forKey:", newMethod, methodList[i].name);
        }
        currentClass = currentClass.super_class;
    }
}
});
instance_methods[3] = new objj_method(sel_registerName("_replaceClass"), function $_CPKVOProxy___replaceClass(self, _cmd)
{ with(self)
{
    var currentClass = _nativeClass,
        kvoClassName = "$KVO_"+class_getName(_nativeClass),
        existingKVOClass = objj_lookUpClass(kvoClassName);
    if (existingKVOClass)
    {
        _targetObject.isa = existingKVOClass;
        return;
    }
    var kvoClass = objj_allocateClassPair(currentClass, kvoClassName);
    objj_registerClassPair(kvoClass);
    _class_initialize(kvoClass);
    while (currentClass && currentClass != currentClass.super_class)
    {
        var methodList = currentClass.method_list,
            count = methodList.length;
        for (var i=0; i<count; i++)
        {
            var newMethodImp = _kvoMethodForMethod(_targetObject, methodList[i]);
            if (newMethodImp)
                class_addMethod(kvoClass, method_getName(methodList[i]), newMethodImp, "");
        }
        currentClass = currentClass.super_class;
    }
    var methodList = _CPKVOModelSubclass.method_list,
        count = methodList.length;
    for (var i=0; i<count; i++)
    {
        var method = methodList[i];
        class_addMethod(kvoClass, method_getName(method), method_getImplementation(method), "");
    }
    _targetObject.isa = kvoClass;
}
});
instance_methods[4] = new objj_method(sel_registerName("_addObserver:forKeyPath:options:context:"), function $_CPKVOProxy___addObserver_forKeyPath_options_context_(self, _cmd, anObserver, aPath, options, aContext)
{ with(self)
{
    if (!anObserver)
        return;
    var forwarder = nil;
    if (aPath.indexOf('.') != CPNotFound)
        forwarder = objj_msgSend(objj_msgSend(_CPKVOForwardingObserver, "alloc"), "initWithKeyPath:object:observer:options:context:", aPath, _targetObject, anObserver, options, aContext);
    var observers = objj_msgSend(_observersForKey, "objectForKey:", aPath);
    if (!observers)
    {
        observers = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(_observersForKey, "setObject:forKey:", observers, aPath);
    }
    objj_msgSend(observers, "setObject:forKey:", _CPKVOInfoMake(anObserver,options,aContext,forwarder), objj_msgSend(anObserver, "hash"));
    if (options & CPKeyValueObservingOptionInitial)
    {
        var newValue = objj_msgSend(_targetObject, "valueForKeyPath:", aPath);
        if (!newValue && newValue !== "")
            newValue = objj_msgSend(CPNull, "null");
        var changes = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", newValue, CPKeyValueChangeNewKey);
        objj_msgSend(anObserver, "observeValueForKeyPath:ofObject:change:context:", aPath, self, changes, aContext);
    }
}
});
instance_methods[5] = new objj_method(sel_registerName("_removeObserver:forKeyPath:"), function $_CPKVOProxy___removeObserver_forKeyPath_(self, _cmd, anObserver, aPath)
{ with(self)
{
    var observers = objj_msgSend(_observersForKey, "objectForKey:", aPath);
    if (aPath.indexOf('.') != CPNotFound)
    {
        var forwarder = objj_msgSend(observers, "objectForKey:", objj_msgSend(anObserver, "hash")).forwarder;
        objj_msgSend(forwarder, "finalize");
    }
    objj_msgSend(observers, "removeObjectForKey:", objj_msgSend(anObserver, "hash"));
    if (!objj_msgSend(observers, "count"))
        objj_msgSend(_observersForKey, "removeObjectForKey:", aPath);
    if (!objj_msgSend(_observersForKey, "count"))
    {
        _targetObject.isa = _nativeClass;
        objj_msgSend(KVOProxyMap, "removeObjectForKey:", objj_msgSend(_targetObject, "hash"));
    }
}
});
instance_methods[6] = new objj_method(sel_registerName("_sendNotificationsForKey:isBefore:"), function $_CPKVOProxy___sendNotificationsForKey_isBefore_(self, _cmd, aKey, isBefore)
{ with(self)
{
    var changes = objj_msgSend(_changesForKey, "objectForKey:", aKey);
    if (isBefore)
    {
        changes = objj_msgSend(CPDictionary, "dictionary");
        var oldValue = objj_msgSend(_targetObject, "valueForKey:", aKey);
        if (!oldValue && oldValue !== "")
            oldValue = objj_msgSend(CPNull, "null");
        objj_msgSend(changes, "setObject:forKey:", 1, CPKeyValueChangeNotificationIsPriorKey);
        objj_msgSend(changes, "setObject:forKey:", oldValue, CPKeyValueChangeOldKey);
        objj_msgSend(_changesForKey, "setObject:forKey:", changes, aKey);
    }
    else
    {
        objj_msgSend(changes, "removeObjectForKey:", CPKeyValueChangeNotificationIsPriorKey);
        var newValue = objj_msgSend(_targetObject, "valueForKey:", aKey);
        if (!newValue && newValue !== "")
            newValue = objj_msgSend(CPNull, "null");
        objj_msgSend(changes, "setObject:forKey:", newValue, CPKeyValueChangeNewKey);
    }
    var observers = objj_msgSend(objj_msgSend(_observersForKey, "objectForKey:", aKey), "allValues"),
        count = objj_msgSend(observers, "count");
    while (count--)
    {
        var observerInfo = observers[count];
        if (isBefore && (observerInfo.options & CPKeyValueObservingOptionPrior))
            objj_msgSend(observerInfo.observer, "observeValueForKeyPath:ofObject:change:context:", aKey, _targetObject, changes, observerInfo.context);
        else if (!isBefore)
            objj_msgSend(observerInfo.observer, "observeValueForKeyPath:ofObject:change:context:", aKey, _targetObject, changes, observerInfo.context);
    }
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
{var the_class = objj_allocateClassPair(Nil, "_CPKVOModelSubclass"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("willChangeValueForKey:"), function $_CPKVOModelSubclass__willChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{
    if (!aKey)
        return;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:isBefore:", aKey, YES);
}
});
instance_methods[1] = new objj_method(sel_registerName("didChangeValueForKey:"), function $_CPKVOModelSubclass__didChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{
    if (!aKey)
        return;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:isBefore:", aKey, NO);
}
});
instance_methods[2] = new objj_method(sel_registerName("class"), function $_CPKVOModelSubclass__class(self, _cmd)
{ with(self)
{
    return objj_msgSend(KVOProxyMap, "objectForKey:", objj_msgSend(self, "hash"))._nativeClass;
}
});
instance_methods[3] = new objj_method(sel_registerName("superclass"), function $_CPKVOModelSubclass__superclass(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "superclass");
}
});
instance_methods[4] = new objj_method(sel_registerName("isKindOfClass:"), function $_CPKVOModelSubclass__isKindOfClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "isSubclassOfClass:", aClass);
}
});
instance_methods[5] = new objj_method(sel_registerName("isMemberOfClass:"), function $_CPKVOModelSubclass__isMemberOfClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_msgSend(self, "class") == aClass;
}
});
instance_methods[6] = new objj_method(sel_registerName("className"), function $_CPKVOModelSubclass__className(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "class").name;
}
});
class_addMethods(the_class, instance_methods);
}
{var the_class = objj_allocateClassPair(CPObject, "_CPKVOForwardingObserver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_object"), new objj_ivar("_observer"), new objj_ivar("_context"), new objj_ivar("_firstPart"), new objj_ivar("_secondPart"), new objj_ivar("_value")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithKeyPath:object:observer:options:context:"), function $_CPKVOForwardingObserver__initWithKeyPath_object_observer_options_context_(self, _cmd, aKeyPath, anObject, anObserver, options, aContext)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    _context = aContext;
    _observer = anObserver;
    _object = anObject;
    var dotIndex = aKeyPath.indexOf('.');
    if (dotIndex == CPNotFound)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Created _CPKVOForwardingObserver without compound key path: "+aKeyPath);
    _firstPart = aKeyPath.substring(0, dotIndex);
    _secondPart = aKeyPath.substring(dotIndex+1);
    objj_msgSend(_object, "addObserver:forKeyPath:options:context:", self, _firstPart, kvoNewAndOld, nil);
    _value = objj_msgSend(_object, "valueForKey:", _firstPart);
    if (_value)
        objj_msgSend(_value, "addObserver:forKeyPath:options:context:", self, _secondPart, kvoNewAndOld, nil);
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("observeValueForKeyPath:ofObject:change:context:"), function $_CPKVOForwardingObserver__observeValueForKeyPath_ofObject_change_context_(self, _cmd, aKeyPath, anObject, changes, aContext)
{ with(self)
{
    if (anObject == _object)
    {
        objj_msgSend(_observer, "observeValueForKeyPath:ofObject:change:context:", _firstPart, _object, changes, _context);
        if (_value)
            objj_msgSend(_value, "removeObserver:forKeyPath:", self, _secondPart);
        _value = objj_msgSend(_object, "valueForKey:", _firstPart);
        if (_value)
            objj_msgSend(_value, "addObserver:forKeyPath:options:context:", self, _secondPart, kvoNewAndOld, nil);
    }
    else
    {
        objj_msgSend(_observer, "observeValueForKeyPath:ofObject:change:context:", _firstPart+"."+aKeyPath, _object, changes, _context);
    }
}
});
instance_methods[2] = new objj_method(sel_registerName("finalize"), function $_CPKVOForwardingObserver__finalize(self, _cmd)
{ with(self)
{
    if (_value)
        objj_msgSend(_value, "removeObserver:forKeyPath:", self, _secondPart);
    objj_msgSend(_object, "removeObserver:forKeyPath:", self, _firstPart);
    _object = nil;
    _observer = nil;
    _context = nil;
    _value = nil;
}
});
class_addMethods(the_class, instance_methods);
}
var _CPKVOInfoMake = _CPKVOInfoMake= function(anObserver, theOptions, aContext, aForwarder)
{
    return {
        observer: anObserver,
        options: theOptions,
        context: aContext,
        forwarder: aForwarder
    };
}
var _kvoMethodForMethod = _kvoMethodForMethod= function(theObject, theMethod)
{
    var methodName = theMethod.name,
        methodImplementation = theMethod.method_imp,
        setterKey = kvoKeyForSetter(methodName);
    if (setterKey && objj_msgSend(theObject, sel_registerName("automaticallyNotifiesObserversForKey:"), setterKey))
    {
        var newMethodImp = function(self)
        {
            objj_msgSend(self, "willChangeValueForKey:", setterKey);
            methodImplementation.apply(self, arguments);
            objj_msgSend(self, "didChangeValueForKey:", setterKey);
        }
        return newMethodImp;
    }
    return nil;
}
var kvoKeyForSetter = kvoKeyForSetter= function(selector)
{
    if (selector.split(":").length > 2 || !(objj_msgSend(selector, "hasPrefix:", "set") || objj_msgSend(selector, "hasPrefix:", "_set")))
        return nil;
    var keyIndex = selector.indexOf("set") + "set".length,
        colonIndex = selector.indexOf(":");
    return selector.charAt(keyIndex).toLowerCase() + selector.substring(keyIndex+1, colonIndex);
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPArray\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("addObserver:toObjectsAtIndexes:forKeyPath:options:context:"), function $CPArray__addObserver_toObjectsAtIndexes_forKeyPath_options_context_(self, _cmd, anObserver, indexes, aKeyPath, options, context)
{ with(self)
{
    var index = objj_msgSend(indexes, "firstIndex");
    while (index >= 0)
    {
        objj_msgSend(self[index], "addObserver:forKeyPath:options:context:", anObserver, aKeyPath, options, context);
  index = objj_msgSend(indexes, "indexGreaterThanIndex:", index);
    }
}
});
instance_methods[1] = new objj_method(sel_registerName("removeObserver:fromObjectsAtIndexes:forKeyPath:"), function $CPArray__removeObserver_fromObjectsAtIndexes_forKeyPath_(self, _cmd, anObserver, indexes, aKeyPath)
{ with(self)
{
    var index = objj_msgSend(indexes, "firstIndex");
    while (index >= 0)
    {
        objj_msgSend(self[index], "removeObserver:forKeyPath:", anObserver, aKeyPath);
  index = objj_msgSend(indexes, "indexGreaterThanIndex:", index);
    }
}
});
instance_methods[2] = new objj_method(sel_registerName("addObserver:forKeyPath:options:context:"), function $CPArray__addObserver_forKeyPath_options_context_(self, _cmd, observer, aKeyPath, options, context)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Unsupported method on CPArray");
}
});
instance_methods[3] = new objj_method(sel_registerName("removeObserver:forKeyPath:"), function $CPArray__removeObserver_forKeyPath_(self, _cmd, observer, aKeyPath)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Unsupported method on CPArray");
}
});
class_addMethods(the_class, instance_methods);
}

p;7;CPLog.jc;10098;window.CPLogDisable = false;
var CPLogDefaultTitle = "Cappuccino";
var CPLogLevels = ["fatal","error","warn","info","debug","trace"];
var CPLogDefaultLevel = CPLogLevels[0];
var CPLogLevelsInverted = {};
for (var i = 0; i < CPLogLevels.length; i++)
    CPLogLevelsInverted[CPLogLevels[i]] = i;
var _CPLogRegistrations = {};
var _CPFormatLogMessage = function(aString, aLevel, aTitle)
{
    var now = new Date(),
        zero = function(number, zeros)
                {
                    var digits = number.toString();
                    return zeros.substring(0, zeros.length - digits.length) + digits;
                }
    var level = aLevel ? " ["+aLevel+"]" : "";
    var message =
        now.getFullYear() + "-" + zero(now.getMonth()+1, "00") + "-" + zero(now.getDate(), "00") + " " +
        zero(now.getHours(), "00") + ":" + zero(now.getMinutes(), "00") + ":" + zero(now.getSeconds(), "00") + "." +
        zero(now.getMilliseconds(), "000")+" " + aTitle + level + ": " + aString;
    return message;
}
CPLogRegister= function(aProvider, aMaxLevel)
{
    CPLogRegisterRange(aProvider, CPLogLevels[0], aMaxLevel || CPLogLevels[CPLogLevels.length-1]);
}
CPLogRegisterRange= function(aProvider, aMinLevel, aMaxLevel)
{
    var min = CPLogLevelsInverted[aMinLevel];
    var max = CPLogLevelsInverted[aMaxLevel];
    if (min != undefined && max != undefined)
        for (var i = 0; i <= max; i++)
            CPLogRegisterSingle(aProvider, CPLogLevels[i]);
}
CPLogRegisterSingle= function(aProvider, aLevel)
{
    if (_CPLogRegistrations[aLevel] == undefined)
        _CPLogRegistrations[aLevel] = [aProvider];
    else
        _CPLogRegistrations[aLevel].push(aProvider);
}
CPLog= function(aString, aLevel, aTitle)
{
    if (aTitle == undefined)
        aTitle = CPLogDefaultTitle;
    if (aLevel == undefined)
        aLevel = CPLogDefaultLevel;
    if (_CPLogRegistrations[aLevel])
        for (var i = 0; i < _CPLogRegistrations[aLevel].length; i++)
             _CPLogRegistrations[aLevel][i](aString, aLevel, aTitle);
}
for (var i = 0; i < CPLogLevels.length; i++)
    CPLog[CPLogLevels[i]] = (function(level) { return function(message, title) { CPLog(message, level, title); }; })(CPLogLevels[i]);
ANSI_ESC = String.fromCharCode(0x1B);
ANSI_CSI = ANSI_ESC + '[';
ANSI_TEXT_PROP = 'm';
ANSI_RESET = '0';
ANSI_BOLD = '1';
ANSI_FAINT = '2';
ANSI_NORMAL = '22';
ANSI_ITALIC = '3';
ANSI_UNDER = '4';
ANSI_UNDER_DBL = '21';
ANSI_UNDER_OFF = '24';
ANSI_BLINK = '5';
ANSI_BLINK_FAST = '6';
ANSI_BLINK_OFF = '25';
ANSI_REVERSE = '7';
ANSI_POSITIVE = '27';
ANSI_CONCEAL = '8';
ANSI_REVEAL = '28';
ANSI_FG = '3';
ANSI_BG = '4';
ANSI_FG_INTENSE = '9';
ANSI_BG_INTENSE = '10';
ANSI_BLACK = '0';
ANSI_RED = '1';
ANSI_GREEN = '2';
ANSI_YELLOW = '3';
ANSI_BLUE = '4';
ANSI_MAGENTA = '5';
ANSI_CYAN = '6';
ANSI_WHITE = '7';
var colorCodeMap = {
    "black" : ANSI_BLACK,
    "red" : ANSI_RED,
    "green" : ANSI_GREEN,
    "yellow" : ANSI_YELLOW,
    "blue" : ANSI_BLUE,
    "magenta" : ANSI_MAGENTA,
    "cyan" : ANSI_CYAN,
    "white" : ANSI_WHITE
}
ANSIControlCode = function(code, parameters)
{
    if (parameters == undefined)
        parameters = "";
    else if (typeof(parameters) == 'object' && (parameters instanceof Array))
        parameters = parameters.join(';');
    return ANSI_CSI + String(parameters) + String(code);
}
ANSITextApplyProperties = function(string, properties)
{
    return ANSIControlCode(ANSI_TEXT_PROP, properties) + String(string) + ANSIControlCode(ANSI_TEXT_PROP);
}
ANSITextColorize = function(string, color)
{
    if (colorCodeMap[color] == undefined)
        return string;
    return ANSITextApplyProperties(string, ANSI_FG + colorCodeMap[color]);
}
var levelColorMap = {
    "fatal": "red",
    "error": "red",
    "warn" : "yellow",
    "info" : "green",
    "debug": "cyan",
    "trace": "blue"
}
CPLogPrint= function(aString, aLevel, aTitle)
{
    if (typeof print != "undefined")
    {
        if (aLevel == "fatal" || aLevel == "error" || aLevel == "warn")
            var message = ANSITextColorize(_CPFormatLogMessage(aString, aLevel, aTitle), levelColorMap[aLevel]);
        else
            var message = _CPFormatLogMessage(aString, ANSITextColorize(aLevel, levelColorMap[aLevel]), aTitle);
        print(message);
    }
}
CPLogAlert= function(aString, aLevel, aTitle)
{
    if (typeof alert != "undefined" && !window.CPLogDisable)
    {
        var message = _CPFormatLogMessage(aString, aLevel, aTitle);
        window.CPLogDisable = !confirm(message + "\n\n(Click cancel to stop log alerts)");
    }
}
CPLogConsole= function(aString, aLevel, aTitle)
{
    if (typeof console != "undefined")
    {
        var message = _CPFormatLogMessage(aString, aLevel, aTitle);
        var logger = {
            "fatal": "error",
            "error": "error",
            "warn": "warn",
            "info": "info",
            "debug": "debug",
            "trace": "debug"
        }[aLevel];
        if (logger && console[logger])
            console[logger](message);
        else if (console.log)
            console.log(message);
    }
}
var CPLogWindow = null;
CPLogPopup = function(aString, aLevel, aTitle)
{
    try {
        if (window.CPLogDisable || window.open == undefined)
            return;
        if (!CPLogWindow || !CPLogWindow.document)
        {
            CPLogWindow = window.open("", "_blank", "width=600,height=400,status=no,resizable=yes,scrollbars=yes");
            if (!CPLogWindow) {
                window.CPLogDisable = !confirm(aString + "\n\n(Disable pop-up blocking for CPLog window; Click cancel to stop log alerts)");
                return;
            }
            _CPLogInitPopup(CPLogWindow);
        }
        var logDiv = CPLogWindow.document.createElement("div");
        logDiv.setAttribute("class", aLevel || "fatal");
        var message = _CPFormatLogMessage(aString, null, aTitle);
        logDiv.appendChild(CPLogWindow.document.createTextNode(message));
        CPLogWindow.log.appendChild(logDiv);
        if (CPLogWindow.focusEnabled.checked)
            CPLogWindow.focus();
        if (CPLogWindow.blockEnabled.checked)
            CPLogWindow.blockEnabled.checked = CPLogWindow.confirm(message+"\nContinue blocking?");
        if (CPLogWindow.scrollEnabled.checked)
            CPLogWindow.scrollToBottom();
    } catch(e) {
    }
}
var _CPLogInitPopup = function(logWindow)
{
    var doc = logWindow.document;
    doc.writeln("<html><head><title></title></head><body></body></html>");
    doc.title = CPLogDefaultTitle + " Run Log";
    var head = doc.getElementsByTagName("head")[0];
    var body = doc.getElementsByTagName("body")[0];
    var base = window.location.protocol + "//" + window.location.host + window.location.pathname;
    base = base.substring(0,base.lastIndexOf("/")+1);
    var link = doc.createElement("link");
    link.setAttribute("type", "text/css");
    link.setAttribute("rel", "stylesheet");
    link.setAttribute("href", base+"Frameworks/Foundation/Resources/log.css");
    link.setAttribute("media", "screen");
    head.appendChild(link);
    var div = doc.createElement("div");
    div.setAttribute("id", "header");
    body.appendChild(div);
    var ul = doc.createElement("ul");
    ul.setAttribute("id", "enablers");
    div.appendChild(ul);
    for (var i = 0; i < CPLogLevels.length; i++) {
        var li = doc.createElement("li");
        li.setAttribute("id", "en"+CPLogLevels[i]);
        li.setAttribute("class", CPLogLevels[i]);
        li.setAttribute("onclick", "toggle(this);");
        li.setAttribute("enabled", "yes");
        li.appendChild(doc.createTextNode(CPLogLevels[i]));
        ul.appendChild(li);
    }
    var ul = doc.createElement("ul");
    ul.setAttribute("id", "options");
    div.appendChild(ul);
    var options = {"focus":["Focus",false], "block":["Block",false], "wrap":["Wrap",false], "scroll":["Scroll",true], "close":["Close",true]};
    for (o in options) {
        var li = doc.createElement("li");
        ul.appendChild(li);
        logWindow[o+"Enabled"] = doc.createElement("input");
        logWindow[o+"Enabled"].setAttribute("id", o);
        logWindow[o+"Enabled"].setAttribute("type", "checkbox");
        if (options[o][1])
            logWindow[o+"Enabled"].setAttribute("checked", "checked");
        li.appendChild(logWindow[o+"Enabled"]);
        var label = doc.createElement("label");
        label.setAttribute("for", o);
        label.appendChild(doc.createTextNode(options[o][0]));
        li.appendChild(label);
    }
    logWindow.log = doc.createElement("div");
    logWindow.log.setAttribute("class", "enerror endebug enwarn eninfo enfatal entrace");
    body.appendChild(logWindow.log);
    logWindow.toggle = function(elem) {
        var enabled = (elem.getAttribute("enabled") == "yes") ? "no" : "yes";
        elem.setAttribute("enabled", enabled);
        if (enabled == "yes")
            logWindow.log.className += " " + elem.id
        else
            logWindow.log.className = logWindow.log.className.replace(new RegExp("[\\s]*"+elem.id, "g"), "");
    }
    logWindow.scrollToBottom = function() {
        logWindow.scrollTo(0, body.offsetHeight);
    }
    logWindow.wrapEnabled.addEventListener("click", function() {
        logWindow.log.setAttribute("wrap", logWindow.wrapEnabled.checked ? "yes" : "no");
    }, false);
    logWindow.addEventListener("keydown", function(e) {
        var e = e || logWindow.event;
        if (e.keyCode == 75 && (e.ctrlKey || e.metaKey)) {
            while (logWindow.log.firstChild) {
                logWindow.log.removeChild(logWindow.log.firstChild);
            }
            e.preventDefault();
        }
    }, "false");
    window.addEventListener("unload", function() {
        if (logWindow && logWindow.closeEnabled && logWindow.closeEnabled.checked) {
            window.CPLogDisable = true;
            logWindow.close();
        }
    }, false);
    logWindow.addEventListener("unload", function() {
        if (!window.CPLogDisable) {
            window.CPLogDisable = !confirm("Click cancel to stop logging");
        }
    }, false);
}

p;16;CPNotification.ji;10;CPObject.ji;13;CPException.jc;2315;
{var the_class = objj_allocateClassPair(CPObject, "CPNotification"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_name"), new objj_ivar("_object"), new objj_ivar("_userInfo")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("notificationWithName:object:userInfo:"), function $CPNotification__notificationWithName_object_userInfo_(self, _cmd, aNotificationName, anObject, aUserInfo)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithName:object:userInfo:", aNotificationName, anObject, aUserInfo);
}
});
class_methods[1] = new objj_method(sel_registerName("notificationWithName:object:"), function $CPNotification__notificationWithName_object_(self, _cmd, aNotificationName, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithName:object:userInfo:", aNotificationName, anObject, nil);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("init"), function $CPNotification__init(self, _cmd)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPUnsupportedMethodException, "CPNotification's init method should not be used");
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithName:object:userInfo:"), function $CPNotification__initWithName_object_userInfo_(self, _cmd, aNotificationName, anObject, aUserInfo)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _name = aNotificationName;
        _object = anObject;
        _userInfo = aUserInfo;
    }
    return self;
}
});
instance_methods[2] = new objj_method(sel_registerName("name"), function $CPNotification__name(self, _cmd)
{ with(self)
{
    return _name;
}
});
instance_methods[3] = new objj_method(sel_registerName("object"), function $CPNotification__object(self, _cmd)
{ with(self)
{
    return _object;
}
});
instance_methods[4] = new objj_method(sel_registerName("userInfo"), function $CPNotification__userInfo(self, _cmd)
{ with(self)
{
    return _userInfo;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}

p;22;CPNotificationCenter.ji;9;CPArray.ji;14;CPDictionary.ji;16;CPNotification.ji;13;CPException.jc;10638;
var CPNotificationDefaultCenter = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPNotificationCenter"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_namedRegistries"), new objj_ivar("_unnamedRegistry")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("defaultCenter"), function $CPNotificationCenter__defaultCenter(self, _cmd)
{ with(self)
{
    if (!CPNotificationDefaultCenter)
        CPNotificationDefaultCenter = objj_msgSend(objj_msgSend(CPNotificationCenter, "alloc"), "init");
    return CPNotificationDefaultCenter;
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("init"), function $CPNotificationCenter__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _namedRegistries = objj_msgSend(CPDictionary, "dictionary");
        _unnamedRegistry = objj_msgSend(objj_msgSend(_CPNotificationRegistry, "alloc"), "init");
    }
   return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("addObserver:selector:name:object:"), function $CPNotificationCenter__addObserver_selector_name_object_(self, _cmd, anObserver, aSelector, aNotificationName, anObject)
{ with(self)
{
    var registry,
        observer = objj_msgSend(objj_msgSend(_CPNotificationObserver, "alloc"), "initWithObserver:selector:", anObserver, aSelector);
    if (aNotificationName == nil)
        registry = _unnamedRegistry;
    else if (!(registry = objj_msgSend(_namedRegistries, "objectForKey:", aNotificationName)))
    {
        registry = objj_msgSend(objj_msgSend(_CPNotificationRegistry, "alloc"), "init");
        objj_msgSend(_namedRegistries, "setObject:forKey:", registry, aNotificationName);
    }
    objj_msgSend(registry, "addObserver:object:", observer, anObject);
}
});
instance_methods[2] = new objj_method(sel_registerName("removeObserver:"), function $CPNotificationCenter__removeObserver_(self, _cmd, anObserver)
{ with(self)
{
    var name = nil,
        names = objj_msgSend(_namedRegistries, "keyEnumerator");
    while (name = objj_msgSend(names, "nextObject"))
        objj_msgSend(objj_msgSend(_namedRegistries, "objectForKey:", name), "removeObserver:object:", anObserver, nil);
    objj_msgSend(_unnamedRegistry, "removeObserver:object:", anObserver, nil);
}
});
instance_methods[3] = new objj_method(sel_registerName("removeObserver:name:object:"), function $CPNotificationCenter__removeObserver_name_object_(self, _cmd, anObserver, aNotificationName, anObject)
{ with(self)
{
    if (aNotificationName == nil)
    {
        var name = nil,
            names = objj_msgSend(_namedRegistries, "keyEnumerator");
        while (name = objj_msgSend(names, "nextObject"))
            objj_msgSend(objj_msgSend(_namedRegistries, "objectForKey:", name), "removeObserver:object:", anObserver, anObject);
        objj_msgSend(_unnamedRegistry, "removeObserver:object:", anObserver, anObject);
    }
    else
        objj_msgSend(objj_msgSend(_namedRegistries, "objectForKey:", aNotificationName), "removeObserver:object:", anObserver, anObject);
}
});
instance_methods[4] = new objj_method(sel_registerName("postNotification:"), function $CPNotificationCenter__postNotification_(self, _cmd, aNotification)
{ with(self)
{
    if (!aNotification)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "postNotification: does not except 'nil' notifications");
    _CPNotificationCenterPostNotification(self, aNotification);
}
});
instance_methods[5] = new objj_method(sel_registerName("postNotificationName:object:userInfo:"), function $CPNotificationCenter__postNotificationName_object_userInfo_(self, _cmd, aNotificationName, anObject, aUserInfo)
{ with(self)
{
   _CPNotificationCenterPostNotification(self, objj_msgSend(objj_msgSend(CPNotification, "alloc"), "initWithName:object:userInfo:", aNotificationName, anObject, aUserInfo));
}
});
instance_methods[6] = new objj_method(sel_registerName("postNotificationName:object:"), function $CPNotificationCenter__postNotificationName_object_(self, _cmd, aNotificationName, anObject)
{ with(self)
{
   _CPNotificationCenterPostNotification(self, objj_msgSend(objj_msgSend(CPNotification, "alloc"), "initWithName:object:userInfo:", aNotificationName, anObject, nil));
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
var _CPNotificationCenterPostNotification = function( self, aNotification)
{
    objj_msgSend(self._unnamedRegistry, "postNotification:", aNotification);
    objj_msgSend(objj_msgSend(self._namedRegistries, "objectForKey:", objj_msgSend(aNotification, "name")), "postNotification:", aNotification);
}
{var the_class = objj_allocateClassPair(CPObject, "_CPNotificationRegistry"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_objectObservers"), new objj_ivar("_observerRemoval"), new objj_ivar("_postingObservers")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("init"), function $_CPNotificationRegistry__init(self, _cmd)
{ with(self)
{
    if (self)
        _objectObservers = objj_msgSend(CPDictionary, "dictionary");
   return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("addObserver:object:"), function $_CPNotificationRegistry__addObserver_object_(self, _cmd, anObserver, anObject)
{ with(self)
{
    if (!anObject)
        anObject = objj_msgSend(CPNull, "null");
    var observers = objj_msgSend(_objectObservers, "objectForKey:", objj_msgSend(anObject, "hash"));
    if (!observers)
    {
        observers = [];
        objj_msgSend(_objectObservers, "setObject:forKey:", observers, objj_msgSend(anObject, "hash"));
    }
    if (observers == _postingObservers)
        _postingObservers = objj_msgSend(observers, "copy");
    observers.push(anObserver);
}
});
instance_methods[2] = new objj_method(sel_registerName("removeObserver:object:"), function $_CPNotificationRegistry__removeObserver_object_(self, _cmd, anObserver, anObject)
{ with(self)
{
    var removedKeys = [];
    if (anObject == nil)
    {
        var key = nil,
            keys = objj_msgSend(_objectObservers, "keyEnumerator");
        while (key = objj_msgSend(keys, "nextObject"))
        {
            var observers = objj_msgSend(_objectObservers, "objectForKey:", key),
                count = observers ? observers.length : 0;
            while (count--)
                if (objj_msgSend(observers[count], "observer") == anObserver)
                {
                    _observerRemoval = YES;
                    if (observers == _postingObservers)
                        _postingObservers = objj_msgSend(observers, "copy");
                    observers.splice(count, 1);
                }
            if (!observers || observers.length == 0)
                removedKeys.push(key);
        }
    }
    else
    {
        var key = objj_msgSend(anObject, "hash"),
            observers = objj_msgSend(_objectObservers, "objectForKey:", key);
            count = observers ? observers.length : 0;
        while (count--)
            if (objj_msgSend(observers[count], "observer") == anObserver)
            {
                _observerRemoval = YES;
                if (observers == _postingObservers)
                    _postingObservers = objj_msgSend(observers, "copy");
                observers.splice(count, 1)
            }
        if (!observers || observers.length == 0)
            removedKeys.push(key);
    }
    var count = removedKeys.length;
    while (count--)
        objj_msgSend(_objectObservers, "removeObjectForKey:", removedKeys[count]);
}
});
instance_methods[3] = new objj_method(sel_registerName("postNotification:"), function $_CPNotificationRegistry__postNotification_(self, _cmd, aNotification)
{ with(self)
{
    var object = objj_msgSend(aNotification, "object");
    if (object != nil && (_postingObservers = objj_msgSend(_objectObservers, "objectForKey:", objj_msgSend(object, "hash"))))
    {
        var observers = _postingObservers,
            count = observers.length;
        _observerRemoval = NO;
        while (count--)
        {
            var observer = _postingObservers[count];
            if (!_observerRemoval || objj_msgSend(observers, "indexOfObjectIdenticalTo:", observer) != CPNotFound)
                objj_msgSend(observer, "postNotification:", aNotification);
        }
    }
    _postingObservers = objj_msgSend(_objectObservers, "objectForKey:", objj_msgSend(objj_msgSend(CPNull, "null"), "hash"));
    if (!_postingObservers)
        return;
    var observers = _postingObservers,
        count = observers.length;
    _observerRemoval = NO;
    while (count--)
    {
        var observer = _postingObservers[count];
        if (!_observerRemoval || objj_msgSend(observers, "indexOfObjectIdenticalTo:", observer) != CPNotFound)
            objj_msgSend(observer, "postNotification:", aNotification);
    }
    _postingObservers = nil;
}
});
instance_methods[4] = new objj_method(sel_registerName("count"), function $_CPNotificationRegistry__count(self, _cmd)
{ with(self)
{
    return objj_msgSend(_objectObservers, "count");
}
});
class_addMethods(the_class, instance_methods);
}
{var the_class = objj_allocateClassPair(CPObject, "_CPNotificationObserver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_observer"), new objj_ivar("_selector")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithObserver:selector:"), function $_CPNotificationObserver__initWithObserver_selector_(self, _cmd, anObserver, aSelector)
{ with(self)
{
    if (self)
    {
        _observer = anObserver;
        _selector = aSelector;
    }
   return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("observer"), function $_CPNotificationObserver__observer(self, _cmd)
{ with(self)
{
    return _observer;
}
});
instance_methods[2] = new objj_method(sel_registerName("postNotification:"), function $_CPNotificationObserver__postNotification_(self, _cmd, aNotification)
{ with(self)
{
    objj_msgSend(_observer, "performSelector:withObject:", _selector, aNotification);
}
});
class_addMethods(the_class, instance_methods);
}

p;8;CPNull.ji;10;CPObject.jc;562;
var CPNullSharedNull = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPNull"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("null"), function $CPNull__null(self, _cmd)
{ with(self)
{
    if (!CPNullSharedNull)
        CPNullSharedNull = objj_msgSend(objj_msgSend(CPNull, "alloc"), "init");
    return CPNullSharedNull;
}
});
class_addMethods(meta_class, class_methods);
}

p;10;CPNumber.ji;10;CPObject.ji;15;CPObjJRuntime.jc;9895;
var __placeholder = new Number(),
    _CPNumberHashes = { };
{var the_class = objj_allocateClassPair(CPObject, "CPNumber"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("alloc"), function $CPNumber__alloc(self, _cmd)
{ with(self)
{
    return __placeholder;
}
});
class_methods[1] = new objj_method(sel_registerName("numberWithBool:"), function $CPNumber__numberWithBool_(self, _cmd, aBoolean)
{ with(self)
{
    return aBoolean;
}
});
class_methods[2] = new objj_method(sel_registerName("numberWithChar:"), function $CPNumber__numberWithChar_(self, _cmd, aChar)
{ with(self)
{
    if (aChar.charCodeAt)
        return aChar.charCodeAt(0);
    return aChar;
}
});
class_methods[3] = new objj_method(sel_registerName("numberWithDouble:"), function $CPNumber__numberWithDouble_(self, _cmd, aDouble)
{ with(self)
{
    return aDouble;
}
});
class_methods[4] = new objj_method(sel_registerName("numberWithFloat:"), function $CPNumber__numberWithFloat_(self, _cmd, aFloat)
{ with(self)
{
    return aFloat;
}
});
class_methods[5] = new objj_method(sel_registerName("numberWithInt:"), function $CPNumber__numberWithInt_(self, _cmd, anInt)
{ with(self)
{
    return anInt;
}
});
class_methods[6] = new objj_method(sel_registerName("numberWithLong:"), function $CPNumber__numberWithLong_(self, _cmd, aLong)
{ with(self)
{
    return aLong;
}
});
class_methods[7] = new objj_method(sel_registerName("numberWithLongLong:"), function $CPNumber__numberWithLongLong_(self, _cmd, aLongLong)
{ with(self)
{
    return aLongLong;
}
});
class_methods[8] = new objj_method(sel_registerName("numberWithShort:"), function $CPNumber__numberWithShort_(self, _cmd, aShort)
{ with(self)
{
    return aShort;
}
});
class_methods[9] = new objj_method(sel_registerName("numberWithUnsignedChar:"), function $CPNumber__numberWithUnsignedChar_(self, _cmd, aChar)
{ with(self)
{
    if (aChar.charCodeAt)
        return aChar.charCodeAt(0);
    return aChar;
}
});
class_methods[10] = new objj_method(sel_registerName("numberWithUnsignedInt:"), function $CPNumber__numberWithUnsignedInt_(self, _cmd, anUnsignedInt)
{ with(self)
{
    return anUnsignedInt;
}
});
class_methods[11] = new objj_method(sel_registerName("numberWithUnsignedLong:"), function $CPNumber__numberWithUnsignedLong_(self, _cmd, anUnsignedLong)
{ with(self)
{
    return anUnsignedLong;
}
});
class_methods[12] = new objj_method(sel_registerName("numberWithUnsignedShort:"), function $CPNumber__numberWithUnsignedShort_(self, _cmd, anUnsignedShort)
{ with(self)
{
    return anUnsignedShort;
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithBool:"), function $CPNumber__initWithBool_(self, _cmd, aBoolean)
{ with(self)
{
    return aBoolean;
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithChar:"), function $CPNumber__initWithChar_(self, _cmd, aChar)
{ with(self)
{
    if (aChar.charCodeAt)
        return aChar.charCodeAt(0);
    return aChar;
}
});
instance_methods[2] = new objj_method(sel_registerName("initWithDouble:"), function $CPNumber__initWithDouble_(self, _cmd, aDouble)
{ with(self)
{
    return aDouble;
}
});
instance_methods[3] = new objj_method(sel_registerName("initWithFloat:"), function $CPNumber__initWithFloat_(self, _cmd, aFloat)
{ with(self)
{
    return aFloat;
}
});
instance_methods[4] = new objj_method(sel_registerName("initWithInt:"), function $CPNumber__initWithInt_(self, _cmd, anInt)
{ with(self)
{
    return anInt;
}
});
instance_methods[5] = new objj_method(sel_registerName("initWithLong:"), function $CPNumber__initWithLong_(self, _cmd, aLong)
{ with(self)
{
    return aLong;
}
});
instance_methods[6] = new objj_method(sel_registerName("initWithLongLong:"), function $CPNumber__initWithLongLong_(self, _cmd, aLongLong)
{ with(self)
{
    return aLongLong;
}
});
instance_methods[7] = new objj_method(sel_registerName("initWithShort:"), function $CPNumber__initWithShort_(self, _cmd, aShort)
{ with(self)
{
    return aShort;
}
});
instance_methods[8] = new objj_method(sel_registerName("initWithUnsignedChar:"), function $CPNumber__initWithUnsignedChar_(self, _cmd, aChar)
{ with(self)
{
    if (aChar.charCodeAt)
        return aChar.charCodeAt(0);
    return aChar;
}
});
instance_methods[9] = new objj_method(sel_registerName("initWithUnsignedInt:"), function $CPNumber__initWithUnsignedInt_(self, _cmd, anUnsignedInt)
{ with(self)
{
    return anUnsignedInt;
}
});
instance_methods[10] = new objj_method(sel_registerName("initWithUnsignedLong:"), function $CPNumber__initWithUnsignedLong_(self, _cmd, anUnsignedLong)
{ with(self)
{
    return anUnsignedLong;
}
});
instance_methods[11] = new objj_method(sel_registerName("initWithUnsignedShort:"), function $CPNumber__initWithUnsignedShort_(self, _cmd, anUnsignedShort)
{ with(self)
{
    return anUnsignedShort;
}
});
instance_methods[12] = new objj_method(sel_registerName("hash"), function $CPNumber__hash(self, _cmd)
{ with(self)
{
    if (!_CPNumberHashes[self])
        _CPNumberHashes[self] = _objj_generateObjectHash();
    return _CPNumberHashes[self];
}
});
instance_methods[13] = new objj_method(sel_registerName("boolValue"), function $CPNumber__boolValue(self, _cmd)
{ with(self)
{
    return self ? true : false;
}
});
instance_methods[14] = new objj_method(sel_registerName("charValue"), function $CPNumber__charValue(self, _cmd)
{ with(self)
{
    return String.fromCharCode(self);
}
});
instance_methods[15] = new objj_method(sel_registerName("decimalValue"), function $CPNumber__decimalValue(self, _cmd)
{ with(self)
{
    objj_throw_exception("decimalValue: NOT YET IMPLEMENTED");
}
});
instance_methods[16] = new objj_method(sel_registerName("descriptionWithLocale:"), function $CPNumber__descriptionWithLocale_(self, _cmd, aDictionary)
{ with(self)
{
    if (!aDictionary) return toString();
    objj_throw_exception("descriptionWithLocale: NOT YET IMPLEMENTED");
}
});
instance_methods[17] = new objj_method(sel_registerName("description"), function $CPNumber__description(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "descriptionWithLocale:", nil);
}
});
instance_methods[18] = new objj_method(sel_registerName("doubleValue"), function $CPNumber__doubleValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
});
instance_methods[19] = new objj_method(sel_registerName("floatValue"), function $CPNumber__floatValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
});
instance_methods[20] = new objj_method(sel_registerName("intValue"), function $CPNumber__intValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
});
instance_methods[21] = new objj_method(sel_registerName("longLongValue"), function $CPNumber__longLongValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
});
instance_methods[22] = new objj_method(sel_registerName("longValue"), function $CPNumber__longValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
});
instance_methods[23] = new objj_method(sel_registerName("shortValue"), function $CPNumber__shortValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
});
instance_methods[24] = new objj_method(sel_registerName("stringValue"), function $CPNumber__stringValue(self, _cmd)
{ with(self)
{
    return toString();
}
});
instance_methods[25] = new objj_method(sel_registerName("unsignedCharValue"), function $CPNumber__unsignedCharValue(self, _cmd)
{ with(self)
{
    return String.fromCharCode(self);
}
});
instance_methods[26] = new objj_method(sel_registerName("unsignedIntValue"), function $CPNumber__unsignedIntValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
});
instance_methods[27] = new objj_method(sel_registerName("unsignedLongValue"), function $CPNumber__unsignedLongValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
});
instance_methods[28] = new objj_method(sel_registerName("unsignedShortValue"), function $CPNumber__unsignedShortValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
});
instance_methods[29] = new objj_method(sel_registerName("compare:"), function $CPNumber__compare_(self, _cmd, aNumber)
{ with(self)
{
    if (self > aNumber) return CPOrderedDescending;
    else if (self < aNumber) return CPOrderedAscending;
    return CPOrderedSame;
}
});
instance_methods[30] = new objj_method(sel_registerName("isEqualToNumber:"), function $CPNumber__isEqualToNumber_(self, _cmd, aNumber)
{ with(self)
{
    return self == aNumber;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
{
var the_class = objj_getClass("CPNumber")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPNumber\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithCoder:"), function $CPNumber__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(aCoder, "decodeNumber");
}
});
instance_methods[1] = new objj_method(sel_registerName("encodeWithCoder:"), function $CPNumber__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeNumber:forKey:", self, "self");
}
});
class_addMethods(the_class, instance_methods);
}
Number.prototype.isa = CPNumber;
Boolean.prototype.isa = CPNumber;
objj_msgSend(CPNumber, "initialize");

p;10;CPObject.jc;9550;{var the_class = objj_allocateClassPair(Nil, "CPObject"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("isa")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("load"), function $CPObject__load(self, _cmd)
{ with(self)
{}
});
class_methods[1] = new objj_method(sel_registerName("initialize"), function $CPObject__initialize(self, _cmd)
{ with(self)
{}
});
class_methods[2] = new objj_method(sel_registerName("new"), function $CPObject__new(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
});
class_methods[3] = new objj_method(sel_registerName("alloc"), function $CPObject__alloc(self, _cmd)
{ with(self)
{
    return class_createInstance(self);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("init"), function $CPObject__init(self, _cmd)
{ with(self)
{
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("copy"), function $CPObject__copy(self, _cmd)
{ with(self)
{
    return self;
}
});
instance_methods[2] = new objj_method(sel_registerName("mutableCopy"), function $CPObject__mutableCopy(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "copy");
}
});
instance_methods[3] = new objj_method(sel_registerName("dealloc"), function $CPObject__dealloc(self, _cmd)
{ with(self)
{}
});
class_methods[4] = new objj_method(sel_registerName("class"), function $CPObject__class(self, _cmd)
{ with(self)
{
    return self;
}
});
instance_methods[4] = new objj_method(sel_registerName("class"), function $CPObject__class(self, _cmd)
{ with(self)
{
    return isa;
}
});
class_methods[5] = new objj_method(sel_registerName("superclass"), function $CPObject__superclass(self, _cmd)
{ with(self)
{
    return super_class;
}
});
class_methods[6] = new objj_method(sel_registerName("isSubclassOfClass:"), function $CPObject__isSubclassOfClass_(self, _cmd, aClass)
{ with(self)
{
    var theClass = self;
    for(; theClass; theClass = theClass.super_class)
        if(theClass == aClass) return YES;
    return NO;
}
});
instance_methods[5] = new objj_method(sel_registerName("isKindOfClass:"), function $CPObject__isKindOfClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_msgSend(isa, "isSubclassOfClass:", aClass);
}
});
instance_methods[6] = new objj_method(sel_registerName("isMemberOfClass:"), function $CPObject__isMemberOfClass_(self, _cmd, aClass)
{ with(self)
{
    return self.isa == aClass;
}
});
instance_methods[7] = new objj_method(sel_registerName("isProxy"), function $CPObject__isProxy(self, _cmd)
{ with(self)
{
    return NO;
}
});
class_methods[7] = new objj_method(sel_registerName("instancesRespondToSelector:"), function $CPObject__instancesRespondToSelector_(self, _cmd, aSelector)
{ with(self)
{
    return class_getInstanceMethod(self, aSelector);
}
});
instance_methods[8] = new objj_method(sel_registerName("respondsToSelector:"), function $CPObject__respondsToSelector_(self, _cmd, aSelector)
{ with(self)
{
    return class_getInstanceMethod(isa, aSelector) != NULL;
}
});
instance_methods[9] = new objj_method(sel_registerName("methodForSelector:"), function $CPObject__methodForSelector_(self, _cmd, aSelector)
{ with(self)
{
    return class_getInstanceMethod(isa, aSelector);
}
});
class_methods[8] = new objj_method(sel_registerName("instanceMethodForSelector:"), function $CPObject__instanceMethodForSelector_(self, _cmd, aSelector)
{ with(self)
{
    return class_getInstanceMethod(self, aSelector);
}
});
instance_methods[10] = new objj_method(sel_registerName("methodSignatureForSelector:"), function $CPObject__methodSignatureForSelector_(self, _cmd, aSelector)
{ with(self)
{
    return nil;
}
});
instance_methods[11] = new objj_method(sel_registerName("description"), function $CPObject__description(self, _cmd)
{ with(self)
{
    return "<" + isa.name + " 0x" + objj_msgSend(CPString, "stringWithHash:", objj_msgSend(self, "hash")) + ">";
}
});
instance_methods[12] = new objj_method(sel_registerName("performSelector:"), function $CPObject__performSelector_(self, _cmd, aSelector)
{ with(self)
{
    return objj_msgSend(self, aSelector);
}
});
instance_methods[13] = new objj_method(sel_registerName("performSelector:withObject:"), function $CPObject__performSelector_withObject_(self, _cmd, aSelector, anObject)
{ with(self)
{
    return objj_msgSend(self, aSelector, anObject);
}
});
instance_methods[14] = new objj_method(sel_registerName("performSelector:withObject:withObject:"), function $CPObject__performSelector_withObject_withObject_(self, _cmd, aSelector, anObject, anotherObject)
{ with(self)
{
    return objj_msgSend(self, aSelector, anObject, anotherObject);
}
});
instance_methods[15] = new objj_method(sel_registerName("forwardInvocation:"), function $CPObject__forwardInvocation_(self, _cmd, anInvocation)
{ with(self)
{
    objj_msgSend(self, "doesNotRecognizeSelector:", objj_msgSend(anInvocation, "selector"));
}
});
instance_methods[16] = new objj_method(sel_registerName("forward::"), function $CPObject__forward__(self, _cmd, aSelector, args)
{ with(self)
{
    var signature = objj_msgSend(self, "methodSignatureForSelector:", aSelector);
    if (signature)
    {
        invocation = objj_msgSend(CPInvocation, "invocationWithMethodSignature:", signature);
        objj_msgSend(invocation, "setTarget:", self);
        objj_msgSend(invocation, "setSelector:", aSelector);
        var index = 2,
            count = args.length;
        for (; index < count; ++index)
            objj_msgSend(invocation, "setArgument:atIndex:", args[index], index);
        objj_msgSend(self, "forwardInvocation:", invocation);
        return objj_msgSend(invocation, "returnValue");
    }
    objj_msgSend(self, "doesNotRecognizeSelector:", aSelector);
}
});
instance_methods[17] = new objj_method(sel_registerName("doesNotRecognizeSelector:"), function $CPObject__doesNotRecognizeSelector_(self, _cmd, aSelector)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, (class_isMetaClass(isa)?"+":"-")+" ["+objj_msgSend(self, "className")+" "+aSelector+"] unrecognized selector sent to "+(class_isMetaClass(isa)?"class":"instance")+" 0x"+objj_msgSend(CPString, "stringWithHash:", objj_msgSend(self, "hash")));
}
});
instance_methods[18] = new objj_method(sel_registerName("awakeAfterUsingCoder:"), function $CPObject__awakeAfterUsingCoder_(self, _cmd, aCoder)
{ with(self)
{
    return self;
}
});
instance_methods[19] = new objj_method(sel_registerName("classForKeyedArchiver"), function $CPObject__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "classForCoder");
}
});
instance_methods[20] = new objj_method(sel_registerName("classForCoder"), function $CPObject__classForCoder(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "class");
}
});
instance_methods[21] = new objj_method(sel_registerName("replacementObjectForArchiver:"), function $CPObject__replacementObjectForArchiver_(self, _cmd, anArchiver)
{ with(self)
{
    return objj_msgSend(self, "replacementObjectForCoder:", anArchiver);
}
});
instance_methods[22] = new objj_method(sel_registerName("replacementObjectForKeyedArchiver:"), function $CPObject__replacementObjectForKeyedArchiver_(self, _cmd, anArchiver)
{ with(self)
{
    return objj_msgSend(self, "replacementObjectForCoder:", anArchiver);
}
});
instance_methods[23] = new objj_method(sel_registerName("replacementObjectForCoder:"), function $CPObject__replacementObjectForCoder_(self, _cmd, aCoder)
{ with(self)
{
    return self;
}
});
class_methods[9] = new objj_method(sel_registerName("setVersion:"), function $CPObject__setVersion_(self, _cmd, aVersion)
{ with(self)
{
    version = aVersion;
    return self;
}
});
class_methods[10] = new objj_method(sel_registerName("version"), function $CPObject__version(self, _cmd)
{ with(self)
{
    return version;
}
});
instance_methods[24] = new objj_method(sel_registerName("className"), function $CPObject__className(self, _cmd)
{ with(self)
{
    return isa.name;
}
});
instance_methods[25] = new objj_method(sel_registerName("autorelease"), function $CPObject__autorelease(self, _cmd)
{ with(self)
{
    return self;
}
});
instance_methods[26] = new objj_method(sel_registerName("hash"), function $CPObject__hash(self, _cmd)
{ with(self)
{
    return __address;
}
});
instance_methods[27] = new objj_method(sel_registerName("isEqual:"), function $CPObject__isEqual_(self, _cmd, anObject)
{ with(self)
{
    return self === anObject;
}
});
instance_methods[28] = new objj_method(sel_registerName("retain"), function $CPObject__retain(self, _cmd)
{ with(self)
{
    return self;
}
});
instance_methods[29] = new objj_method(sel_registerName("release"), function $CPObject__release(self, _cmd)
{ with(self)
{}
});
instance_methods[30] = new objj_method(sel_registerName("self"), function $CPObject__self(self, _cmd)
{ with(self)
{
    return self;
}
});
instance_methods[31] = new objj_method(sel_registerName("superclass"), function $CPObject__superclass(self, _cmd)
{ with(self)
{
    return isa.super_class;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
objj_object.prototype.toString = function()
{
    if (this.isa && class_getInstanceMethod(this.isa, "description") != NULL)
        return objj_msgSend(this, "description")
    else
        return String(this) + " (-description not implemented)";
}

p;15;CPObjJRuntime.ji;7;CPLog.jc;467;
CPStringFromSelector= function(aSelector)
{
    return sel_getName(aSelector);
}
CPSelectorFromString= function(aSelectorName)
{
    return sel_registerName(aSelectorName);
}
CPClassFromString= function(aClassName)
{
    return objj_getClass(aClassName);
}
CPStringFromClass= function(aClass)
{
    return class_getName(aClass);
}
CPOrderedAscending = -1;
CPOrderedSame = 0;
CPOrderedDescending = 1;
CPNotFound = -1;
MIN = Math.min;
MAX = Math.max;
ABS = Math.abs;

p;29;CPPropertyListSerialization.jc;1175;CPPropertyListOpenStepFormat = kCFPropertyListOpenStepFormat;
CPPropertyListXMLFormat_v1_0 = kCFPropertyListXMLFormat_v1_0;
CPPropertyListBinaryFormat_v1_0 = kCFPropertyListBinaryFormat_v1_0;
CPPropertyList280NorthFormat_v1_0 = kCFPropertyList280NorthFormat_v1_0;
{var the_class = objj_allocateClassPair(CPObject, "CPPropertyListSerialization"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("dataFromPropertyList:format:errorDescription:"), function $CPPropertyListSerialization__dataFromPropertyList_format_errorDescription_(self, _cmd, aPlist, aFormat, anErrorString)
{ with(self)
{
    return CPPropertyListCreateData(aPlist, aFormat);
}
});
class_methods[1] = new objj_method(sel_registerName("propertyListFromData:format:errorDescription:"), function $CPPropertyListSerialization__propertyListFromData_format_errorDescription_(self, _cmd, data, aFormat, errorString)
{ with(self)
{
    return CPPropertyListCreateFromData(data, aFormat);
}
});
class_addMethods(meta_class, class_methods);
}

p;9;CPRange.jc;1581;CPMakeRange= function(location, length)
{
    return { location: location, length: length };
}
CPCopyRange= function(aRange)
{
    return { location: aRange.location, length: aRange.length };
}
CPMakeRangeCopy= function(aRange)
{
    return { location:aRange.location, length:aRange.length };
}
CPEmptyRange= function(aRange)
{
    return aRange.length == 0;
}
CPMaxRange= function(aRange)
{
    return aRange.location + aRange.length;
}
CPEqualRanges= function(lhsRange, rhsRange)
{
    return ((lhsRange.location == rhsRange.location) && (lhsRange.length == rhsRange.length));
}
CPLocationInRange= function(aLocation, aRange)
{
    return (aLocation >= aRange.location) && (aLocation < CPMaxRange(aRange));
}
CPUnionRange= function(lhsRange, rhsRange)
{
    var location = Math.min(lhsRange.location, rhsRange.location);
    return CPMakeRange(location, Math.max(CPMaxRange(lhsRange), CPMaxRange(rhsRange)) - location);
}
CPIntersectionRange= function(lhsRange, rhsRange)
{
    if(CPMaxRange(lhsRange) < rhsRange.location || CPMaxRange(rhsRange) < lhsRange.location)
        return CPMakeRange(0, 0);
    var location = Math.max(lhsRange.location, rhsRange.location);
    return CPMakeRange(location, Math.min(CPMaxRange(lhsRange), CPMaxRange(rhsRange)) - location);
}
CPStringFromRange= function(aRange)
{
    return "{" + aRange.location + ", " + aRange.length + "}";
}
CPRangeFromString= function(aString)
{
    var comma = aString.indexOf(',');
    return { location:parseInt(aString.substr(1, comma - 1)), length:parseInt(aString.substring(comma + 1, aString.length)) };
}

p;11;CPRunLoop.ji;10;CPObject.ji;9;CPArray.ji;10;CPString.jc;6828;
CPDefaultRunLoopMode = "CPDefaultRunLoopMode";
_CPRunLoopPerformCompare= function(lhs, rhs)
{
    return objj_msgSend(rhs, "order") - objj_msgSend(lhs, "order");
}
var _CPRunLoopPerformPool = [],
    _CPRunLoopPerformPoolCapacity = 5;
{var the_class = objj_allocateClassPair(CPObject, "_CPRunLoopPerform"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_target"), new objj_ivar("_selector"), new objj_ivar("_argument"), new objj_ivar("_order"), new objj_ivar("_runLoopModes")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("_poolPerform:"), function $_CPRunLoopPerform___poolPerform_(self, _cmd, aPerform)
{ with(self)
{
    if (!aPerform || _CPRunLoopPerformPool.length >= _CPRunLoopPerformPoolCapacity)
        return;
    _CPRunLoopPerformPool.push(aPerform);
}
});
class_methods[1] = new objj_method(sel_registerName("performWithSelector:target:argument:order:modes:"), function $_CPRunLoopPerform__performWithSelector_target_argument_order_modes_(self, _cmd, aSelector, aTarget, anArgument, anOrder, modes)
{ with(self)
{
    if (_CPRunLoopPerformPool.length)
    {
        var perform = _CPRunLoopPerformPool.pop();
        perform._target = aTarget;
        perform._selector = aSelector;
        perform._arguments = anArgument;
        perform._order = anOrder;
        perform._runLoopModes = modes;
        return perform;
    }
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithSelector:target:argument:order:modes:", aSelector, aTarget, anArgument, anOrder, modes);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithSelector:target:argument:order:modes:"), function $_CPRunLoopPerform__initWithSelector_target_argument_order_modes_(self, _cmd, aSelector, aTarget, anArgument, anOrder, modes)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _selector = aSelector;
        _target = aTarget;
        _argument = anArgument;
        _order = anOrder;
        _runLoopModes = modes;
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("selector"), function $_CPRunLoopPerform__selector(self, _cmd)
{ with(self)
{
    return _selector;
}
});
instance_methods[2] = new objj_method(sel_registerName("target"), function $_CPRunLoopPerform__target(self, _cmd)
{ with(self)
{
    return _target;
}
});
instance_methods[3] = new objj_method(sel_registerName("argument"), function $_CPRunLoopPerform__argument(self, _cmd)
{ with(self)
{
    return _argument;
}
});
instance_methods[4] = new objj_method(sel_registerName("order"), function $_CPRunLoopPerform__order(self, _cmd)
{ with(self)
{
    return _order;
}
});
instance_methods[5] = new objj_method(sel_registerName("fireInMode:"), function $_CPRunLoopPerform__fireInMode_(self, _cmd, aRunLoopMode)
{ with(self)
{
    if (objj_msgSend(_runLoopModes, "containsObject:", aRunLoopMode))
    {
        objj_msgSend(_target, "performSelector:withObject:", _selector, _argument);
        return YES;
    }
    return NO;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
{var the_class = objj_allocateClassPair(CPObject, "CPRunLoop"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_queuedPerforms"), new objj_ivar("_orderedPerforms"), new objj_ivar("_isPerformingSelectors")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("initialize"), function $CPRunLoop__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPRunLoop, "class"))
        return;
    CPMainRunLoop = objj_msgSend(objj_msgSend(CPRunLoop, "alloc"), "init");
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("init"), function $CPRunLoop__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _queuedPerforms = [];
        _orderedPerforms = [];
    }
    return self;
}
});
class_methods[1] = new objj_method(sel_registerName("currentRunLoop"), function $CPRunLoop__currentRunLoop(self, _cmd)
{ with(self)
{
    return CPMainRunLoop;
}
});
class_methods[2] = new objj_method(sel_registerName("mainRunLoop"), function $CPRunLoop__mainRunLoop(self, _cmd)
{ with(self)
{
    return CPMainRunLoop;
}
});
instance_methods[1] = new objj_method(sel_registerName("performSelector:target:argument:order:modes:"), function $CPRunLoop__performSelector_target_argument_order_modes_(self, _cmd, aSelector, aTarget, anArgument, anOrder, modes)
{ with(self)
{
    var perform = objj_msgSend(_CPRunLoopPerform, "performWithSelector:target:argument:order:modes:", aSelector, aTarget, anArgument, anOrder, modes);
    if (_isPerformingSelectors)
        _queuedPerforms.push(perform);
    else
    {
        var count = _orderedPerforms.length;
        while (count--)
            if (anOrder < objj_msgSend(_orderedPerforms[count], "order"))
                break;
        _orderedPerforms.splice(count + 1, 0, perform);
    }
}
});
instance_methods[2] = new objj_method(sel_registerName("cancelPerformSelector:target:argument:"), function $CPRunLoop__cancelPerformSelector_target_argument_(self, _cmd, aSelector, aTarget, anArgument)
{ with(self)
{
    var count = _orderedPerforms.length;
    while (count--)
    {
        var perform = _orderedPerforms[count];
        if (objj_msgSend(perform, "selector") == aSelector && objj_msgSend(perform, "target") == aTarget && objj_msgSend(perform, "argument") == anArgument)
            objj_msgSend(_orderedPerforms, "removeObjectAtIndex:", count);
    }
}
});
instance_methods[3] = new objj_method(sel_registerName("performSelectors"), function $CPRunLoop__performSelectors(self, _cmd)
{ with(self)
{
    if (_isPerformingSelectors)
        return;
    _isPerformingSelectors = YES;
    var index = _orderedPerforms.length;
    while (index--)
    {
        var perform = _orderedPerforms[index];
        if (objj_msgSend(perform, "fireInMode:", CPDefaultRunLoopMode))
        {
            objj_msgSend(_CPRunLoopPerform, "_poolPerform:", perform);
            _orderedPerforms.splice(index, 1);
        }
    }
    _isPerformingSelectors = NO;
    if (_queuedPerforms.length)
    {
        _orderedPerforms = _orderedPerforms.concat(_queuedPerforms);
        _orderedPerforms.sort(_CPRunLoopPerformCompare);
    }
    _queuedPerforms = [];
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}

p;18;CPSortDescriptor.ji;10;CPObject.ji;15;CPObjJRuntime.jc;2368;
CPOrderedAscending = -1;
CPOrderedSame = 0;
CPOrderedDescending = 1;
{var the_class = objj_allocateClassPair(CPObject, "CPSortDescriptor"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_key"), new objj_ivar("_selector"), new objj_ivar("_ascending")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithKey:ascending:"), function $CPSortDescriptor__initWithKey_ascending_(self, _cmd, aKey, isAscending)
{ with(self)
{
    return objj_msgSend(self, "initWithKey:ascending:selector:", aKey, isAscending, sel_registerName("compare:"));
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithKey:ascending:selector:"), function $CPSortDescriptor__initWithKey_ascending_selector_(self, _cmd, aKey, isAscending, aSelector)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _key = aKey;
        _ascending = isAscending;
        _selector = aSelector;
    }
    return self;
}
});
instance_methods[2] = new objj_method(sel_registerName("ascending"), function $CPSortDescriptor__ascending(self, _cmd)
{ with(self)
{
    return _ascending;
}
});
instance_methods[3] = new objj_method(sel_registerName("key"), function $CPSortDescriptor__key(self, _cmd)
{ with(self)
{
    return _key;
}
});
instance_methods[4] = new objj_method(sel_registerName("selector"), function $CPSortDescriptor__selector(self, _cmd)
{ with(self)
{
    return _selector;
}
});
instance_methods[5] = new objj_method(sel_registerName("compareObject:withObject:"), function $CPSortDescriptor__compareObject_withObject_(self, _cmd, lhsObject, rhsObject)
{ with(self)
{
    return (_ascending ? 1 : -1) * objj_msgSend(objj_msgSend(lhsObject, "valueForKey:", _key), "performSelector:withObject:", _selector, objj_msgSend(rhsObject, "valueForKey:", _key));
}
});
instance_methods[6] = new objj_method(sel_registerName("reversedSortDescriptor"), function $CPSortDescriptor__reversedSortDescriptor(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithKey:ascending:selector:", _key, !_ascending, _selector);
}
});
class_addMethods(the_class, instance_methods);
}

p;10;CPString.ji;10;CPObject.ji;13;CPException.jc;16644;
CPCaseInsensitiveSearch = 1;
CPLiteralSearch = 2;
CPBackwardsSearch = 4;
CPAnchoredSearch = 8;
CPNumericSearch = 64;
var CPStringHashes = new objj_dictionary();
{var the_class = objj_allocateClassPair(CPObject, "CPString"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("alloc"), function $CPString__alloc(self, _cmd)
{ with(self)
{
    return new String;
}
});
class_methods[1] = new objj_method(sel_registerName("string"), function $CPString__string(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
});
class_methods[2] = new objj_method(sel_registerName("stringWithHash:"), function $CPString__stringWithHash_(self, _cmd, aHash)
{ with(self)
{
    var zeros = "000000",
        digits = aHash.toString(16);
    return zeros.substring(0, zeros.length - digits.length) + digits;
}
});
class_methods[3] = new objj_method(sel_registerName("stringWithString:"), function $CPString__stringWithString_(self, _cmd, aString)
{ with(self)
{
    if (!aString)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "stringWithString: the string can't be 'nil'");
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:", aString);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithString:"), function $CPString__initWithString_(self, _cmd, aString)
{ with(self)
{
    return String(aString);
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithFormat:"), function $CPString__initWithFormat_(self, _cmd, format)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "initWithFormat: the format can't be 'nil'");
    self = sprintf.apply(this, Array.prototype.slice.call(arguments, 2));
    return self;
}
});
class_methods[4] = new objj_method(sel_registerName("stringWithFormat:"), function $CPString__stringWithFormat_(self, _cmd, format)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "initWithFormat: the format can't be 'nil'");
    return sprintf.apply(this, Array.prototype.slice.call(arguments, 2));
}
});
instance_methods[2] = new objj_method(sel_registerName("description"), function $CPString__description(self, _cmd)
{ with(self)
{
    return "<" + self.isa.name + " 0x" + objj_msgSend(CPString, "stringWithHash:", objj_msgSend(self, "hash")) + " \"" + self + "\">";
}
});
instance_methods[3] = new objj_method(sel_registerName("length"), function $CPString__length(self, _cmd)
{ with(self)
{
    return length;
}
});
instance_methods[4] = new objj_method(sel_registerName("characterAtIndex:"), function $CPString__characterAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return charAt(anIndex);
}
});
instance_methods[5] = new objj_method(sel_registerName("stringByAppendingFormat:"), function $CPString__stringByAppendingFormat_(self, _cmd, format)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "initWithFormat: the format can't be 'nil'");
    return self + sprintf.apply(this, Array.prototype.slice.call(arguments, 2));
}
});
instance_methods[6] = new objj_method(sel_registerName("stringByAppendingString:"), function $CPString__stringByAppendingString_(self, _cmd, aString)
{ with(self)
{
    return self + aString;
}
});
instance_methods[7] = new objj_method(sel_registerName("stringByPaddingToLength:withString:startingAtIndex:"), function $CPString__stringByPaddingToLength_withString_startingAtIndex_(self, _cmd, aLength, aString, anIndex)
{ with(self)
{
    if (length == aLength)
        return self;
    if (aLength < length)
        return substr(0, aLength);
    var string = self,
        substring = aString.substr(anIndex),
        difference = aLength - length;
    while ((difference -= substring.length) > 0)
        string += substring;
    if (difference) string += substring.substr(difference + substring.length);
}
});
instance_methods[8] = new objj_method(sel_registerName("componentsSeparatedByString:"), function $CPString__componentsSeparatedByString_(self, _cmd, aString)
{ with(self)
{
    return split(aString);
}
});
instance_methods[9] = new objj_method(sel_registerName("substringFromIndex:"), function $CPString__substringFromIndex_(self, _cmd, anIndex)
{ with(self)
{
    return substr(anIndex);
}
});
instance_methods[10] = new objj_method(sel_registerName("substringWithRange:"), function $CPString__substringWithRange_(self, _cmd, aRange)
{ with(self)
{
    return substr(aRange.location, aRange.length);
}
});
instance_methods[11] = new objj_method(sel_registerName("substringToIndex:"), function $CPString__substringToIndex_(self, _cmd, anIndex)
{ with(self)
{
    return substring(0, anIndex);
}
});
instance_methods[12] = new objj_method(sel_registerName("rangeOfString:"), function $CPString__rangeOfString_(self, _cmd, aString)
{ with(self)
{
   return objj_msgSend(self, "rangeOfString:options:", aString, 0);
}
});
instance_methods[13] = new objj_method(sel_registerName("rangeOfString:options:"), function $CPString__rangeOfString_options_(self, _cmd, aString, aMask)
{ with(self)
{
    return objj_msgSend(self, "rangeOfString:options:range:", aString, aMask, nil);
}
});
instance_methods[14] = new objj_method(sel_registerName("rangeOfString:options:range:"), function $CPString__rangeOfString_options_range_(self, _cmd, aString, aMask, aRange)
{ with(self)
{
    var string = (aRange == nil) ? self : objj_msgSend(self, "substringWithRange:", aRange),
        location = CPNotFound;
    if (aMask & CPCaseInsensitiveSearch)
    {
        string = string.toLowerCase();
        aString = aString.toLowerCase();
    }
    if (aMask & CPBackwardsSearch)
        location = string.lastIndexOf(aString, aMask & CPAnchoredSearch ? length - aString.length : 0);
    else if (aMask & CPAnchoredSearch)
        location = string.substr(0, aString.length).indexOf(aString) != CPNotFound ? 0 : CPNotFound;
    else
        location = string.indexOf(aString);
    return CPMakeRange(location, location == CPNotFound ? 0 : aString.length);
}
});
instance_methods[15] = new objj_method(sel_registerName("stringByReplacingOccurrencesOfString:withString:"), function $CPString__stringByReplacingOccurrencesOfString_withString_(self, _cmd, target, replacement)
{ with(self)
{
    return self.replace(new RegExp(target, "g"), replacement);
}
});
instance_methods[16] = new objj_method(sel_registerName("caseInsensitiveCompare:"), function $CPString__caseInsensitiveCompare_(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(self, "compare:options:", aString, CPCaseInsensitiveSearch)
}
});
instance_methods[17] = new objj_method(sel_registerName("compare:options:"), function $CPString__compare_options_(self, _cmd, aString, aMask)
{ with(self)
{
    var lhs = self,
        rhs = aString;
    if (aMask & CPCaseInsensitiveSearch)
    {
        lhs = lhs.toLowerCase();
        rhs = rhs.toLowerCase();
    }
    if (lhs < rhs)
        return CPOrderedAscending;
    else if (lhs > rhs)
        return CPOrderedDescending;
    return CPOrderedSame;
}
});
instance_methods[18] = new objj_method(sel_registerName("hasPrefix:"), function $CPString__hasPrefix_(self, _cmd, aString)
{ with(self)
{
    return aString && aString != "" && indexOf(aString) == 0;
}
});
instance_methods[19] = new objj_method(sel_registerName("hasSuffix:"), function $CPString__hasSuffix_(self, _cmd, aString)
{ with(self)
{
    return aString && aString != "" && lastIndexOf(aString) == (length - aString.length);
}
});
instance_methods[20] = new objj_method(sel_registerName("isEqualToString:"), function $CPString__isEqualToString_(self, _cmd, aString)
{ with(self)
{
    return self == aString;
}
});
instance_methods[21] = new objj_method(sel_registerName("hash"), function $CPString__hash(self, _cmd)
{ with(self)
{
    var hash = dictionary_getValue(CPStringHashes, self);
    if (!hash)
    {
        hash = _objj_generateObjectHash();
        dictionary_setValue(CPStringHashes, self, hash);
    }
    return hash;
}
});
instance_methods[22] = new objj_method(sel_registerName("capitalizedString"), function $CPString__capitalizedString(self, _cmd)
{ with(self)
{
    var parts = self.split(/\b/g);
    for (var i = 0; i < parts.length; i++)
    {
        if (i == 0 || (/\s$/).test(parts[i-1]))
            parts[i] = parts[i].substring(0, 1).toUpperCase() + parts[i].substring(1).toLowerCase();
        else
            parts[i] = parts[i].toLowerCase();
    }
    return parts.join("");
}
});
instance_methods[23] = new objj_method(sel_registerName("lowercaseString"), function $CPString__lowercaseString(self, _cmd)
{ with(self)
{
    return toLowerCase();
}
});
instance_methods[24] = new objj_method(sel_registerName("uppercaseString"), function $CPString__uppercaseString(self, _cmd)
{ with(self)
{
    return toUpperCase();
}
});
instance_methods[25] = new objj_method(sel_registerName("doubleValue"), function $CPString__doubleValue(self, _cmd)
{ with(self)
{
    return parseFloat(self, 10);
}
});
instance_methods[26] = new objj_method(sel_registerName("boolValue"), function $CPString__boolValue(self, _cmd)
{ with(self)
{
    var replaceRegExp = new RegExp("^\\s*[\\+,\\-]*0*");
    return RegExp("^[Y,y,t,T,1-9]").test(self.replace(replaceRegExp, ''));
}
});
instance_methods[27] = new objj_method(sel_registerName("floatValue"), function $CPString__floatValue(self, _cmd)
{ with(self)
{
    return parseFloat(self, 10);
}
});
instance_methods[28] = new objj_method(sel_registerName("intValue"), function $CPString__intValue(self, _cmd)
{ with(self)
{
    return parseInt(self, 10);
}
});
instance_methods[29] = new objj_method(sel_registerName("pathComponents"), function $CPString__pathComponents(self, _cmd)
{ with(self)
{
    return split('/');
}
});
instance_methods[30] = new objj_method(sel_registerName("pathExtension"), function $CPString__pathExtension(self, _cmd)
{ with(self)
{
    return substr(lastIndexOf('.') + 1);
}
});
instance_methods[31] = new objj_method(sel_registerName("lastPathComponent"), function $CPString__lastPathComponent(self, _cmd)
{ with(self)
{
    var components = objj_msgSend(self, "pathComponents");
    return components[components.length-1];
}
});
instance_methods[32] = new objj_method(sel_registerName("stringByDeletingLastPathComponent"), function $CPString__stringByDeletingLastPathComponent(self, _cmd)
{ with(self)
{
    return substr(0, lastIndexOf('/') + 1);
}
});
instance_methods[33] = new objj_method(sel_registerName("stringByStandardizingPath"), function $CPString__stringByStandardizingPath(self, _cmd)
{ with(self)
{
    return objj_standardize_path(self);
}
});
instance_methods[34] = new objj_method(sel_registerName("copy"), function $CPString__copy(self, _cmd)
{ with(self)
{
    return new String(self);
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
String.prototype.isa = CPString;
var sprintfFormatRegex = new RegExp("([^%]+|%[\\+\\-\\ \\#0]*[0-9\\*]*(.[0-9\\*]+)?[hlL]?[cdieEfgGosuxXpn%])", "g");
var sprintfTagRegex = new RegExp("(%)([\\+\\-\\ \\#0]*)([0-9\\*]*)((.[0-9\\*]+)?)([hlL]?)([cdieEfgGosuxXpn%])");
sprintf= function(format)
{
    var format = arguments[0],
        tokens = format.match(sprintfFormatRegex),
        index = 0,
        result = "",
        arg = 1;
    for (var i = 0; i < tokens.length; i++)
    {
        var t = tokens[i];
        if (format.substring(index, index + t.length) != t)
        {
            return result;
        }
        index += t.length;
        if (t.charAt(0) != "%")
        {
            result += t;
        }
        else
        {
            var subtokens = t.match(sprintfTagRegex);
            if (subtokens.length != 8 || subtokens[0] != t)
            {
                return result;
            }
            var percentSign = subtokens[1],
                flags = subtokens[2],
                widthString = subtokens[3],
                precisionString = subtokens[4],
                length = subtokens[6],
                specifier = subtokens[7];
            var width = null;
            if (widthString == "*")
                width = arguments[arg++];
            else if (widthString != "")
                width = Number(widthString);
            var precision = null;
            if (precisionString == ".*")
                precision = arguments[arg++];
            else if (precisionString != "")
                precision = Number(precisionString.substring(1));
            var leftJustify = (flags.indexOf("-") >= 0);
            var padZeros = (flags.indexOf("0") >= 0);
            var subresult = "";
            if (RegExp("[diufeExXo]").test(specifier))
            {
                var num = Number(arguments[arg++]);
                var sign = "";
                if (num < 0)
                {
                    sign = "-";
                }
                else
                {
                    if (flags.indexOf("+") >= 0)
                        sign = "+";
                    else if (flags.indexOf(" ") >= 0)
                        sign = " ";
                }
                if (specifier == "d" || specifier == "i" || specifier == "u")
                {
                    var number = String(Math.abs(Math.floor(num)));
                    subresult = sprintf_justify(sign, "", number, "", width, leftJustify, padZeros)
                }
                if (specifier == "f")
                {
                    var number = String((precision != null) ? Math.abs(num).toFixed(precision) : Math.abs(num));
                    var suffix = (flags.indexOf("#") >= 0 && number.indexOf(".") < 0) ? "." : "";
                    subresult = sprintf_justify(sign, "", number, suffix, width, leftJustify, padZeros);
                }
                if (specifier == "e" || specifier == "E")
                {
                    var number = String(Math.abs(num).toExponential(precision != null ? precision : 21));
                    var suffix = (flags.indexOf("#") >= 0 && number.indexOf(".") < 0) ? "." : "";
                    subresult = sprintf_justify(sign, "", number, suffix, width, leftJustify, padZeros);
                }
                if (specifier == "x" || specifier == "X")
                {
                    var number = String(Math.abs(num).toString(16));
                    var prefix = (flags.indexOf("#") >= 0 && num != 0) ? "0x" : "";
                    subresult = sprintf_justify(sign, prefix, number, "", width, leftJustify, padZeros);
                }
                if (specifier == "o")
                {
                    var number = String(Math.abs(num).toString(8));
                    var prefix = (flags.indexOf("#") >= 0 && num != 0) ? "0" : "";
                    subresult = sprintf_justify(sign, prefix, number, "", width, leftJustify, padZeros);
                }
                if (RegExp("[A-Z]").test(specifier))
                    subresult = subresult.toUpperCase();
                else
                    subresult = subresult.toLowerCase();
            }
            else
            {
                var subresult = "";
                if (specifier == "%")
                    subresult = "%";
                else if (specifier == "c")
                    subresult = String(arguments[arg++]).charAt(0);
                else if (specifier == "s")
                    subresult = String(arguments[arg++]);
                else if (specifier == "p" || specifier == "n")
                {
                    arg++;
                    subresult = "";
                }
                subresult = sprintf_justify("", "", subresult, "", width, leftJustify, false);
            }
            result += subresult;
        }
    }
    return result;
}
var sprintf_justify = function(sign, prefix, string, suffix, width, leftJustify, padZeros)
{
    var length = (sign.length + prefix.length + string.length + suffix.length);
    if (leftJustify)
    {
        return sign + prefix + string + suffix + sprintf_pad(width - length, " ");
    }
    else
    {
        if (padZeros)
            return sign + prefix + sprintf_pad(width - length, "0") + string + suffix;
        else
            return sprintf_pad(width - length, " ") + sign + prefix + string + suffix;
    }
}
var sprintf_pad = function(n, ch)
{
    var result = "";
    for (var i = 0; i < n; i++)
        result += ch;
    return result;
}

p;15;CPUndoManager.ji;10;CPObject.ji;14;CPInvocation.jc;20079;
var CPUndoManagerNormal = 0,
    CPUndoManagerUndoing = 1,
    CPUndoManagerRedoing = 2;
CPUndoManagerCheckpointNotification = "CPUndoManagerCheckpointNotification";
CPUndoManagerDidOpenUndoGroupNotification = "CPUndoManagerDidOpenUndoGroupNotification";
CPUndoManagerDidRedoChangeNotification = "CPUndoManagerDidRedoChangeNotification";
CPUndoManagerDidUndoChangeNotification = "CPUndoManagerDidUndoChangeNotification";
CPUndoManagerWillCloseUndoGroupNotification = "CPUndoManagerWillCloseUndoGroupNotification";
CPUndoManagerWillRedoChangeNotification = "CPUndoManagerWillRedoChangeNotification";
CPUndoManagerWillUndoChangeNotification = "CPUndoManagerWillUndoChangeNotification";
CPUndoCloseGroupingRunLoopOrdering = 350000;
var _CPUndoGroupingPool = [],
    _CPUndoGroupingPoolCapacity = 5;
{var the_class = objj_allocateClassPair(CPObject, "_CPUndoGrouping"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_parent"), new objj_ivar("_invocations")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("_poolUndoGrouping:"), function $_CPUndoGrouping___poolUndoGrouping_(self, _cmd, anUndoGrouping)
{ with(self)
{
    if (!anUndoGrouping || _CPUndoGroupingPool.length >= _CPUndoGroupingPoolCapacity)
        return;
    _CPUndoGroupingPool.push(anUndoGrouping);
}
});
class_methods[1] = new objj_method(sel_registerName("undoGroupingWithParent:"), function $_CPUndoGrouping__undoGroupingWithParent_(self, _cmd, anUndoGrouping)
{ with(self)
{
    if (_CPUndoGroupingPool.length)
    {
        var grouping = _CPUndoGroupingPool.pop();
        grouping._parent = anUndoGrouping;
        if (grouping._invocations.length)
            grouping._invocations = [];
        return grouping;
    }
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithParent:", anUndoGrouping);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithParent:"), function $_CPUndoGrouping__initWithParent_(self, _cmd, anUndoGrouping)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _parent = anUndoGrouping;
        _invocations = [];
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("parent"), function $_CPUndoGrouping__parent(self, _cmd)
{ with(self)
{
    return _parent;
}
});
instance_methods[2] = new objj_method(sel_registerName("addInvocation:"), function $_CPUndoGrouping__addInvocation_(self, _cmd, anInvocation)
{ with(self)
{
    _invocations.push(anInvocation);
}
});
instance_methods[3] = new objj_method(sel_registerName("addInvocationsFromArray:"), function $_CPUndoGrouping__addInvocationsFromArray_(self, _cmd, invocations)
{ with(self)
{
    objj_msgSend(_invocations, "addObjectsFromArray:", invocations);
}
});
instance_methods[4] = new objj_method(sel_registerName("removeInvocationsWithTarget:"), function $_CPUndoGrouping__removeInvocationsWithTarget_(self, _cmd, aTarget)
{ with(self)
{
    var index = _invocations.length;
    while (index--)
        if (objj_msgSend(_invocations[index], "target") == aTarget)
            _invocations.splice(index, 1);
}
});
instance_methods[5] = new objj_method(sel_registerName("invocations"), function $_CPUndoGrouping__invocations(self, _cmd)
{ with(self)
{
    return _invocations;
}
});
instance_methods[6] = new objj_method(sel_registerName("invoke"), function $_CPUndoGrouping__invoke(self, _cmd)
{ with(self)
{
    var index = _invocations.length;
    while (index--)
        objj_msgSend(_invocations[index], "invoke");
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
var _CPUndoGroupingParentKey = "_CPUndoGroupingParentKey",
    _CPUndoGroupingInvocationsKey = "_CPUndoGroupingInvocationsKey";
{
var the_class = objj_getClass("_CPUndoGrouping")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"_CPUndoGrouping\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithCoder:"), function $_CPUndoGrouping__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _parent = objj_msgSend(aCoder, "decodeObjectForKey:", _CPUndoGroupingParentKey);
        _invocations = objj_msgSend(aCoder, "decodeObjectForKey:", _CPUndoGroupingInvocationsKey);
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("encodeWithCoder:"), function $_CPUndoGrouping__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _parent, _CPUndoGroupingParentKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _invocations, _CPUndoGroupingInvocationsKey);
}
});
class_addMethods(the_class, instance_methods);
}
{var the_class = objj_allocateClassPair(CPObject, "CPUndoManager"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_redoStack"), new objj_ivar("_undoStack"), new objj_ivar("_groupsByEvent"), new objj_ivar("_disableCount"), new objj_ivar("_levelsOfUndo"), new objj_ivar("_currentGrouping"), new objj_ivar("_state"), new objj_ivar("_actionName"), new objj_ivar("_preparedTarget"), new objj_ivar("_runLoopModes"), new objj_ivar("_registeredWithRunLoop")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("init"), function $CPUndoManager__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _redoStack = [];
        _undoStack = [];
        _state = CPUndoManagerNormal;
        objj_msgSend(self, "setRunLoopModes:", [CPDefaultRunLoopMode]);
        objj_msgSend(self, "setGroupsByEvent:", YES);
        _performRegistered = NO;
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("registerUndoWithTarget:selector:object:"), function $CPUndoManager__registerUndoWithTarget_selector_object_(self, _cmd, aTarget, aSelector, anObject)
{ with(self)
{
    if (!_currentGrouping)
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "No undo group is currently open");
    if (_disableCount > 0)
        return;
    var invocation = objj_msgSend(CPInvocation, "invocationWithMethodSignature:", nil);
    objj_msgSend(invocation, "setTarget:", aTarget);
    objj_msgSend(invocation, "setSelector:", aSelector);
    objj_msgSend(invocation, "setArgument:atIndex:", anObject, 2);
    objj_msgSend(_currentGrouping, "addInvocation:", invocation);
    if (_state == CPUndoManagerNormal)
        objj_msgSend(_redoStack, "removeAllObjects");
}
});
instance_methods[2] = new objj_method(sel_registerName("prepareWithInvocationTarget:"), function $CPUndoManager__prepareWithInvocationTarget_(self, _cmd, aTarget)
{ with(self)
{
    _preparedTarget = aTarget;
    return self;
}
});
instance_methods[3] = new objj_method(sel_registerName("methodSignatureForSelector:"), function $CPUndoManager__methodSignatureForSelector_(self, _cmd, aSelector)
{ with(self)
{
    if (objj_msgSend(_preparedTarget, "respondsToSelector:", aSelector))
        return 1;
    return nil;
}
});
instance_methods[4] = new objj_method(sel_registerName("forwardInvocation:"), function $CPUndoManager__forwardInvocation_(self, _cmd, anInvocation)
{ with(self)
{
    if (_disableCount > 0)
        return;
    objj_msgSend(anInvocation, "setTarget:", _preparedTarget);
    objj_msgSend(_currentGrouping, "addInvocation:", anInvocation);
    if (_state == CPUndoManagerNormal)
        objj_msgSend(_redoStack, "removeAllObjects");
    _preparedTarget = nil;
}
});
instance_methods[5] = new objj_method(sel_registerName("canRedo"), function $CPUndoManager__canRedo(self, _cmd)
{ with(self)
{
    return _redoStack.length > 0;
}
});
instance_methods[6] = new objj_method(sel_registerName("canUndo"), function $CPUndoManager__canUndo(self, _cmd)
{ with(self)
{
    if (_undoStack.length > 0)
        return YES;
    return objj_msgSend(_currentGrouping, "actions").length > 0;
}
});
instance_methods[7] = new objj_method(sel_registerName("undo"), function $CPUndoManager__undo(self, _cmd)
{ with(self)
{
    if (objj_msgSend(self, "groupingLevel") == 1)
        objj_msgSend(self, "endUndoGrouping");
    objj_msgSend(self, "undoNestedGroup");
}
});
instance_methods[8] = new objj_method(sel_registerName("undoNestedGroup"), function $CPUndoManager__undoNestedGroup(self, _cmd)
{ with(self)
{
    if (_undoStack.length == 0)
        return;
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(defaultCenter, "postNotificationName:object:", CPUndoManagerWillUndoChangeNotification, self);
    var undoGrouping = _undoStack.pop();
    _state = CPUndoManagerUndoing;
    objj_msgSend(self, "beginUndoGrouping");
    objj_msgSend(undoGrouping, "invoke");
    objj_msgSend(self, "endUndoGrouping");
    objj_msgSend(_CPUndoGrouping, "_poolUndoGrouping:", undoGrouping);
    _state = CPUndoManagerNormal;
    objj_msgSend(defaultCenter, "postNotificationName:object:", CPUndoManagerDidUndoChangeNotification, self);
}
});
instance_methods[9] = new objj_method(sel_registerName("redo"), function $CPUndoManager__redo(self, _cmd)
{ with(self)
{
    if (_redoStack.length == 0)
        return;
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(defaultCenter, "postNotificationName:object:", CPUndoManagerWillRedoChangeNotification, self);
    var oldUndoGrouping = _currentGrouping,
        undoGrouping = _redoStack.pop();
    _currentGrouping = nil;
    _state = CPUndoManagerRedoing;
    objj_msgSend(self, "beginUndoGrouping");
    objj_msgSend(undoGrouping, "invoke");
    objj_msgSend(self, "endUndoGrouping");
    objj_msgSend(_CPUndoGrouping, "_poolUndoGrouping:", undoGrouping);
    _currentGrouping = oldUndoGrouping;
    _state = CPUndoManagerNormal;
    objj_msgSend(defaultCenter, "postNotificationName:object:", CPUndoManagerDidRedoChangeNotification, self);
}
});
instance_methods[10] = new objj_method(sel_registerName("beginUndoGrouping"), function $CPUndoManager__beginUndoGrouping(self, _cmd)
{ with(self)
{
    _currentGrouping = objj_msgSend(_CPUndoGrouping, "undoGroupingWithParent:", _currentGrouping);
}
});
instance_methods[11] = new objj_method(sel_registerName("endUndoGrouping"), function $CPUndoManager__endUndoGrouping(self, _cmd)
{ with(self)
{
    if (!_currentGrouping)
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "endUndoGrouping. No undo group is currently open.");
    var parent = objj_msgSend(_currentGrouping, "parent");
    if (!parent && objj_msgSend(_currentGrouping, "invocations").length > 0)
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPUndoManagerWillCloseUndoGroupNotification, self);
        var stack = _state == CPUndoManagerUndoing ? _redoStack : _undoStack;
        stack.push(_currentGrouping);
        if (_levelsOfUndo > 0 && stack.length > _levelsOfUndo)
            stack.splice(0, 1);
    }
    else
    {
        objj_msgSend(parent, "addInvocationsFromArray:", objj_msgSend(_currentGrouping, "invocations"));
        objj_msgSend(_CPUndoGrouping, "_poolUndoGrouping:", _currentGrouping);
    }
    _currentGrouping = parent;
}
});
instance_methods[12] = new objj_method(sel_registerName("enableUndoRegistration"), function $CPUndoManager__enableUndoRegistration(self, _cmd)
{ with(self)
{
    if (_disableCount <= 0)
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "enableUndoRegistration. There are no disable messages in effect right now.");
    _disableCount--;
}
});
instance_methods[13] = new objj_method(sel_registerName("groupsByEvent"), function $CPUndoManager__groupsByEvent(self, _cmd)
{ with(self)
{
    return _groupsByEvent;
}
});
instance_methods[14] = new objj_method(sel_registerName("setGroupsByEvent:"), function $CPUndoManager__setGroupsByEvent_(self, _cmd, aFlag)
{ with(self)
{
    if (_groupsByEvent == aFlag)
        return;
    _groupsByEvent = aFlag;
    if (_groupsByEvent)
    {
        objj_msgSend(self, "_registerWithRunLoop");
        if (!_currentGrouping)
            objj_msgSend(self, "beginUndoGrouping");
    }
    else
        objj_msgSend(self, "_unregisterWithRunLoop");
}
});
instance_methods[15] = new objj_method(sel_registerName("groupingLevel"), function $CPUndoManager__groupingLevel(self, _cmd)
{ with(self)
{
    var grouping = _currentGrouping,
        level = _currentGrouping != nil;
    while (grouping = objj_msgSend(grouping, "parent"))
        ++level;
    return level;
}
});
instance_methods[16] = new objj_method(sel_registerName("disableUndoRegistration"), function $CPUndoManager__disableUndoRegistration(self, _cmd)
{ with(self)
{
    ++_disableCount;
}
});
instance_methods[17] = new objj_method(sel_registerName("isUndoRegistrationEnabled"), function $CPUndoManager__isUndoRegistrationEnabled(self, _cmd)
{ with(self)
{
    return _disableCount == 0;
}
});
instance_methods[18] = new objj_method(sel_registerName("isUndoing"), function $CPUndoManager__isUndoing(self, _cmd)
{ with(self)
{
    return _state == CPUndoManagerUndoing;
}
});
instance_methods[19] = new objj_method(sel_registerName("isRedoing"), function $CPUndoManager__isRedoing(self, _cmd)
{ with(self)
{
    return _state == CPUndoManagerRedoing;
}
});
instance_methods[20] = new objj_method(sel_registerName("removeAllActions"), function $CPUndoManager__removeAllActions(self, _cmd)
{ with(self)
{
    _redoStack = [];
    _undoStack = [];
    _disableCount = 0;
}
});
instance_methods[21] = new objj_method(sel_registerName("removeAllActionsWithTarget:"), function $CPUndoManager__removeAllActionsWithTarget_(self, _cmd, aTarget)
{ with(self)
{
    objj_msgSend(_currentGrouping, "removeInvocationsWithTarget:", aTarget);
    var index = _redoStack.length;
    while (index--)
    {
        var grouping = _redoStack[index];
        objj_msgSend(grouping, "removeInvocationsWithTarget:", aTarget);
        if (!objj_msgSend(grouping, "invocations").length)
            _redoStack.splice(index, 1);
    }
    index = _undoStack.length;
    while (index--)
    {
        var grouping = _undoStack[index];
        objj_msgSend(grouping, "removeInvocationsWithTarget:", aTarget);
        if (!objj_msgSend(grouping, "invocations").length)
            _undoStack.splice(index, 1);
    }
}
});
instance_methods[22] = new objj_method(sel_registerName("setActionName:"), function $CPUndoManager__setActionName_(self, _cmd, anActionName)
{ with(self)
{
    _actionName = anActionName;
}
});
instance_methods[23] = new objj_method(sel_registerName("redoActionName"), function $CPUndoManager__redoActionName(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "canRedo") ? _actionName : nil;
}
});
instance_methods[24] = new objj_method(sel_registerName("undoActionName"), function $CPUndoManager__undoActionName(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "canUndo") ? _actionName : nil;
}
});
instance_methods[25] = new objj_method(sel_registerName("runLoopModes"), function $CPUndoManager__runLoopModes(self, _cmd)
{ with(self)
{
    return _runLoopModes;
}
});
instance_methods[26] = new objj_method(sel_registerName("setRunLoopModes:"), function $CPUndoManager__setRunLoopModes_(self, _cmd, modes)
{ with(self)
{
    _runLoopModes = modes;
    objj_msgSend(self, "_unregisterWithRunLoop");
    if (_groupsByEvent)
        objj_msgSend(self, "_registerWithRunLoop");
}
});
instance_methods[27] = new objj_method(sel_registerName("beginUndoGroupingForEvent"), function $CPUndoManager__beginUndoGroupingForEvent(self, _cmd)
{ with(self)
{
    if (!_groupsByEvent)
        return;
    if (_currentGrouping != nil)
        objj_msgSend(self, "endUndoGrouping");
    objj_msgSend(self, "beginUndoGrouping");
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "performSelector:target:argument:order:modes:", sel_registerName("beginUndoGroupingForEvent"), self, nil, CPUndoCloseGroupingRunLoopOrdering, _runLoopModes);
}
});
instance_methods[28] = new objj_method(sel_registerName("_registerWithRunLoop"), function $CPUndoManager___registerWithRunLoop(self, _cmd)
{ with(self)
{
    if (_registeredWithRunLoop)
        return;
    _registeredWithRunLoop = YES;
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "performSelector:target:argument:order:modes:", sel_registerName("beginUndoGroupingForEvent"), self, nil, CPUndoCloseGroupingRunLoopOrdering, _runLoopModes);
}
});
instance_methods[29] = new objj_method(sel_registerName("_unregisterWithRunLoop"), function $CPUndoManager___unregisterWithRunLoop(self, _cmd)
{ with(self)
{
    if (!_registeredWithRunLoop)
        return;
    _registeredWithRunLoop = NO;
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "cancelPerformSelector:target:argument:", sel_registerName("beginUndoGroupingForEvent"), self, nil);
}
});
class_addMethods(the_class, instance_methods);
}
var CPUndoManagerRedoStackKey = "CPUndoManagerRedoStackKey",
    CPUndoManagerUndoStackKey = "CPUndoManagerUndoStackKey";
    CPUndoManagerLevelsOfUndoKey = "CPUndoManagerLevelsOfUndoKey";
    CPUndoManagerActionNameKey = "CPUndoManagerActionNameKey";
    CPUndoManagerCurrentGroupingKey = "CPUndoManagerCurrentGroupingKey";
    CPUndoManagerRunLoopModesKey = "CPUndoManagerRunLoopModesKey";
    CPUndoManagerGroupsByEventKey = "CPUndoManagerGroupsByEventKey";
{
var the_class = objj_getClass("CPUndoManager")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPUndoManager\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithCoder:"), function $CPUndoManager__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _redoStack = objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerRedoStackKey);
        _undoStack = objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerUndoStackKey);
        _levelsOfUndo = objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerLevelsOfUndoKey);
        _actionName = objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerActionNameKey);
        _currentGrouping = objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerCurrentGroupingKey);
        _state = CPUndoManagerNormal;
        objj_msgSend(self, "setRunLoopModes:", objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerRunLoopModesKey));
        objj_msgSend(self, "setGroupsByEvent:", objj_msgSend(aCoder, "decodeBoolForKey:", CPUndoManagerGroupsByEventKey));
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("encodeWithCoder:"), function $CPUndoManager__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _redoStack, CPUndoManagerRedoStackKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _undoStack, CPUndoManagerUndoStackKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _levelsOfUndo, CPUndoManagerLevelsOfUndoKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _actionName, CPUndoManagerActionNameKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _currentGrouping, CPUndoManagerCurrentGroupingKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _runLoopModes, CPUndoManagerRunLoopModesKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _groupsByEvent, CPUndoManagerGroupsByEventKey);
}
});
class_addMethods(the_class, instance_methods);
}

p;17;CPURLConnection.ji;10;CPObject.ji;11;CPRunLoop.ji;14;CPURLRequest.ji;15;CPURLResponse.jc;6363;
var XMLHTTPRequestUninitialized = 0,
    XMLHTTPRequestLoading = 1,
    XMLHTTPRequestLoaded = 2,
    XMLHTTPRequestInteractive = 3,
    XMLHTTPRequestComplete = 4;
var CPURLConnectionDelegate = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPURLConnection"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_request"), new objj_ivar("_delegate"), new objj_ivar("_isCanceled"), new objj_ivar("_XMLHTTPRequest")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("setClassDelegate:"), function $CPURLConnection__setClassDelegate_(self, _cmd, delegate)
{ with(self)
{
    CPURLConnectionDelegate = delegate;
}
});
class_methods[1] = new objj_method(sel_registerName("sendSynchronousRequest:returningResponse:error:"), function $CPURLConnection__sendSynchronousRequest_returningResponse_error_(self, _cmd, aRequest, aURLResponse, anError)
{ with(self)
{
    try
    {
        var request = objj_request_xmlhttp();
        request.open(objj_msgSend(aRequest, "HTTPMethod"), objj_msgSend(aRequest, "URL"), NO);
        var fields = objj_msgSend(aRequest, "allHTTPHeaderFields"),
            key = nil,
            keys = objj_msgSend(fields, "keyEnumerator");
        while (key = objj_msgSend(keys, "nextObject"))
            request.setRequestHeader(key, objj_msgSend(fields, "objectForKey:", key));
        request.send(objj_msgSend(aRequest, "HTTPBody"));
        return objj_msgSend(CPData, "dataWithString:", request.responseText);
    }
    catch (anException)
    {
    }
    return nil;
}
});
class_methods[2] = new objj_method(sel_registerName("connectionWithRequest:delegate:"), function $CPURLConnection__connectionWithRequest_delegate_(self, _cmd, aRequest, aDelegate)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithRequest:delegate:", aRequest, aDelegate);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithRequest:delegate:startImmediately:"), function $CPURLConnection__initWithRequest_delegate_startImmediately_(self, _cmd, aRequest, aDelegate, shouldStartImmediately)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _request = aRequest;
        _delegate = aDelegate;
        _isCanceled = NO;
        _XMLHTTPRequest = objj_request_xmlhttp();
        if (shouldStartImmediately)
            objj_msgSend(self, "start");
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("initWithRequest:delegate:"), function $CPURLConnection__initWithRequest_delegate_(self, _cmd, aRequest, aDelegate)
{ with(self)
{
    return objj_msgSend(self, "initWithRequest:delegate:startImmediately:", aRequest, aDelegate, YES);
}
});
instance_methods[2] = new objj_method(sel_registerName("delegate"), function $CPURLConnection__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
});
instance_methods[3] = new objj_method(sel_registerName("setDelegate:"), function $CPURLConnection__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    _delegate = aDelegate;
}
});
instance_methods[4] = new objj_method(sel_registerName("start"), function $CPURLConnection__start(self, _cmd)
{ with(self)
{
    _isCanceled = NO;
    try
    {
        _XMLHTTPRequest.open(objj_msgSend(_request, "HTTPMethod"), objj_msgSend(_request, "URL"), YES);
        _XMLHTTPRequest.onreadystatechange = function() { objj_msgSend(self, "_readyStateDidChange"); }
        var fields = objj_msgSend(_request, "allHTTPHeaderFields"),
            key = nil,
            keys = objj_msgSend(fields, "keyEnumerator");
        while (key = objj_msgSend(keys, "nextObject"))
            _XMLHTTPRequest.setRequestHeader(key, objj_msgSend(fields, "objectForKey:", key));
        _XMLHTTPRequest.send(objj_msgSend(_request, "HTTPBody"));
    }
    catch (anException)
    {
        objj_msgSend(_delegate, "connection:didFailWithError:", self, anException);
    }
}
});
instance_methods[5] = new objj_method(sel_registerName("cancel"), function $CPURLConnection__cancel(self, _cmd)
{ with(self)
{
    _isCanceled = YES;
    try
    {
        _XMLHTTPRequest.abort();
    }
    catch (anException)
    {
    }
}
});
instance_methods[6] = new objj_method(sel_registerName("_readyStateDidChange"), function $CPURLConnection___readyStateDidChange(self, _cmd)
{ with(self)
{
    if (_XMLHTTPRequest.readyState == XMLHTTPRequestComplete)
    {
        var statusCode = _XMLHTTPRequest.status;
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("connection:didReceiveResponse:")))
            objj_msgSend(_delegate, "connection:didReceiveResponse:", self, objj_msgSend(objj_msgSend(CPHTTPURLResponse, "alloc"), "_initWithStatusCode:", statusCode));
        if (!_isCanceled)
        {
            if (statusCode == 200)
            {
                if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("connection:didReceiveData:")))
                    objj_msgSend(_delegate, "connection:didReceiveData:", self, _XMLHTTPRequest.responseText);
                if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("connectionDidFinishLoading:")))
                    objj_msgSend(_delegate, "connectionDidFinishLoading:", self);
            }
            else if (statusCode == 401 && objj_msgSend(CPURLConnectionDelegate, "respondsToSelector:", sel_registerName("connectionDidReceiveAuthenticationChallenge:")))
                objj_msgSend(CPURLConnectionDelegate, "connectionDidReceiveAuthenticationChallenge:", self);
            else
            {
                if (objj_msgSend(_delegate, "respondsToSelector:", sel_registerName("connection:didFailWithError:")))
                    objj_msgSend(_delegate, "connection:didFailWithError:", self, _XMLHTTPRequest.status);
            }
        }
    }
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "performSelectors");
}
});
instance_methods[7] = new objj_method(sel_registerName("_XMLHTTPRequest"), function $CPURLConnection___XMLHTTPRequest(self, _cmd)
{ with(self)
{
    return _XMLHTTPRequest;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}

p;14;CPURLRequest.ji;10;CPObject.jc;3056;
{var the_class = objj_allocateClassPair(CPObject, "CPURLRequest"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_URL"), new objj_ivar("_HTTPBody"), new objj_ivar("_HTTPMethod"), new objj_ivar("_HTTPHeaderFields")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("requestWithURL:"), function $CPURLRequest__requestWithURL_(self, _cmd, aURL)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPURLRequest, "alloc"), "initWithURL:", aURL);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithURL:"), function $CPURLRequest__initWithURL_(self, _cmd, aURL)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _URL = aURL;
        _HTTPBody = "";
        _HTTPMethod = "GET";
        _HTTPHeaderFields = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(self, "setValue:forHTTPHeaderField:", "Thu, 1 Jan 1970 00:00:00 GMT", "If-Modified-Since");
        objj_msgSend(self, "setValue:forHTTPHeaderField:", "no-cache", "Cache-Control");
    }
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("URL"), function $CPURLRequest__URL(self, _cmd)
{ with(self)
{
    return _URL;
}
});
instance_methods[2] = new objj_method(sel_registerName("setURL:"), function $CPURLRequest__setURL_(self, _cmd, aURL)
{ with(self)
{
    _URL = aURL;
}
});
instance_methods[3] = new objj_method(sel_registerName("setHTTPBody:"), function $CPURLRequest__setHTTPBody_(self, _cmd, anHTTPBody)
{ with(self)
{
    _HTTPBody = anHTTPBody;
}
});
instance_methods[4] = new objj_method(sel_registerName("HTTPBody"), function $CPURLRequest__HTTPBody(self, _cmd)
{ with(self)
{
    return _HTTPBody;
}
});
instance_methods[5] = new objj_method(sel_registerName("setHTTPMethod:"), function $CPURLRequest__setHTTPMethod_(self, _cmd, anHTTPMethod)
{ with(self)
{
    _HTTPMethod = anHTTPMethod;
}
});
instance_methods[6] = new objj_method(sel_registerName("HTTPMethod"), function $CPURLRequest__HTTPMethod(self, _cmd)
{ with(self)
{
    return _HTTPMethod;
}
});
instance_methods[7] = new objj_method(sel_registerName("allHTTPHeaderFields"), function $CPURLRequest__allHTTPHeaderFields(self, _cmd)
{ with(self)
{
    return _HTTPHeaderFields;
}
});
instance_methods[8] = new objj_method(sel_registerName("valueForHTTPHeaderField:"), function $CPURLRequest__valueForHTTPHeaderField_(self, _cmd, aField)
{ with(self)
{
    return objj_msgSend(_HTTPHeaderFields, "objectForKey:", aField);
}
});
instance_methods[9] = new objj_method(sel_registerName("setValue:forHTTPHeaderField:"), function $CPURLRequest__setValue_forHTTPHeaderField_(self, _cmd, aValue, aField)
{ with(self)
{
    objj_msgSend(_HTTPHeaderFields, "setObject:forKey:", aValue, aField);
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}

p;15;CPURLResponse.ji;10;CPObject.jc;1088;
{var the_class = objj_allocateClassPair(CPObject, "CPURLResponse"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
}
{var the_class = objj_allocateClassPair(CPURLResponse, "CPHTTPURLResponse"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_statusCode")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("_initWithStatusCode:"), function $CPHTTPURLResponse___initWithStatusCode_(self, _cmd, aStatusCode)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPURLResponse") }, "init");
    if (self)
        _statusCode = aStatusCode;
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("statusCode"), function $CPHTTPURLResponse__statusCode(self, _cmd)
{ with(self)
{
    return _statusCode;
}
});
class_addMethods(the_class, instance_methods);
}

p;22;CPUserSessionManager.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jc;2723;
CPUserSessionUndeterminedStatus = 0;
CPUserSessionLoggedInStatus = 1;
CPUserSessionLoggedOutStatus = 2;
CPUserSessionManagerStatusDidChangeNotification = "CPUserSessionManagerStatusDidChangeNotification";
CPUserSessionManagerUserIdentifierDidChangeNotification = "CPUserSessionManagerUserIdentifierDidChangeNotification";
var CPDefaultUserSessionManager = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPUserSessionManager"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_status"), new objj_ivar("_userIdentifier")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("defaultManager"), function $CPUserSessionManager__defaultManager(self, _cmd)
{ with(self)
{
    if (!CPDefaultUserSessionManager)
        CPDefaultUserSessionManager = objj_msgSend(objj_msgSend(CPUserSessionManager, "alloc"), "init");
    return CPDefaultUserSessionManager;
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("init"), function $CPUserSessionManager__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        _status = CPUserSessionUndeterminedStatus;
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("status"), function $CPUserSessionManager__status(self, _cmd)
{ with(self)
{
    return _status;
}
});
instance_methods[2] = new objj_method(sel_registerName("setStatus:"), function $CPUserSessionManager__setStatus_(self, _cmd, aStatus)
{ with(self)
{
    if (_status == aStatus)
        return;
    _status = aStatus;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPUserSessionManagerStatusDidChangeNotification, self);
    if (_status != CPUserSessionLoggedInStatus)
        objj_msgSend(self, "setUserIdentifier:", nil);
}
});
instance_methods[3] = new objj_method(sel_registerName("userIdentifier"), function $CPUserSessionManager__userIdentifier(self, _cmd)
{ with(self)
{
    return _userIdentifier;
}
});
instance_methods[4] = new objj_method(sel_registerName("setUserIdentifier:"), function $CPUserSessionManager__setUserIdentifier_(self, _cmd, anIdentifier)
{ with(self)
{
    if (_userIdentifier == anIdentifier)
        return;
    _userIdentifier = anIdentifier;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPUserSessionManagerUserIdentifierDidChangeNotification, self);
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}

p;9;CPValue.ji;10;CPObject.ji;9;CPCoder.jc;5271;
{var the_class = objj_allocateClassPair(CPObject, "CPValue"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_JSObject")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
var class_methods = [];
class_methods[0] = new objj_method(sel_registerName("valueWithJSObject:"), function $CPValue__valueWithJSObject_(self, _cmd, aJSObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithJSObject:", aJSObject);
}
});
var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithJSObject:"), function $CPValue__initWithJSObject_(self, _cmd, aJSObject)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        _JSObject = aJSObject;
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("JSObject"), function $CPValue__JSObject(self, _cmd)
{ with(self)
{
    return _JSObject;
}
});
class_addMethods(the_class, instance_methods);
class_addMethods(meta_class, class_methods);
}
var CPValueValueKey = "CPValueValueKey";
{
var the_class = objj_getClass("CPValue")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPValue\""));
var meta_class = the_class.isa;var instance_methods = [];
instance_methods[0] = new objj_method(sel_registerName("initWithCoder:"), function $CPValue__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        _JSObject = CPJSObjectCreateWithJSON(objj_msgSend(aCoder, "decodeObjectForKey:", CPValueValueKey));
    return self;
}
});
instance_methods[1] = new objj_method(sel_registerName("encodeWithCoder:"), function $CPValue__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", CPJSObjectCreateJSON(_JSObject), CPValueValueKey);
}
});
class_addMethods(the_class, instance_methods);
}
var _JSONCharacterEncodings = {};
_JSONCharacterEncodings['\b'] = "\\b";
_JSONCharacterEncodings['\t'] = "\\t";
_JSONCharacterEncodings['\n'] = "\\n";
_JSONCharacterEncodings['\f'] = "\\f";
_JSONCharacterEncodings['\r'] = "\\r";
_JSONCharacterEncodings['"'] = "\\\"";
_JSONCharacterEncodings['\\'] = "\\\\";
var _JSONEncodedCharacters = new RegExp("[\\\"\\\\\\x00-\\x1f\\x7f-\\x9f]", 'g');
CPJSObjectCreateJSON= function(aJSObject)
{
    var type = typeof aJSObject,
        valueOf = aJSObject.valueOf(),
        typeValueOf = typeof valueOf;
    if (type != typeValueOf)
    {
        type = typeValueOf;
        aJSObject = valueOf;
    }
    switch (type)
    {
        case "string":
                        if (!_JSONEncodedCharacters.test(aJSObject))
                            return '"' + aJSObject + '"';
                        return '"' + aJSObject.replace(_JSONEncodedCharacters, _CPJSObjectEncodeCharacter) + '"';
        case "number":
                        return isFinite(aJSObject) ? String(aJSObject) : "null";
        case "boolean":
        case "null": return String(aJSObject);
        case "object":
                        if (!aJSObject)
                            return "null";
                        if (typeof aJSObject.toJSON === "function")
                            return CPJSObjectCreateJSON(aJSObject.toJSON());
                        var array = [];
                        if (aJSObject.slice)
                        {
                            var index = 0,
                                count = aJSObject.length;
                            for (; index < count; ++index)
                                array.push(CPJSObjectCreateJSON(aJSObject[index]) || "null");
                            return '[' + array.join(',') + ']';
                        }
                        var key = NULL;
                        for (key in aJSObject)
                        {
                            if (!(typeof key === "string"))
                                continue;
                            var value = CPJSObjectCreateJSON(aJSObject[key]);
                            if (value)
                                array.push(CPJSObjectCreateJSON(key) + ':' + value);
                        }
                        return '{' + array.join(',') + '}';
    }
}
var _CPJSObjectEncodeCharacter = function(aCharacter)
{
    var encoding = _JSONCharacterEncodings[aCharacter];
    if (encoding)
        return encoding;
    encoding = aCharacter.charCodeAt(0);
    return '\\u00' + FLOOR(encoding / 16).toString(16) + (encoding % 16).toString(16);
}
var _JSONBackslashCharacters = new RegExp("\\\\.", 'g'),
    _JSONSimpleValueTokens = new RegExp("\"[^\"\\\\\\n\\r]*\"|true|false|null|-?\\d+(?:\\.\\d*)?(?:[eE][+\\-]?\\d+)?", 'g'),
    _JSONValidOpenBrackets = new RegExp("(?:^|:|,)(?:\\s*\\[)+", 'g'),
    _JSONValidExpression = new RegExp("^[\\],:{}\\s]*$");
CPJSObjectCreateWithJSON= function(aString)
{
    if (_JSONValidExpression.test(aString.replace(_JSONBackslashCharacters, '@').replace(_JSONSimpleValueTokens, ']').replace(_JSONValidOpenBrackets, '')))
        return eval('(' + aString + ')');
    return nil;
}

p;12;Foundation.ji;9;CPArray.ji;10;CPBundle.ji;9;CPCoder.ji;8;CPData.ji;8;CPDate.ji;14;CPDictionary.ji;14;CPEnumerator.ji;13;CPException.ji;12;CPIndexSet.ji;14;CPInvocation.ji;19;CPJSONPConnection.ji;17;CPKeyedArchiver.ji;19;CPKeyedUnarchiver.ji;18;CPKeyValueCoding.ji;21;CPKeyValueObserving.ji;7;CPLog.ji;16;CPNotification.ji;22;CPNotificationCenter.ji;8;CPNull.ji;10;CPNumber.ji;10;CPObject.ji;15;CPObjJRuntime.ji;29;CPPropertyListSerialization.ji;9;CPRange.ji;11;CPRunLoop.ji;18;CPSortDescriptor.ji;10;CPString.ji;15;CPUndoManager.ji;17;CPURLConnection.ji;14;CPURLRequest.ji;15;CPURLResponse.ji;22;CPUserSessionManager.ji;9;CPValue.j