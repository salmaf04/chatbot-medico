:- module(interfaz, [interfaz/0, procesar_sintomas/1, write_color/2, manejar_opcion/1]).


:- use_module('../core/diagnostico').
:- use_module('../data/conocimientos').
:- use_module('../data/informacion_enfermedades').
:- use_module('../data/especialidades'). 
:- use_module('../data/medicamentos').
:- use_module('../data/estilo_vida').
:- use_module('../data/primeros_auxilios').
:- use_module('../data/numero_emergencias').
:- use_module('../data/embarazo_cuidado_infantil').
:- use_module('../data/soporte_cancer').
:- use_module('../data/soporte_personas_mayores').
:- use_module('../data/soporte_estudiantes').
:- use_module('../data/pacientes_enfermedades_autoinmunes').
:- use_module('../data/recomendaciones_viajeros').
:- use_module('../data/soporte_deportistas').
:- use_module('../users/usuarios').

% Predicado para imprimir texto en color
write_color(Mensaje, Color) :-
    ansi_format([fg(Color), bold], '~w', [Mensaje]), nl.

% Predicado principal que inicia el bucle de interacción
interfaz :-
    write_color('¡Bienvenido al Asistente Médico!', green),
    bucle_interaccion.

% Bucle de interacción que permite al usuario elegir opciones
bucle_interaccion :-
    mostrar_opciones,
    leer_opcion(Opcion),
    manejar_opcion(Opcion),
    (Opcion \= 18 -> bucle_interaccion ; true).

% Mostrar las opciones disponibles al usuario
mostrar_opciones :-
    write_color('Cualquier texto con más de una palabra debe ponerlo entre comillas simples', yellow),
    write_color('Por favor, elige una opción:', blue), 
    write_color('1. Número de emergencias', cyan),
    write_color('2. Primeros auxilios', cyan),
    write_color('3. Diagnóstico de síntomas', cyan),
    write_color('4. Información sobre enfermedades', cyan),
    write_color('5. Información sobre medicamentos', cyan),
    write_color('6. Consejos para mejorar tu calidad de vida', cyan),
    write_color('7. Embarazo y cuidado infantil', cyan),
    write_color('8. Soporte para estudiantes', cyan),
    write_color('9. Soporte para personas mayores', cyan),
    write_color('10. Soporte para pacientes con cáncer', cyan),
    write_color('11. Soporte para pacientes con enfermedades autoinmunes', cyan),
    write_color('12. Recomendaciones para viajeros', cyan),
     write_color('13. Soporte para deportistas', cyan),
    write_color('15. Crear usuario', cyan),  
    write_color('16. Ver historial clínico', cyan),
    write_color('17. Eliminar usuario', cyan),
    write_color('18. Salir', red),
    nl.

% Leer la opción elegida por el usuario
leer_opcion(Opcion) :-
    write('Introduce el número de la opción: '),
    read(Opcion),
    nl.  % Añadir nueva línea para claridad

manejar_opcion(1) :-
!,  
    write_color('Números de emergencia por país:', green), nl,
    write_color('1. Cuba', cyan),
    write_color('2. Argentina', cyan),
    write_color('3. Uruguay', cyan),
    write_color('4. Brasil', cyan),
    write_color('5. España', cyan),
    write_color('6. Italia', cyan),
    write_color('7. México', cyan),
    write_color('8. Estados Unidos', cyan),
    write_color('9. Francia', cyan),
    write_color('10. Alemania', cyan),
    write_color('11. Regresar al menú anterior', red), nl,
    read(OpcionPais),
    manejar_opcion_pais(OpcionPais).

manejar_opcion(2) :-
    !,  
    write_color('Primeros auxilios: ¿Qué tipo de emergencia necesitas?', blue), nl,
    write_color('1. Quemaduras', cyan),
    write_color('2. Cortes y heridas', cyan),
    write_color('3. Atragantamiento', cyan),
    write_color('4. Desmayos', cyan),
    write_color('5. Fracturas', cyan),
    write_color('6. Intoxicación', cyan),
    write_color('7. Regresar al menú principal', red), nl,
    read(OpcionEmergencia),
    manejar_opcion_emergencia(OpcionEmergencia).

