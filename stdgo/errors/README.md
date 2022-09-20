# Module: stdgo.errors


[(view library index)](../stdgo.md)


# Overview


Package errors implements functions to manipulate errors.  The New function creates errors whose only content is a text message.  The Unwrap, Is and As functions work on errors that may wrap other errors. An error wraps another error if its type has the method  Unwrap\(\) error  If e.Unwrap\(\) returns a non\-nil error w, then we say that e wraps w.  Unwrap unpacks wrapped errors. If its argument's type has an Unwrap method, it calls the method once. Otherwise, it returns nil.  A simple way to create wrapped errors is to call fmt.Errorf and apply the %w verb to the error argument:  errors.Unwrap\(fmt.Errorf\("... %w ...", ..., err, ...\)\)  returns err.  Is unwraps its first argument sequentially looking for an error that matches the second. It reports whether it finds a match. It should be used in preference to simple equality checks:  if errors.Is\(err, fs.ErrExist\)  is preferable to  if err == fs.ErrExist  because the former will succeed if err wraps fs.ErrExist.  As unwraps its first argument sequentially looking for an error that can be assigned to its second argument, which must be a pointer. If it succeeds, it performs the assignment and returns true. Otherwise, it returns false. The form  var perr \*fs.PathError if errors.As\(err, &perr\) \{ fmt.Println\(perr.Path\) \}  is preferable to  if perr, ok := err.\(\*fs.PathError\); ok \{ fmt.Println\(perr.Path\) \}  because the former will succeed if err wraps an \*fs.PathError. 



# Index


- [function as\(\_err:stdgo.Error, \_target:stdgo.AnyInterface\):Bool](<#function-as>)

- [function is\_\(\_err:stdgo.Error, \_target:stdgo.Error\):Bool](<#function-is_>)

- [function new\_\(\_text:stdgo.GoString\):stdgo.Error](<#function-new_>)

- [function unwrap\(\_err:stdgo.Error\):stdgo.Error](<#function-unwrap>)

# Examples


- [exampleAs](<#exampleas>)

- [exampleUnwrap](<#exampleunwrap>)

# Functions


```haxe
import stdgo.errors.Errors
```


## function as


```haxe
function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Bool
```


As finds the first error in err's chain that matches target, and if one is found, sets target to that error value and returns true. Otherwise, it returns false.  The chain consists of err itself followed by the sequence of errors obtained by repeatedly calling Unwrap.  An error matches target if the error's concrete value is assignable to the value pointed to by target, or if the error has a method As\(interface\{\}\) bool such that As\(target\) returns true. In the latter case, the As method is responsible for setting target.  An error type might provide an As method so it can be treated as if it were a different error type.  As panics if target is not a non\-nil pointer to either a type that implements error, or to any interface type. 


### exampleAs


<details><summary></summary>
<p>


```haxe
function exampleAs():Void {
	{
		var __tmp__ = stdgo.os.Os.open((Go.str("non-existing") : GoString)),
			_0:Ref<stdgo.os.Os.File> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			var _pathError:Ref<stdgo.io.fs.Fs.PathError> = (null : stdgo.io.fs.Fs.PathError);
			if (stdgo.errors.Errors.as(_err, Go.toInterface(_pathError))) {
				stdgo.fmt.Fmt.println((Go.str("Failed at path:") : GoString), _pathError.path);
			} else {
				stdgo.fmt.Fmt.println(_err);
			};
		};
	};
}
```


</p>
</details>


[\(view code\)](<./Errors.hx#L189>)


## function is\_


```haxe
function is_(_err:stdgo.Error, _target:stdgo.Error):Bool
```


Is reports whether any error in err's chain matches target.  The chain consists of err itself followed by the sequence of errors obtained by repeatedly calling Unwrap.  An error is considered to match a target if it is equal to that target or if it implements a method Is\(error\) bool such that Is\(target\) returns true.  An error type might provide an Is method so it can be treated as equivalent to an existing error. For example, if MyError defines  func \(m MyError\) Is\(target error\) bool \{ return target == fs.ErrExist \}  then Is\(MyError\{\}, fs.ErrExist\) returns true. See syscall.Errno.Is for an example in the standard library. An Is method should only shallowly compare err and the target and not call Unwrap on either. 


[\(view code\)](<./Errors.hx#L143>)


## function new\_


```haxe
function new_(_text:stdgo.GoString):stdgo.Error
```


New returns an error that formats as the given text. Each call to New returns a distinct error value even if the text is identical. 


[\(view code\)](<./Errors.hx#L104>)


## function unwrap


```haxe
function unwrap(_err:stdgo.Error):stdgo.Error
```


Unwrap returns the result of calling the Unwrap method on err, if err's type contains an Unwrap method returning error. Otherwise, Unwrap returns nil. 


### exampleUnwrap


<details><summary></summary>
<p>


```haxe
function exampleUnwrap():Void {
	var _err1:stdgo.Error = stdgo.errors.Errors.new_((Go.str("error1") : GoString));
	var _err2:stdgo.Error = stdgo.fmt.Fmt.errorf((Go.str("error2: [%w]") : GoString), Go.toInterface(_err1));
	stdgo.fmt.Fmt.println(_err2);
	stdgo.fmt.Fmt.println(stdgo.errors.Errors.unwrap(_err2));
}
```


</p>
</details>


[\(view code\)](<./Errors.hx#L113>)

