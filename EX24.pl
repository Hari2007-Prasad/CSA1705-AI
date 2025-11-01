disease(diabetes).
diet(diabetes, 'Low sugar, complex carbs, consult doctor').
disease(hypertension).
diet(hypertension, 'Low salt, DASH style').
suggest(D,Advice) :- diet(D,Advice).
