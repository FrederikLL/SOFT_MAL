study(jens, math).
study(karsten, database).
study(else, math).
study(helle, exploration).


room(101, math).
room(201, database).
room(301, exploration).

classes(monday, math).
classes(thursday, database).
classes(friday, exploration).


studies(Student, Class):-
	study(Student, Class).

schedule(Date,Class,Location):-
	classes(Date,Class),
	room(Location, Class).

relations(Student,Class,Date,Location):-
	study(Student, Class),
	classes(Date,Class),
	room(Location, Class).

/** <examples>
?- studies(karsten,database).
?- studies(karsten,math).
?- schedule(monday,math,101).
?- schedule(monday,math,301).
?- studies(helle,exploration).
?- schedule(thursday,database,201).
?- relations(helle,exploration,friday,301).
*/