% Manejar la opción elegida por el usuario
manejar_opcion(3) :-
    !,  
    write_color('Introduce tus síntomas separados por comas: ', blue), nl,
    read(SintomasString),  
    (   SintomasString \= ""  % Verifica que la cadena no esté vacía
    ->  procesar_sintomas(SintomasString), !
    ;   write_color('Por favor, introduce al menos un síntoma.', red), nl,
        flush_output,  % Vacía el buffer de salida
        manejar_opcion(3)
    ).

manejar_opcion(4) :-
    !,  
    write_color('Introduce el nombre de la enfermedad: ', blue), nl,
    read(Enfermedad),  
    mostrar_informacion_enfermedad(Enfermedad).

manejar_opcion(5) :-
    !,  
    write_color('Introduce el nombre del medicamento: ', blue), nl,
    read(Medicamento),  
    mostrar_informacion_medicamento(Medicamento).

manejar_opcion(6) :-
    !,  
    write_color('Introduce tu edad: ', blue), nl,
    read(Edad),  
    estilo_vida(Edad, Consejo),
    write_color('Consejo: ', green), write_color(Consejo, yellow), nl.

manejar_opcion(7) :-
    !,
    write_color('Embarazo y cuidado infantil:', green), nl,
    write_color('1. Información para embarazadas', cyan),
    write_color('2. Cuidado infantil', cyan),
    write_color('3. Vacunas recomendadas', cyan),
    write_color('4. Desarrollo del bebé', cyan),
    write_color('5. Regresar al menú principal', red), nl,
    read(Opcion),
    manejar_opcion_embarazo(Opcion).

manejar_opcion(8) :-
    !,
    write_color('Soporte para estudiantes:', green), nl,
    write_color('1. Recomendaciones para mejorar el estudio', cyan),
    write_color('2. Manejo del estrés', cyan),
    write_color('3. Hábitos saludables para estudiantes', cyan),
    write_color('4. Técnicas para mejorar la concentración', cyan),
    write_color('5. Recursos educativos recomendados', cyan),
    write_color('6. Regresar al menú principal', red), nl,
    read(Opcion),
    manejar_opcion_estudiantes(Opcion).

manejar_opcion(9) :-
    !,
    write_color('Recomendaciones para personas mayores:', green), nl,
    write_color('1. Recomendaciones generales de salud', cyan),
    write_color('2. Prevención de caídas', cyan),
    write_color('3. Manejo de medicamentos', cyan),
    write_color('4. Actividades para mantener la mente activa', cyan),
    write_color('5. Regresar al menú principal', red), nl,
    read(Opcion),
    manejar_opcion_personas_mayores(Opcion).

manejar_opcion(10) :-
    !,
    write_color('Soporte para pacientes con cáncer:', green), nl,
    write_color('1. Tratamientos', cyan),
    write_color('2. Efectos secundarios', cyan),
    write_color('3. Apoyo emocional', cyan),
    write_color('4. Regresar al menú principal', red), nl,
    read(Opcion),
    manejar_opcion_cancer(Opcion).

manejar_opcion(11) :-
    !,
    write_color('Soporte para enfermedades autoinmunes:', green), nl,
    write_color('1. Información sobre enfermedades', cyan),
    write_color('2. Manejo de enfermedades', cyan),
    write_color('3. Tratamientos comunes', cyan),
    write_color('4. Consejos para mejorar la calidad de vida', cyan),
    write_color('5. Regresar al menú principal', red), nl,
    read(Opcion),
    manejar_opcion_autoinmunes(Opcion).

% Manejar la opción elegida por el usuario
manejar_opcion(12) :-
    !,
    write_color('Recomendaciones para viajeros:', green), nl,
    write_color('1. Consejos de salud para viajeros', cyan),
    write_color('2. Prevención de enfermedades en el extranjero', cyan),
    write_color('3. Botiquín de viaje', cyan),
    write_color('4. Regresar al menú principal', red), nl,
    read(Opcion),
    manejar_opcion_viajeros(Opcion).

% Manejar la opción elegida por el usuario
manejar_opcion(13) :-
    !,
    write_color('Soporte para deportistas:', green), nl,
    write_color('1. Nutrición para deportistas', cyan),
    write_color('2. Cuidado físico para deportistas', cyan),
    write_color('3. Prevención y manejo de lesiones deportivas', cyan),
    write_color('4. Regresar al menú principal', red), nl,
    read(Opcion),
    manejar_opcion_deportistas(Opcion).




