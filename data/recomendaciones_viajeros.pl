:- module(recomendaciones_viajeros, [manejar_opcion_viajeros/1]).

:- use_module('../interactuar/interfaz').

% Mostrar información sobre recomendaciones para viajeros
manejar_opcion_viajeros(1) :-
    !,
    write_color('Consejos de salud para viajeros:', green), nl,
    write_color('1. Vacunación: Asegúrate de estar al día con las vacunas recomendadas para tu destino.', cyan), nl,
    write_color('2. Agua potable: Bebe solo agua embotellada o hervida.', cyan), nl,
    write_color('3. Alimentación: Evita comer alimentos crudos o poco cocidos.', cyan), nl,
    write_color('4. Protección solar: Usa protector solar y evita la exposición prolongada al sol.', cyan), nl,
    write_color('5. Higiene: Lávate las manos con frecuencia y usa gel antibacterial.', cyan), nl.

manejar_opcion_viajeros(2) :-
    !,
    write_color('Prevención de enfermedades en el extranjero:', green), nl,
    write_color('1. Malaria: Usa repelente de mosquitos y toma medicamentos profilácticos si es necesario.', cyan), nl,
    write_color('2. Dengue: Evita las picaduras de mosquitos usando repelente y ropa protectora.', cyan), nl,
    write_color('3. Diarrea del viajero: Lleva medicamentos antidiarreicos y evita alimentos de dudosa procedencia.', cyan), nl,
    write_color('4. Enfermedades respiratorias: Usa mascarilla en lugares concurridos o con poca ventilación.', cyan), nl,
    write_color('5. Enfermedades de transmisión sexual: Practica sexo seguro y usa protección.', cyan), nl.

manejar_opcion_viajeros(3) :-
    !,
    write_color('Botiquín de viaje:', green), nl,
    write_color('1. Medicamentos básicos: Analgésicos, antihistamínicos y antidiarreicos.', cyan), nl,
    write_color('2. Primeros auxilios: Vendajes, gasas, tijeras y antisépticos.', cyan), nl,
    write_color('3. Protección solar: Protector solar y after-sun.', cyan), nl,
    write_color('4. Repelente de insectos: Repelente y crema para picaduras.', cyan), nl,
    write_color('5. Documentos: Copia de recetas médicas y tarjeta de seguro de viaje.', cyan), nl.

manejar_opcion_viajeros(4) :-
    !,
    write_color('Regresando al menú principal...', green), nl,
    sleep(0.5).

manejar_opcion_viajeros(_) :-
    !,
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.