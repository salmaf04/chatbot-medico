:- module(numero_emergencias, [manejar_opcion_pais/1]).

:- use_module('../interactuar/interfaz').

% Manejar la opción de país elegida por el usuario
manejar_opcion_pais(1) :-
    !,  
    write_color('Números de emergencia en Cuba:', green), nl,
    write_color('Policía: 106', cyan), nl,
    write_color('Ambulancia: 104', cyan), nl,
    write_color('Bomberos: 105', cyan), nl.

manejar_opcion_pais(2) :-
    !,  
    write_color('Números de emergencia en Argentina:', green), nl,
    write_color('Policía: 101', cyan), nl,
    write_color('Ambulancia: 107', cyan), nl,
    write_color('Bomberos: 100', cyan), nl.

manejar_opcion_pais(3) :-
    !,  
    write_color('Números de emergencia en Uruguay:', green), nl,
    write_color('Policía: 911', cyan), nl,
    write_color('Ambulancia: 105', cyan), nl,
    write_color('Bomberos: 104', cyan), nl.

manejar_opcion_pais(4) :-
    !,  
    write_color('Números de emergencia en Brasil:', green), nl,
    write_color('Policía: 190', cyan), nl,
    write_color('Ambulancia: 192', cyan), nl,
    write_color('Bomberos: 193', cyan), nl.

manejar_opcion_pais(5) :-
    !,  
    write_color('Números de emergencia en España:', green), nl,
    write_color('Policía: 112', cyan), nl,
    write_color('Ambulancia: 112', cyan), nl,
    write_color('Bomberos: 112', cyan), nl.

manejar_opcion_pais(6) :-
    !,  
    write_color('Números de emergencia en Italia:', green), nl,
    write_color('Policía: 113', cyan), nl,
    write_color('Ambulancia: 118', cyan), nl,
    write_color('Bomberos: 115', cyan), nl.

manejar_opcion_pais(7) :-
    !,  
    write_color('Números de emergencia en México:', green), nl,
    write_color('Policía: 911', cyan), nl,
    write_color('Ambulancia: 911', cyan), nl,
    write_color('Bomberos: 911', cyan), nl.

manejar_opcion_pais(8) :-
    !,  
    write_color('Números de emergencia en Estados Unidos:', green), nl,
    write_color('Policía: 911', cyan), nl,
    write_color('Ambulancia: 911', cyan), nl,
    write_color('Bomberos: 911', cyan), nl.

manejar_opcion_pais(9) :-
    !,  
    write_color('Números de emergencia en Francia:', green), nl,
    write_color('Policía: 17', cyan), nl,
    write_color('Ambulancia: 15', cyan), nl,
    write_color('Bomberos: 18', cyan), nl.

manejar_opcion_pais(10) :-
    !,  
    write_color('Números de emergencia en Alemania:', green), nl,
    write_color('Policía: 110', cyan), nl,
    write_color('Ambulancia: 112', cyan), nl,
    write_color('Bomberos: 112', cyan), nl.

manejar_opcion_pais(11) :-
    !,  
    write_color('Regresando al menú anterior...', green), nl.

manejar_opcion_pais(_) :-
    !,  
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.