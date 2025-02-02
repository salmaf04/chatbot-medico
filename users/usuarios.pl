:- module(usuarios, [
    crear_usuario/2,
    eliminar_usuario/1,
    guardar_historial/4,  % Ahora recibe 4 argumentos (ID, Enfermedad, Sintomas, Fecha)
    obtener_historial/2,
    cargar_usuarios/0,
    guardar_usuarios/0
]).

:- dynamic usuario/2.       % usuario(ID, Nombre)
:- dynamic historial/4.     % historial(ID, Enfermedad, Sintomas, Fecha)
:- use_module('../interactuar/interfaz').

% Cargar usuarios desde un archivo al iniciar el programa
cargar_usuarios :-
    exists_file('usuarios.txt'),
    !,
    consult('usuarios.txt').
cargar_usuarios.

% Guardar usuarios en un archivo al cerrar el programa
guardar_usuarios :-
    tell('usuarios.txt'),
    listing(usuario/2),
    listing(historial/4),
    told.

% Crear un nuevo usuario
crear_usuario(ID, Nombre) :-
    (   usuario(ID, _)  % Verifica si el ID ya existe
    ->  write_color('Error: El ID ya está en uso. Por favor, elige otro.', red), nl,
        manejar_opcion(11)
    ;   assertz(usuario(ID, Nombre)),  % Crea el usuario si el ID es único
        write_color('Usuario creado exitosamente.', green), nl
    ).

% Guardar el historial clínico de un usuario (ahora con fecha)
guardar_historial(ID, Enfermedad, Sintomas, Fecha) :-
    (   usuario(ID, _)
    ->  assertz(historial(ID, Enfermedad, Sintomas, Fecha)),
        write_color('Historial clínico actualizado.', green), nl
    ;   write_color('Error: El usuario no existe.', red), nl,
        fail  % Fuerza el fallo
    ).
% Obtener el historial clínico de un usuario
obtener_historial(ID, Historial) :-
    findall((Enfermedad, Sintomas, Fecha), historial(ID, Enfermedad, Sintomas, Fecha), Historial).

% Predicado para eliminar un usuario y su historial clínico
eliminar_usuario(ID) :-
    (   usuario(ID, _)  % Verifica si el usuario existe
    ->  retractall(usuario(ID, _)),  % Elimina el usuario
        retractall(historial(ID, _, _, _)),  % Elimina su historial clínico
        write_color('Usuario y su historial clínico eliminados exitosamente.', green), nl
    ;   write_color('Error: El usuario no existe.', red), nl
    ).