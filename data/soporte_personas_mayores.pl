:- module(soporte_personas_mayores, [manejar_opcion_personas_mayores/1]).

:- use_module('../interactuar/interfaz').

% Mostrar información sobre soporte para personas mayores
manejar_opcion_personas_mayores(1) :-
    !,
    write_color('Recomendaciones para la salud de personas mayores:', green), nl,
    write_color('1. Alimentación saludable: Consume una dieta rica en frutas, verduras y proteínas.', cyan), nl,
    write_color('2. Ejercicio regular: Realiza actividades como caminar, nadar o yoga.', cyan), nl,
    write_color('3. Revisiones médicas: Realiza chequeos regulares para controlar la presión arterial, colesterol y diabetes.', cyan), nl,
    write_color('4. Hidratación: Bebe suficiente agua durante el día.', cyan), nl,
    write_color('5. Sueño: Duerme al menos 7-8 horas por noche.', cyan), nl.

manejar_opcion_personas_mayores(2) :-
    !,
    write_color('Prevención de caídas:', green), nl,
    write_color('1. Elimina obstáculos: Mantén los pasillos libres de objetos.', cyan), nl,
    write_color('2. Iluminación adecuada: Asegúrate de que todas las áreas estén bien iluminadas.', cyan), nl,
    write_color('3. Uso de calzado adecuado: Usa zapatos antideslizantes.', cyan), nl,
    write_color('4. Barras de apoyo: Instala barras en baños y escaleras.', cyan), nl,
    write_color('5. Ejercicios de equilibrio: Practica actividades como tai chi para mejorar el equilibrio.', cyan), nl.

manejar_opcion_personas_mayores(3) :-
    !,
    write_color('Manejo de medicamentos:', green), nl,
    write_color('1. Organización: Usa pastilleros para organizar los medicamentos.', cyan), nl,
    write_color('2. Seguimiento: Mantén un registro de los medicamentos y sus horarios.', cyan), nl,
    write_color('3. Consulta médica: No tomes medicamentos sin receta o sin consultar a un médico.', cyan), nl,
    write_color('4. Efectos secundarios: Informa a tu médico sobre cualquier efecto secundario.', cyan), nl,
    write_color('5. Almacenamiento: Guarda los medicamentos en un lugar fresco y seco.', cyan), nl.

manejar_opcion_personas_mayores(4) :-
    !,
    write_color('Actividades para mantener la mente activa', green), nl,
    write_color('1. Resuelve crucigramas o sudokus.', cyan), nl,
    write_color('2. Lee libros o artículos interesantes.', cyan), nl,
    write_color('3. Participa en juegos de mesa o cartas.', cyan), nl,
    write_color('4. Aprende algo nuevo, como un idioma o instrumento musical.', cyan), nl,
    write_color('5. Mantén una vida social activa.', cyan), nl.

manejar_opcion_personas_mayores(5) :-
    !,
    write_color('Regresando al menú principal...', green), nl,
    sleep(0.5).


manejar_opcion_personas_mayores(_) :-
    !,
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.