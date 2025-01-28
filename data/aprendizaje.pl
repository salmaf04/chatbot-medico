% Regla para agregar un nuevo síntoma a una enfermedad
aprende_sintoma(Enfermedad, Sintoma) :-
    \+ tiene_sintoma(Enfermedad, Sintoma),
    assert(tiene_sintoma(Enfermedad, Sintoma)),
    write('Nuevo síntoma aprendido: '), write(Sintoma), nl.
