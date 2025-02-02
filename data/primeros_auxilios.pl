:- module(primeros_auxilios, [manejar_opcion_emergencia/1]).


% Manejar la opción de emergencia elegida por el usuario
manejar_opcion_emergencia(1) :-
    !,  
    write_color('Primeros auxilios para quemaduras:', green), nl,
    write_color('1. Enfría la quemadura con agua fría durante 10-15 minutos.', cyan), nl,
    write_color('2. No uses hielo ni agua helada.', cyan), nl,
    write_color('3. Cubre la quemadura con un paño limpio y seco.', cyan), nl,
    write_color('4. No apliques cremas, aceites ni remedios caseros.', cyan), nl,
    write_color('5. Busca atención médica si la quemadura es grave.', cyan), nl.

manejar_opcion_emergencia(2) :-
    !,  
    write_color('Primeros auxilios para cortes y heridas:', green), nl,
    write_color('1. Limpia la herida con agua y jabón.', cyan), nl,
    write_color('2. Aplica presión con un paño limpio para detener el sangrado.', cyan), nl,
    write_color('3. Cubre la herida con una venda o gasa estéril.', cyan), nl,
    write_color('4. Busca atención médica si la herida es profunda o no deja de sangrar.', cyan), nl.

manejar_opcion_emergencia(3) :-
    !,  
    write_color('Primeros auxilios para atragantamiento:', green), nl,
    write_color('1. Si la persona puede toser, anímala a seguir tosiendo.', cyan), nl,
    write_color('2. Si no puede toser, realiza la maniobra de Heimlich:', cyan), nl,
    write_color('   - Colócate detrás de la persona y rodea su cintura.', cyan), nl,
    write_color('   - Coloca un puño sobre su abdomen, justo encima del ombligo.', cyan), nl,
    write_color('   - Sujeta tu puño con la otra mano y realiza compresiones rápidas hacia arriba.', cyan), nl,
    write_color('3. Llama al servicio de emergencias si el objeto no sale.', cyan), nl.

manejar_opcion_emergencia(4) :-
    !,  
    write_color('Primeros auxilios para desmayos:', green), nl,
    write_color('1. Acuesta a la persona boca arriba y eleva sus piernas.', cyan), nl,
    write_color('2. Asegúrate de que tenga espacio para respirar.', cyan), nl,
    write_color('3. Si la persona no recupera la conciencia en 1-2 minutos, llama al servicio de emergencias.', cyan), nl.

manejar_opcion_emergencia(5) :-
    !,  
    write_color('Primeros auxilios para fracturas:', green), nl,
    write_color('1. Inmoviliza la zona afectada con una férula o un cabestrillo.', cyan), nl,
    write_color('2. Aplica hielo envuelto en un paño para reducir la hinchazón.', cyan), nl,
    write_color('3. No intentes enderezar el hueso.', cyan), nl,
    write_color('4. Busca atención médica inmediata.', cyan), nl.

manejar_opcion_emergencia(6) :-
    !,  
    write_color('Primeros auxilios para intoxicación:', green), nl,
    write_color('1. Llama al servicio de emergencias inmediatamente.', cyan), nl,
    write_color('2. No induzcas el vómito a menos que lo indique un profesional.', cyan), nl,
    write_color('3. Si la persona está inconsciente, colócala de lado para evitar asfixia.', cyan), nl.

manejar_opcion_emergencia(7) :-
    !,  
    write_color('Regresando al menú principal...', green), nl,
    sleep(0.5).

manejar_opcion_emergencia(_) :-
    !,  
    write_color('Opción no válida. Por favor, intenta de nuevo.', red), nl.