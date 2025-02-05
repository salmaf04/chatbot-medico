:- module(recomendaciones_mascotas, [manejar_opcion_mascotas/1]).

:- use_module('../interactuar/interfaz').

% Mostrar información sobre salud para mascotas
manejar_opcion_mascotas(1) :-
    !,
    write_color('Cuidado general para mascotas:', green), nl,
    write_color('1. Visitas al veterinario: Lleva a tu mascota a chequeos regulares.', cyan), nl,
    write_color('2. Higiene: Baña y cepilla a tu mascota regularmente.', cyan), nl,
    write_color('3. Ejercicio: Proporciona actividad física diaria para mantenerla saludable.', cyan), nl,
    write_color('4. Socialización: Permite que tu mascota interactúe con otros animales y personas.', cyan), nl,
    write_color('5. Ambiente seguro: Asegúrate de que tu hogar sea seguro para tu mascota.', cyan), nl.

manejar_opcion_mascotas(2) :-
    !,
    write_color('Alimentación para mascotas:', green), nl,
    write_color('1. Dieta balanceada: Proporciona una dieta adecuada para la especie y edad de tu mascota.', cyan), nl,
    write_color('2. Agua fresca: Asegúrate de que siempre tenga acceso a agua limpia.', cyan), nl,
    write_color('3. Evita alimentos tóxicos: No le des chocolate, cebolla, uvas o alimentos procesados.', cyan), nl,
    write_color('4. Horarios de comida: Establece horarios regulares para las comidas.', cyan), nl,
    write_color('5. Control de peso: Evita la obesidad con una dieta adecuada y ejercicio.', cyan), nl.

manejar_opcion_mascotas(3) :-
    !,
    write_color('Prevención de enfermedades:', green), nl,
    write_color('1. Vacunación: Mantén al día las vacunas de tu mascota.', cyan), nl,
    write_color('2. Desparasitación: Desparasita a tu mascota regularmente.', cyan), nl,
    write_color('3. Control de pulgas y garrapatas: Usa productos preventivos.', cyan), nl,
    write_color('4. Limpieza del entorno: Mantén limpio el área donde vive tu mascota.', cyan), nl,
    write_color('5. Observación: Está atento a cambios en el comportamiento o apetito.', cyan), nl.

manejar_opcion_mascotas(4) :-
    !,
    write_color('Primeros auxilios para mascotas:', green), nl,
    write_color('1. Heridas leves: Limpia la herida con agua y aplica un antiséptico.', cyan), nl,
    write_color('2. Intoxicación: Llama al veterinario inmediatamente y no induzcas el vómito.', cyan), nl,
    write_color('3. Fracturas: Inmoviliza la zona afectada y lleva a tu mascota al veterinario.', cyan), nl,
    write_color('4. Quemaduras: Enfría la zona con agua fría y busca atención veterinaria.', cyan), nl,
    write_color('5. Botiquín básico: Ten vendas, antisépticos y contactos de emergencia.', cyan), nl.

manejar_opcion_mascotas(5) :-
    !,
    write_color('Regresando al menú principal...', green), nl,
    sleep(0.5).

manejar_opcion_mascotas(_) :-
    !,
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.