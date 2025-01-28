:- module(interfaz, [interfaz/0, procesar_sintomas/1]).

:- use_module('../core/diagnostico').
:- use_module('../data/conocimientos').

interfaz :-
    write('Bienvenido al Asistente Médico'), nl,
    write('Introduce tus síntomas separados por comas: '), nl,
    read_line_to_string(user_input, SintomasString),
    procesar_sintomas(SintomasString).

procesar_sintomas(SintomasString) :-
    % Reemplaza los puntos por comas en la cadena de entrada
    string_replace(SintomasString, ".", ",", TempString),
    % Elimina espacios en blanco al principio y al final de la cadena
    normalize_space(atom(SintomasAtom), TempString),
    % Divide la cadena en una lista de síntomas, eliminando espacios adicionales
    split_string(SintomasAtom, ",", " ", SintomasList),
    % Convierte cada elemento de la lista de cadenas a un átomo
    maplist(atom_string, SintomasAtoms, SintomasList),
    diagnosticar(SintomasAtoms, Enfermedad),
    (   Enfermedad = desconocida
    ->  write('Lo siento, no pude identificar los síntomas, intenta de nuevo.'), nl
    ;   write('Parece que podrías tener: '), write(Enfermedad), nl,
        sugerir_tratamiento(Enfermedad)
    ).

% Predicado auxiliar para reemplazar caracteres en una cadena
string_replace(Input, Find, Replace, Output) :-
    split_string(Input, Find, "", List),
    atomic_list_concat(List, Replace, Output).