manejar_opcion(15) :-
    !,
    write_color('Crear usuario:', green), nl,
    write_color('Introduce un ID único para el usuario (por ejemplo, "user123"): ', blue), nl,
    read(ID),
    write_color('Introduce el nombre del usuario: ', blue), nl,
    read(Nombre),
    crear_usuario(ID, Nombre).

manejar_opcion(16) :-
    !,
    write_color('Ver historial clínico:', green), nl,
    write_color('Introduce el ID del usuario: ', blue), nl,
    read(ID),
    (   obtener_historial(ID, Historial)
    ->  (   Historial = []
        ->  write_color('No se encontró historial clínico para este usuario.', red), nl
        ;   write_color('Historial clínico:', green), nl,
            imprimir_historial(Historial)
        )
    ;   write_color('Usuario no encontrado.', red), nl
    ).

manejar_opcion(17) :-
    !,
    write_color('Eliminar usuario:', green), nl,
    write_color('Introduce el ID del usuario que deseas eliminar: ', blue), nl,
    read(ID),
    eliminar_usuario(ID).
      
manejar_opcion(18) :-
    !,
    guardar_usuarios,
    write_color('Gracias por usar el Asistente Médico. ¡Adiós!', green), nl.

manejar_opcion(_) :-
    !,  
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.


mostrar_informacion_enfermedad(Enfermedad) :-
    informacion_enfermedad(Enfermedad, causas(Causas), sintomas(Sintomas), complicaciones(Complicaciones), vacunas(Vacunas)),
    format('~nInformación sobre ~w:~n', [Enfermedad]),
    write_color('Causas: ', blue), imprimir_lista_sin_corchetes(Causas), nl,
    write_color('Síntomas: ', blue), imprimir_lista_sin_corchetes(Sintomas), nl,
    write_color('Complicaciones: ', blue), imprimir_lista_sin_corchetes(Complicaciones), nl,
    write_color('Vacunas: ', blue), imprimir_lista(Vacunas), nl.
mostrar_informacion_enfermedad(_) :-
    write_color('Lo siento, no tengo información sobre esa enfermedad.', red), nl.

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
    ->  write_color('Lo siento, no pude identificar los síntomas, intenta de nuevo.', red), nl
    ;   write_color('Parece que podrías tener: ', green), write_color(Enfermedad, yellow), nl,
        write_color('Tratamiento recomendado: ', green), sugerir_tratamiento(Enfermedad), nl,
        recomendacion_especialista(Enfermedad),
        write_color('¿Deseas guardar este diagnóstico en tu historial clínico? (s/n): ', blue), nl,
        read(Respuesta),
        (   Respuesta = 's'
        ->  write_color('Introduce tu ID de usuario: ', blue), nl,
            read(ID),
            obtener_fecha_actual(Fecha),  % Obtener la fecha actual
            guardar_historial(ID, Enfermedad, SintomasAtoms, Fecha),
            write_color('Diagnóstico guardado en tu historial clínico.', green), nl
        ;   true
        )
    ).

% Predicado para obtener la fecha actual en formato DD/MM/AAAA
obtener_fecha_actual(Fecha) :-
    get_time(Tiempo),
    format_time(atom(Fecha), '%d/%m/%Y', Tiempo).

% Predicado imprimir_historial:
imprimir_historial([]).
imprimir_historial([(Enfermedad, Sintomas, Fecha) | Resto]) :-
    write_color('Enfermedad: ', green), write_color(Enfermedad, yellow), nl,
    write_color('Síntomas: ', green), imprimir_lista_sin_corchetes(Sintomas), nl,
    write_color('Fecha de diagnóstico: ', green), write_color(Fecha, yellow), nl, nl,
    imprimir_historial(Resto).

% Predicado para imprimir cada elemento de la lista en una nueva línea
imprimir_lista([]).
imprimir_lista([Cabeza|Cola]) :-
    write_color(Cabeza, cyan), nl,
    imprimir_lista(Cola).

% Predicado auxiliar para reemplazar caracteres en una cadena
string_replace(Input, Find, Replace, Output) :-
    split_string(Input, Find, "", List),
    atomic_list_concat(List, Replace, Output).

