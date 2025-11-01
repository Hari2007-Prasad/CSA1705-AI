symptom(fever).
symptom(cough).
disease(flu) :- symptom(fever), symptom(cough).
disease(cold) :- symptom(cough), not(symptom(fever)).
