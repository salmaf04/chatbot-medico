:- module(soporte_estudiantes, [manejar_opcion_estudiantes/1]).

:- use_module('../interactuar/interfaz').

% Mostrar información sobre soporte para estudiantes
manejar_opcion_estudiantes(1) :-
    !,
    write_color('Recomendaciones para mejorar el estudio:', green), nl,
    write_color('1. Organiza tu tiempo: Crea un horario de estudio y cúmplelo.', cyan), nl,
    write_color('2. Espacio de estudio: Elige un lugar tranquilo y sin distracciones.', cyan), nl,
    write_color('3. Técnicas de estudio: Usa resúmenes, mapas conceptuales y flashcards.', cyan), nl,
    write_color('4. Descansos: Toma descansos cortos cada 45-60 minutos.', cyan), nl,
    write_color('5. Práctica: Resuelve ejercicios y exámenes anteriores.', cyan), nl.

manejar_opcion_estudiantes(2) :-
    !,
    write_color('Manejo del estrés:', green), nl,
    write_color('1. Relajación: Practica meditación, yoga o respiración profunda.', cyan), nl,
    write_color('2. Sueño: Duerme al menos 7-8 horas por noche.', cyan), nl,
    write_color('3. Ejercicio: Realiza actividad física regularmente.', cyan), nl,
    write_color('4. Socialización: Habla con amigos o familiares sobre tus preocupaciones.', cyan), nl,
    write_color('5. Organización: Divide las tareas grandes en partes más pequeñas.', cyan), nl.

manejar_opcion_estudiantes(3) :-
    !,
    write_color('Hábitos saludables para estudiantes:', green), nl,
    write_color('1. Alimentación: Consume una dieta equilibrada y evita el exceso de cafeína.', cyan), nl,
    write_color('2. Hidratación: Bebe suficiente agua durante el día.', cyan), nl,
    write_color('3. Sueño: Mantén un horario de sueño regular.', cyan), nl,
    write_color('4. Ejercicio: Realiza al menos 30 minutos de actividad física al día.', cyan), nl,
    write_color('5. Descanso visual: Descansa la vista cada 20 minutos si usas pantallas.', cyan), nl.

manejar_opcion_estudiantes(4) :-
    !,
    write_color('Técnicas para mejorar la concentración:', green), nl,
    write_color('1. Técnica Pomodoro: Estudia 25 minutos y descansa 5 minutos.', cyan), nl,
    write_color('2. Elimina distracciones: Apaga el teléfono o usa aplicaciones de bloqueo.', cyan), nl,
    write_color('3. Metas claras: Define objetivos específicos para cada sesión de estudio.', cyan), nl,
    write_color('4. Mindfulness: Practica la atención plena para mejorar el enfoque.', cyan), nl,
    write_color('5. Priorización: Enfócate en las tareas más importantes primero.', cyan), nl.

manejar_opcion_estudiantes(5) :-
    !,
    write_color('Recursos educativos recomendados:', green), nl,
    write_color('1. Plataformas en línea: Coursera, edX, Khan Academy.', cyan), nl,
    write_color('2. Aplicaciones para notas: Evernote, Notion, OneNote.', cyan), nl,
    write_color('3. Mapas mentales: Usa herramientas como MindMeister o XMind.', cyan), nl,
    write_color('4. Libros recomendados: "Cómo Aprender a Estudiar" de Walter Pauk.', cyan), nl,
    write_color('5. Canales de YouTube: Busca canales educativos en tu área de estudio.', cyan), nl.

manejar_opcion_estudiantes(6) :-
    !,
    write_color('Regresando al menú principal...', green), nl,
    sleep(0.5).

manejar_opcion_estudiantes(_) :-
    !,
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.