package stdgo;
import stdgo.StdTypes;
function deepEqual(a:Dynamic,b:Dynamic):Bool {
    if (a == null)
        return a == b;
    var cl = Type.getClass(a);
    if (cl != null) {
        var name = Type.getClassName(cl);
        switch name {
            case "stdgo.PointerData":
                if (a.get == null)
                    return false;
                return deepEqual(a.get(),b.get());
            case "haxe.ds.Vector":
                if (a.length != b.length)
                    return false;
                var a:haxe.ds.Vector<Dynamic> = a;
                var b:haxe.ds.Vector<Dynamic> = b;
                for (i in 0...a.length) {
                    if (!deepEqual(a[i],b[i]))
                        return false;
                }
                return true;
            case "stdgo.SliceData":
                if (a.length != b.length)
                    return false;
                var a:stdgo.Slice.SliceData<Dynamic> = a;
                var b:stdgo.Slice.SliceData<Dynamic> = b;
                for (i in 0...a.length) {
                    if (!deepEqual(a.get(i),b.get(i)))
                        return false;
                }
                return true;
            case "String":
                return a == b;
            default:
                trace("unknown reflect name: " + name);
        }
    }
    if (Std.isOfType(a,Dynamic)) {
       var isObject = Reflect.isObject(a);
       if (!isObject)
            return isObject == Reflect.isObject(b);
       var aFields = Reflect.fields(a);
       var bFields = Reflect.fields(b);
       if (aFields.length != bFields.length) 
           return false;
       for (i in 0...aFields.length) {
           if (Reflect.field(a,aFields[i]) != Reflect.field(b,bFields[i]))
            return false;
       }
       return true;
    }
    return a == b;
}