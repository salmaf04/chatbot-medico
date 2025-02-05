:- module(soporte_deportistas, [manejar_opcion_deportistas/1]).

:- use_module('../interactuar/interfaz').

% Mostrar información sobre soporte para deportistas
manejar_opcion_deportistas(1) :-
    !,
    write_color('Nutrición para deportistas:', green), nl,
    write_color('1. Hidratación: Bebe suficiente agua antes, durante y después del ejercicio.', cyan), nl,
    write_color('2. Carbohidratos: Consume carbohidratos complejos como arroz integral, pasta y pan integral.', cyan), nl,
    write_color('3. Proteínas: Incluye fuentes de proteínas como pollo, pescado, huevos y legumbres.', cyan), nl,
    write_color('4. Grasas saludables: Consume grasas buenas como aguacate, nueces y aceite de oliva.', cyan), nl,
    write_color('5. Suplementación: Considera suplementos como proteína en polvo o vitaminas, bajo supervisión médica.', cyan), nl.

manejar_opcion_deportistas(2) :-
    !,
    write_color('Cuidado físico para deportistas:', green), nl,
    write_color('1. Calentamiento: Realiza un calentamiento adecuado antes de entrenar.', cyan), nl,
    write_color('2. Estiramiento: Estira después del ejercicio para mejorar la flexibilidad.', cyan), nl,
    write_color('3. Descanso: Duerme al menos 7-8 horas para permitir la recuperación muscular.', cyan), nl,
    write_color('4. Variedad: Combina diferentes tipos de entrenamiento (cardio, fuerza, flexibilidad).', cyan), nl,
    write_color('5. Técnica: Asegúrate de usar la técnica correcta para evitar lesiones.', cyan), nl.

manejar_opcion_deportistas(3) :-
    !,
    write_color('Prevención y manejo de lesiones deportivas:', green), nl,
    write_color('1. Prevención: Usa equipo adecuado y evita sobreentrenamiento.', cyan), nl,
    write_color('2. Lesiones leves: Aplica hielo y reposo para esguinces o torceduras.', cyan), nl,
    write_color('3. Lesiones graves: Busca atención médica inmediata para fracturas o desgarros.', cyan), nl,
    write_color('4. Rehabilitación: Sigue un programa de rehabilitación supervisado por un fisioterapeuta.', cyan), nl,
    write_color('5. Prevención de recaídas: Fortalece los músculos y mejora la técnica después de una lesión.', cyan), nl.

manejar_opcion_deportistas(4) :-
    !,
   write_color('Regresando al menú principal...', green), nl,
    sleep(0.5).

manejar_opcion_deportistas(_) :-
    !,
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.