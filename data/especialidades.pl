:- module(especialidades, [recomendacion_especialista/1]).

recomendacion_especialista(neumonia)  :- write('Se recomienda consultar a un especialista.'), nl.
recomendacion_especialista(gripe) :- write('Generalmente no requiere consulta con un especialista.'), nl.
recomendacion_especialista(covid19) :- write('Se recomienda consultar a un especialista.'), nl.
