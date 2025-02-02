:- module(embarazo_cuidado_infantil, [manejar_opcion_embarazo/1]).

:- use_module('../interactuar/interfaz').

% Mostrar información sobre embarazo y cuidado infantil
manejar_opcion_embarazo(1) :-
    !,
    write_color('Información para embarazadas:', green), nl,
    write_color('1. Alimentación saludable: Consume frutas, verduras, proteínas y ácido fólico.', cyan), nl,
    write_color('2. Ejercicio moderado: Caminar o yoga prenatal son excelentes opciones.', cyan), nl,
    write_color('3. Visitas al médico: Realiza controles prenatales regularmente.', cyan), nl,
    write_color('4. Evita el alcohol y el tabaco: Son perjudiciales para el bebé.', cyan), nl,
    write_color('5. Descansa lo suficiente: Duerme al menos 8 horas al día.', cyan), nl.

manejar_opcion_embarazo(2) :-
    !,
    write_color('Cuidado infantil:', green), nl,
    write_color('1. Lactancia materna: Es el mejor alimento para el bebé durante los primeros 6 meses.', cyan), nl,
    write_color('2. Vacunas: Asegúrate de que el bebé reciba todas las vacunas recomendadas.', cyan), nl,
    write_color('3. Higiene: Mantén al bebé limpio y cambia los pañales con frecuencia.', cyan), nl,
    write_color('4. Sueño: Los bebés necesitan dormir entre 14 y 17 horas al día.', cyan), nl,
    write_color('5. Desarrollo: Estimula al bebé con juegos y actividades adecuadas para su edad.', cyan), nl.

manejar_opcion_embarazo(3) :-
    !,
    write_color('Vacunas recomendadas para bebés:', green), nl,
    write_color('1. Hepatitis B: Al nacer.', cyan), nl,
    write_color('2. BCG: Para prevenir la tuberculosis.', cyan), nl,
    write_color('3. Pentavalente: Protege contra difteria, tétanos, tos ferina, hepatitis B y Haemophilus influenzae tipo b.', cyan), nl,
    write_color('4. Polio: Para prevenir la poliomielitis.', cyan), nl,
    write_color('5. Rotavirus: Previene la diarrea grave.', cyan), nl,
    write_color('6. Neumococo: Protege contra infecciones respiratorias.', cyan), nl.

manejar_opcion_embarazo(4) :-
    !,
    write_color('Desarrollo del bebé:', green), nl,
    write_color('1. Primer mes: El bebé levanta la cabeza brevemente.', cyan), nl,
    write_color('2. Tres meses: Sostiene la cabeza y sonríe.', cyan), nl,
    write_color('3. Seis meses: Se sienta con apoyo y balbucea.', cyan), nl,
    write_color('4. Nueve meses: Gatea y dice "mamá" o "papá".', cyan), nl,
    write_color('5. Doce meses: Camina con apoyo y dice algunas palabras.', cyan), nl.

manejar_opcion_embarazo(5) :-
    !,
    write_color('Regresando al menú principal...', green), nl,
    sleep(0.5).

manejar_opcion_embarazo(_) :-
    !,
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.