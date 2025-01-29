:- module(interfaz, [interfaz/0, procesar_sintomas/1]).

:- use_module('../core/diagnostico').
:- use_module('../data/conocimientos').
:- use_module('../data/informacion_enfermedades'). 
:- use_module('../data/medicamentos').

% Predicado principal que inicia el bucle de interacción
interfaz :-
    write('Bienvenido al Asistente Médico'), nl,
    bucle_interaccion.

% Bucle de interacción que permite al usuario elegir opciones
bucle_interaccion :-
    mostrar_opciones,
    leer_opcion(Opcion),
    manejar_opcion(Opcion),
    (Opcion \= 4 -> bucle_interaccion ; true).

% Mostrar las opciones disponibles al usuario
mostrar_opciones :-
    write('Por favor, elige una opción:'), nl,
    write('1. Diagnóstico de síntomas'), nl,
    write('2. Información sobre enfermedades'), nl,
    write('3. Información sobre medicamentos'), nl,
    write('4. Salir'), nl.

% Leer la opción elegida por el usuario
leer_opcion(Opcion) :-
    write('Introduce el número de la opción: '),
    read(Opcion),
    nl.  % Añadir nueva línea para claridad

% Manejar la opción elegida por el usuario
manejar_opcion(1) :-
    !,  % Corte para evitar backtracking después de elegir esta opción
    write('Introduce tus síntomas separados por comas: '), nl,
    read(SintomasString),
    procesar_sintomas(SintomasString).

manejar_opcion(2) :-
    !,  % Corte para evitar backtracking después de elegir esta opción
    write('Introduce el nombre de la enfermedad: '), nl,
    read(Enfermedad),  
    mostrar_informacion_enfermedad(Enfermedad).

manejar_opcion(3) :-
    !,  % Corte para evitar backtracking después de elegir esta opción
    write('Introduce el nombre del medicamento: '), nl,
    read(Medicamento),  
    mostrar_informacion_medicamento(Medicamento).

manejar_opcion(4) :-
    !,  % Corte para evitar backtracking después de elegir esta opción
    write('Gracias por usar el Asistente Médico. ¡Adiós!'), nl.

manejar_opcion(_) :-
    !,  % Corte para evitar backtracking después de manejar una opción no válida
    write('Opción no válida. Por favor, intenta de nuevo.'), nl.

% Mostrar información detallada sobre la enfermedad
mostrar_informacion_enfermedad(Enfermedad) :-
    informacion_enfermedad(Enfermedad, causas(Causas), sintomas(Sintomas), complicaciones(Complicaciones)),
    format('~nInformación sobre ~w:~n', [Enfermedad]),
    write('Causas: '), imprimir_lista_sin_corchetes(Causas), nl,
    write('Síntomas: '), imprimir_lista_sin_corchetes(Sintomas), nl,
    write('Complicaciones: '), imprimir_lista_sin_corchetes(Complicaciones), nl.
mostrar_informacion_enfermedad(_) :-
    write('Lo siento, no tengo información sobre esa enfermedad.'), nl.

% Predicado para imprimir cada elemento de la lista en una línea separada por comas
imprimir_lista_sin_corchetes([]).
imprimir_lista_sin_corchetes([Ultimo]) :-
    write(Ultimo).
imprimir_lista_sin_corchetes([Cabeza|Cola]) :-
    write(Cabeza), write(', '),
    imprimir_lista_sin_corchetes(Cola).

% Procesar los síntomas introducidos por el usuario
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
        sugerir_tratamiento(Enfermedad),
        informacion_vacuna(Enfermedad, Info),
        write('Información sobre vacunas: '), nl,
        imprimir_lista(Info)
    ).

% Predicado para imprimir cada elemento de la lista en una nueva línea
imprimir_lista([]).
imprimir_lista([Cabeza|Cola]) :-
    write(Cabeza), nl,
    imprimir_lista(Cola).

% Predicado auxiliar para reemplazar caracteres en una cadena
string_replace(Input, Find, Replace, Output) :-
    split_string(Input, Find, "", List),
    atomic_list_concat(List, Replace, Output).

% Mostrar información detallada sobre el medicamento
mostrar_informacion_medicamento(Medicamento) :-
    informacion_medicamento(Medicamento, Info),
    write('Información sobre el medicamento: '), write(Medicamento), nl,
    mostrar_lista(Info).

mostrar_informacion_medicamento(_) :-
    write('Lo siento, no tengo información sobre esa medicamento.'), nl.

mostrar_lista([]).
mostrar_lista([Cabeza|Cola]) :-
    write(Cabeza), nl,
    mostrar_lista(Cola).
