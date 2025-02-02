:- module(soporte_cancer, [manejar_opcion_cancer/1]).

:- use_module('../interactuar/interfaz').

% Mostrar información sobre soporte para pacientes con cáncer
manejar_opcion_cancer(1) :-
    !,
    write_color('Tratamientos para el cáncer:', green), nl,
    write_color('1. Quimioterapia: Uso de medicamentos para destruir células cancerosas.', cyan), nl,
    write_color('2. Radioterapia: Uso de radiación para eliminar células cancerosas.', cyan), nl,
    write_color('3. Cirugía: Extracción del tumor y tejidos circundantes.', cyan), nl,
    write_color('4. Inmunoterapia: Estimula el sistema inmunológico para combatir el cáncer.', cyan), nl,
    write_color('5. Terapia dirigida: Medicamentos que atacan específicamente las células cancerosas.', cyan), nl.

manejar_opcion_cancer(2) :-
    !,
    write_color('Efectos secundarios comunes:', green), nl,
    write_color('1. Fatiga: Descansa lo suficiente y mantén una dieta equilibrada.', cyan), nl,
    write_color('2. Náuseas: Toma medicamentos antieméticos y evita comidas pesadas.', cyan), nl,
    write_color('3. Pérdida de cabello: Usa gorros o pañuelos para proteger el cuero cabelludo.', cyan), nl,
    write_color('4. Dolor: Consulta con tu médico sobre opciones para el manejo del dolor.', cyan), nl,
    write_color('5. Cambios en la piel: Usa protector solar y mantén la piel hidratada.', cyan), nl.

manejar_opcion_cancer(3) :-
    !,
    write_color('Apoyo emocional:', green), nl,
    write_color('1. Grupos de apoyo: Conéctate con otros pacientes para compartir experiencias.', cyan), nl,
    write_color('2. Terapia psicológica: Busca ayuda profesional para manejar el estrés y la ansiedad.', cyan), nl,
    write_color('3. Meditación y relajación: Practica técnicas de relajación para reducir el estrés.', cyan), nl,
    write_color('4. Actividades recreativas: Dedica tiempo a hobbies y actividades que disfrutes.', cyan), nl,
    write_color('5. Familia y amigos: Mantén una red de apoyo cercana.', cyan), nl.

manejar_opcion_cancer(4) :-
    !,
    write_color('Regresando al menú principal...', green), nl.

manejar_opcion_cancer(_) :-
    !,
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.