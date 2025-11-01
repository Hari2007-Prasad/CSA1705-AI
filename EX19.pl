teaches(john,math).
teaches(bob,english).
teaches(tom,science).
teaching_subjects(Teacher, Subject) :-
teaches(Teacher, Subject).

