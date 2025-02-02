:- module(pacientes_enfermedades_autoinmunes, [
    informacion_enfermedad/1,
    manejo_enfermedad_autoinmune/1,
    tratamientos_comunes/1,
    consejos_calidad_vida/1
]).

% Información básica sobre enfermedades autoinmunes
informacion_enfermedad(lupus) :-
    write_color('Información sobre la enfermedad:', green), nl,
    write_color('lupus', yellow), nl,
    write_color('El lupus es una enfermedad autoinmune que puede afectar múltiples órganos.', cyan), nl,
    write_color('Síntomas comunes: fatiga, dolor articular, erupciones cutáneas y fiebre.', cyan), nl,
    write_color('Puede ser difícil de diagnosticar debido a la variedad de síntomas.', cyan), nl.
    

informacion_enfermedad(artritis_reumatoide) :-
    write_color('Información sobre la enfermedad:', green), nl,
    write_color('La artritis reumatoide es una enfermedad autoinmune que afecta las articulaciones.', cyan), nl,
    write_color('artritis reumatoide', yellow), nl,
    write_color('Síntomas comunes: dolor, hinchazón y rigidez en las articulaciones.', cyan), nl,
    write_color('Puede causar daño permanente en las articulaciones si no se trata.', cyan), nl.
    

informacion_enfermedad(esclerosis_multiple) :-
    write_color('Información sobre la enfermedad:', green), nl,
    write_color('esclerosis múltiple', yellow), nl,
    write_color('La esclerosis múltiple es una enfermedad autoinmune que afecta el sistema nervioso central.', cyan), nl,
    write_color('Síntomas comunes: fatiga, dificultad para caminar, entumecimiento y problemas de visión.', cyan), nl,
    write_color('Es una enfermedad crónica que requiere manejo a largo plazo.', cyan), nl.
    

% Recomendaciones para manejar enfermedades autoinmunes
manejo_enfermedad_autoinmune(lupus) :-
    write_color('Recomendaciones para manejar la enfermedad:', green), nl,
    write_color('lupus', yellow), nl,
    write_color('Evita la exposición al sol y usa protector solar.', cyan), nl,
    write_color('Mantén una dieta equilibrada y evita alimentos procesados.', cyan), nl,
    write_color('Realiza ejercicio moderado para mantener la movilidad y reducir el estrés.', cyan), nl.
    
manejo_enfermedad_autoinmune(artritis_reumatoide) :-
    write_color('Recomendaciones para manejar la enfermedad:', green), nl,
    write_color('artritis reumatoide', yellow), nl,
    write_color('Usa terapias físicas para mantener la movilidad de las articulaciones.', cyan), nl,
    write_color('Toma medicamentos antiinflamatorios según lo recetado por tu médico.', cyan), nl,
    write_color('Evita actividades que causen estrés en las articulaciones.', cyan), nl.


manejo_enfermedad_autoinmune(esclerosis_multiple) :-
    write_color('Recomendaciones para manejar la enfermedad:', green), nl,
    write_color('esclerosis múltiple', yellow), nl,
    write_color('Sigue un plan de tratamiento personalizado con tu neurólogo.', cyan), nl,
    write_color('Mantén una rutina de ejercicio suave para mejorar la movilidad.', cyan), nl,
    write_color('Evita el estrés y descansa lo suficiente.', cyan), nl.
    

% Tratamientos comunes para enfermedades autoinmunes
tratamientos_comunes(lupus) :-
    write_color('Tratamientos comunes para la enfermedad:', green), nl,
    write_color('lupus', yellow), nl,
    write_color('Medicamentos inmunosupresores.', cyan), nl,
    write_color('Antiinflamatorios no esteroideos (AINEs).', cyan), nl,
    write_color('Corticosteroides para controlar brotes.', cyan), nl.


tratamientos_comunes(artritis_reumatoide) :-
    write_color('Tratamientos comunes para la enfermedad:', green), nl,
    write_color('artritis reumatoide', yellow), nl,
    write_color('Medicamentos antirreumáticos modificadores de la enfermedad (FARME).', cyan), nl,
    write_color('Terapias biológicas.', cyan), nl,
    write_color('Fisioterapia y terapia ocupacional.', cyan), nl.


tratamientos_comunes(esclerosis_multiple) :-
    write_color('Tratamientos comunes para la enfermedad:', green), nl,
    write_color('esclerosis múltiple', yellow), nl,
    write_color('Medicamentos modificadores de la enfermedad (interferones, acetato de glatiramer).', cyan), nl,
    write_color('Terapias para controlar los síntomas (relajantes musculares, antidepresivos).', cyan), nl,
    write_color('Rehabilitación física y cognitiva.', cyan), nl.


% Consejos para mejorar la calidad de vida
consejos_calidad_vida(lupus) :-
    write_color('Consejos para mejorar la calidad de vida teniendo lupus:', green), nl,
    write_color('Descansa lo suficiente y evita el estrés.', cyan), nl,
    write_color('Únete a grupos de apoyo para pacientes con lupus.', cyan), nl,
    write_color('Mantén una comunicación abierta con tu médico.', cyan), nl.


consejos_calidad_vida(artritis_reumatoide) :-
    write_color('Consejos para mejorar la calidad de vida teniendo artritis reumatoide:', green), nl,
    write_color('Usa dispositivos de asistencia para reducir la carga en las articulaciones.', cyan), nl,
    write_color('Mantén una dieta antiinflamatoria.', cyan), nl,
    write_color('Practica técnicas de relajación para manejar el dolor.', cyan), nl.


consejos_calidad_vida(esclerosis_multiple) :-
    write_color('Consejos para mejorar la calidad de vida teniendo esclerosis múltiple:', green), nl,
    write_color('Mantén una rutina diaria estructurada.', cyan), nl,
    write_color('Evita el sobrecalentamiento y el estrés.', cyan), nl,
    write_color('Participa en actividades que estimulen la mente.', cyan), nl.
