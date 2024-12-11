
# [Constrcutors](https://medium.flutterdevs.com/explore-types-of-constructors-in-dart-f872e76d9f9c "The best search engine for privacy")

class members as late, late final, or nullable types.

### Type 1 — Initializing the class members inside the constructor body :
> <pre>
>class Student { 
>   late String _studentName;
>   late int _attendance; 
>   Student(String studentName, int attendance){ 
>       _studentName = studentName;
>       _attendance = attendance;
>   }
>}
> </pre>

#### Proclaiming class members as late final type :
Initialize the members later (at the constructor body)and just a single time.
> <pre>
>class Student {
>   late final String _studentName;
>   late final int _attendance;
>   Student(String studentName, int attendance) {
>       _studentName = studentName;
>       _attendance = attendance;
>   }
>}
> </pre>

#### Proclaiming class members as nullable type:
Initializing the members with null and reassigning them to the constructor body.
> <pre>
>class Student {
>   String? _studentName;
>   int? _attendance;
>   Student(String studentName, int attendance) {
>       _studentName = studentName;
>       _attendance = attendance;
>   }
>}
> <pre>

### Type 2 - Initializing the members before the constructor body :

#### Constructor with empty body

> <pre>
>class Student {
>   String _studentName;
>   int _attendance;
>   Student(this._studentName,this._attendance);
> }
> </pre>


#### Constructor with body

> <pre>
>class Student {
>   String _studentName;
>   int _attendance;
>   Student(this._studentName,this._attendance) {
>       // block of code executed at the time of object creation. 
>   }
> }
> </pre>

### Type 3 — Named constructors and Factory Constructors :
In java, you can have numerous constructors with a similar name yet contrasting in the type and number of parameters.. Tragically, we can’t do that in Dart, that is the reason we have named constructors to assist us with working likewise.

<mark style="background-color: grey">initial</mark> is a named constructor

> <pre>
>Student.initial(String studentName, int attendance):
>   _studentName = studentName,
>   _attendance = 30;
> </pre>


### Type 4 — Redirecting Constructors:
Type of constructor redirects to another constructor.

> Student.newStudent(String studentName) : this(studentName,0);

### Type 5 — const constructors:
const constructor initializing members of immutable class
><pre>
>class Student{
>   final String _studentName;
>   final int _attendance;
>
>   const Student(this._studentName,this._attendance);
>}
></pre>




