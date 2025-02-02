:- module(especialidades, [recomendacion_especialista/1]).
:-use_module('../interactuar/interfaz').

recomendacion_especialista(neumonia)  :- write_color('Se recomienda consultar a un neumólogo.', green), nl.
recomendacion_especialista(gripe) :- write_color('Generalmente no requiere consulta con un especialista.', green), nl.
recomendacion_especialista(covid19) :- write_color('Se recomienda consultar a un infectólogo.', green), nl.
recomendacion_especialista(resfriado_comun) :- write_color('Generalmente no requiere consulta con un especialista.', green), nl.
recomendacion_especialista(bronquitis) :- write_color('Se recomienda consultar a un neumólogo.', green), nl.
recomendacion_especialista(faringitis) :- write_color('Se recomienda consultar a un otorrinolaringólogo.', green), nl.
recomendacion_especialista(sinusitis) :- write_color('Se recomienda consultar a un otorrinolaringólogo.', green), nl.
recomendacion_especialista(gastroenteritis) :- write_color('Se recomienda consultar a un gastroenterólogo.', green), nl.
recomendacion_especialista(otitis) :- write_color('Se recomienda consultar a un otorrinolaringólogo.', green), nl.
recomendacion_especialista(conjuntivitis) :- write_color('Se recomienda consultar a un oftalmólogo.', green), nl.
recomendacion_especialista(alergia) :- write_color('Se recomienda consultar a un alergólogo.', green), nl.
recomendacion_especialista(artritis) :- write_color('Se recomienda consultar a un reumatólogo.', green), nl.
recomendacion_especialista(asma) :- write_color('Se recomienda consultar a un neumólogo.', green), nl.
recomendacion_especialista(hipertension) :- write_color('Se recomienda consultar a un cardiólogo.', green), nl.
recomendacion_especialista(diabetes) :- write_color('Se recomienda consultar a un endocrinólogo.', green), nl.
recomendacion_especialista(migraña) :- write_color('Se recomienda consultar a un neurólogo.', green), nl.
recomendacion_especialista(ansiedad) :- write_color('Se recomienda consultar a un psicólogo o psiquiatra.', green), nl.
recomendacion_especialista(depresion) :- write_color('Se recomienda consultar a un psicólogo o psiquiatra.', green), nl.