:- module(diagnostico, [diagnosticar/2, sugerir_tratamiento/1]).

:- use_module('../data/conocimientos').

diagnosticar(SintomasUsuario, EnfermedadProbable) :-
    findall(Enfermedad, enfermedad(Enfermedad), Enfermedades),
    maplist(contar_sintomas(SintomasUsuario), Enfermedades, Puntuaciones),
    % Asegúrate de que las puntuaciones están en el formato correcto
    max_member((MaxPuntuacion, EnfermedadProbable), Puntuaciones),
    MaxPuntuacion > 0.

contar_sintomas(SintomasUsuario, Enfermedad, (Puntuacion, Enfermedad)) :-
    findall(Sintoma, tiene_sintoma(Enfermedad, Sintoma), SintomasEnfermedad),
    intersection(SintomasUsuario, SintomasEnfermedad, SintomasComunes),
    length(SintomasComunes, Puntuacion).

sugerir_tratamiento(Enfermedad) :-
    tratamiento(Enfermedad, Tratamiento),
    write('Tratamiento recomendado: '), write(Tratamiento), nl.



