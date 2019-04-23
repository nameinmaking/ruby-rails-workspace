###Course 1: Ruby on Rails: An Introduction

**File Names** should use snake case (lowercase with underscores).

**In comments** there should be space after the # directive.

**Single Quotes ''** should be used till we require String interpolation.

**unless** is used in replacement of if, unless (condition). If the condition is true then do the following.

**until** is used in replacement of while loop, until (condition) will execute till the condition is satisfied.

####Modifier Form
   if, unless, while, until - on the same line as the statement
   
   ```
   a = 5
   b = 0
   
   puts "One liner" if a ==5 and b == 0
   ```
####True/False
Only `false` and `nil` are false

```
0 is true
"false" is true
if "" is true
"nil" is true
if false is false
if nil is false
```

####For Loop
```
for i int 0..2
    puts i
end
```

---

##~~Functions~~ and Methods
> Technically, a function is defined outside of a class and a method is defined inside a class.

> In Ruby, every function/method has at least one class it belongs to:  
>* Not always written inside a class.

* Parenthesis are optional in Ruby.
* Datatype for arguments are not given.
* A method can return anything.
* Since in Ruby all the lines are evaluated,so the last line inside a method is the line that is returned by a method.

###Expressive Methods
* Methods names can end with:
    + **'?' - Predicate methods**:  return boolean values.
    ```
    def can_divide_by?(number)
        return false if number.zero?
        true
    end
    
    puts can_divide_by? 3 # => true
    puts can_divide_by? 0 # => false
    ```
    + **'!' - Dangerous Side Effects**:
    
###Splat
*  *prefixs parameter inside method definition
    + can even apply to middle parameter, not just the last.
    + you can use it to pass an undefined number of a parameters. Ruby converts the parameters to an array that can be used directly.
 
 ```
 def max(one_param, *numbers, another)
   # Variable length parameters passed in
   # becomes an array
   numbers.max
 end
 
 puts max("Something", 7, 32, -4, "more") # => 32
 ```
 
 ___
 ##Blocks
 Blocks are chunks of code
    * Enclosed b/w either curly braces ({}) or the keywords do and end.
    * Passed to methods as last "parameter"
  
  **Convention**
  * User {} when content is a single line.
  * Use do and end when block content spans multiple lines. 
  
  ___
  ##Reading and Writing to files
  Files can be read using the File.foreach('file_name') method, and store the content in a block using `|line|`.
  * To print the content of the file use puts method.
  * To print the internal representation of the content use p.
  * To chop off the newline character from the line, use `p line.chomp`
  * To split the content of the line into words use `p line.split`
  
  ####When files don't exist
  **Method 1: Using exist? method**
  ```
  if File.exist? 'test.txt'
    File.foreach('test.txt') do |line|
      puts line.chomp
    end
  end
  ```
  
  **Method 2: Using Exception Handling (begin...rescue)**
  ```
  begin
    File.foreach('do_not_exist.txt') do |line|
      puts line.chomp
    end
  rescue Exception => e
    puts e.message
    puts "Let's pretend this didn't happen..."
  end
  ```
  
  ####Writing to the file(s)
  The file is **automatically closed** after the block executes.
  ```
  File.open("test1.txt","w") do |file|
    file.puts "line #1"
    file.puts "Another line"
  end
  ```
  
  ___
 ##Reading environment variable 
 `puts ENV["ENVIRONMENT_VARIABLE"]`
 
 For example:
`puts ENV[JAVA_HOME] # => /usr/lib/jvm/java-12-oracle`