% Mostrar información detallada sobre el medicamento
mostrar_informacion_medicamento(Medicamento) :-
    informacion_medicamento(Medicamento, Info),
    write_color('Información sobre el medicamento: ', green), write_color(Medicamento, yellow), nl,
    mostrar_lista(Info).

mostrar_informacion_medicamento(_) :-
    write_color('Lo siento, no tengo información sobre ese medicamento.', red), nl.

mostrar_lista([]).
mostrar_lista([Cabeza|Cola]) :-
    write_color(Cabeza, cyan), nl,
    mostrar_lista(Cola).

% Predicado para manejar las opciones de enfermedades autoinmunes
manejar_opcion_autoinmunes(1) :-
    !,
    write_color('Selecciona una enfermedad:', green), nl,
    write_color('1. Lupus', cyan),
    write_color('2. Artritis reumatoide', cyan),
    write_color('3. Esclerosis múltiple', cyan),
    write_color('4. Regresar al menú anterior', red), nl,
    read(OpcionEnfermedad),
    (   OpcionEnfermedad = 1 -> informacion_enfermedad(lupus)
    ;   OpcionEnfermedad = 2 -> informacion_enfermedad(artritis_reumatoide)
    ;   OpcionEnfermedad = 3 -> informacion_enfermedad(esclerosis_multiple)
    ;   OpcionEnfermedad = 4 -> write_color('Regresando al menú anterior...', green), nl,
        sleep(0.5),
        manejar_opcion(11)
    ; write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl
    ).  
      
manejar_opcion_autoinmunes(2) :-
    !,
    write_color('Selecciona una enfermedad:', green), nl,
    write_color('1. Lupus', cyan),
    write_color('2. Artritis reumatoide', cyan),
    write_color('3. Esclerosis múltiple', cyan),
    write_color('4. Regresar al menú anterior', red), nl,
    read(OpcionEnfermedad),
    (   OpcionEnfermedad = 1 -> manejo_enfermedad_autoinmune(lupus)
    ;   OpcionEnfermedad = 2 -> manejo_enfermedad_autoinmune(artritis_reumatoide)
    ;   OpcionEnfermedad = 3 -> manejo_enfermedad_autoinmune(esclerosis_multiple)
    ;   OpcionEnfermedad = 4 -> write_color('Regresando al menú anterior...', green), nl,
        sleep(0.5),
        manejar_opcion(11)
    ; write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl
    ).
 

manejar_opcion_autoinmunes(3) :-
    !,
    write_color('Selecciona una enfermedad:', green), nl,
    write_color('1. Lupus', cyan), nl,
    write_color('2. Artritis reumatoide', cyan), nl,
    write_color('3. Esclerosis múltiple', cyan), nl,
    write_color('4. Regresar al menú anterior', red), nl,
    read(OpcionEnfermedad),
    (   OpcionEnfermedad = 1 -> tratamientos_comunes(lupus)
    ;   OpcionEnfermedad = 2 -> tratamientos_comunes(artritis_reumatoide)
    ;   OpcionEnfermedad = 3 -> tratamientos_comunes(esclerosis_multiple)
    ;   OpcionEnfermedad = 4 -> write_color('Regresando al menú anterior...', green), nl,
        sleep(0.5),
        manejar_opcion(11)
    ;   write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl
    ).

manejar_opcion_autoinmunes(4) :-
    !,
    write_color('Selecciona una enfermedad:', green), nl,
    write_color('1. Lupus', cyan), nl,
    write_color('2. Artritis reumatoide', cyan), nl,
    write_color('3. Esclerosis múltiple', cyan), nl,
    write_color('4. Regresar al menú anterior', red), nl,
    read(OpcionEnfermedad),
    (   OpcionEnfermedad = 1 -> consejos_calidad_vida(lupus)
    ;   OpcionEnfermedad = 2 -> consejos_calidad_vida(artritis_reumatoide)
    ;   OpcionEnfermedad = 3 -> consejos_calidad_vida(esclerosis_multiple)
    ;   OpcionEnfermedad = 4 -> write_color('Regresando al menú anterior...', green), nl,
        sleep(0.5),
        manejar_opcion(11)
    ;   write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl
    ).

manejar_opcion_autoinmunes(5) :-
    !,
    write_color('Regresando al menú principal...', green), nl,
    sleep(0.5).

manejar_opcion_autoinmunes(_) :-
    !,
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.
