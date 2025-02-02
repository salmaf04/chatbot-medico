% enfermedades_autoinmunes.pl

:- module(enfermedades_autoinmunes, [
    informacion_enfermedad/2,
    manejo_enfermedad/2,
    tratamientos_comunes/2,
    consejos_calidad_vida/2
]).

% Información básica sobre enfermedades autoinmunes
informacion_enfermedad(lupus, Informacion) :-
    Informacion = [
        'El lupus es una enfermedad autoinmune que puede afectar múltiples órganos.',
        'Síntomas comunes: fatiga, dolor articular, erupciones cutáneas y fiebre.',
        'Puede ser difícil de diagnosticar debido a la variedad de síntomas.'
    ].

informacion_enfermedad(artritis_reumatoide, Informacion) :-
    Informacion = [
        'La artritis reumatoide es una enfermedad autoinmune que afecta las articulaciones.',
        'Síntomas comunes: dolor, hinchazón y rigidez en las articulaciones.',
        'Puede causar daño permanente en las articulaciones si no se trata.'
    ].

informacion_enfermedad(esclerosis_multiple, Informacion) :-
    Informacion = [
        'La esclerosis múltiple es una enfermedad autoinmune que afecta el sistema nervioso central.',
        'Síntomas comunes: fatiga, dificultad para caminar, entumecimiento y problemas de visión.',
        'Es una enfermedad crónica que requiere manejo a largo plazo.'
    ].

% Recomendaciones para manejar enfermedades autoinmunes
manejo_enfermedad(lupus, Recomendaciones) :-
    Recomendaciones = [
        'Evita la exposición al sol y usa protector solar.',
        'Mantén una dieta equilibrada y evita alimentos procesados.',
        'Realiza ejercicio moderado para mantener la movilidad y reducir el estrés.'
    ].

manejo_enfermedad(artritis_reumatoide, Recomendaciones) :-
    Recomendaciones = [
        'Usa terapias físicas para mantener la movilidad de las articulaciones.',
        'Toma medicamentos antiinflamatorios según lo recetado por tu médico.',
        'Evita actividades que causen estrés en las articulaciones.'
    ].

manejo_enfermedad(esclerosis_multiple, Recomendaciones) :-
    Recomendaciones = [
        'Sigue un plan de tratamiento personalizado con tu neurólogo.',
        'Mantén una rutina de ejercicio suave para mejorar la movilidad.',
        'Evita el estrés y descansa lo suficiente.'
    ].

% Tratamientos comunes para enfermedades autoinmunes
tratamientos_comunes(lupus, Tratamientos) :-
    Tratamientos = [
        'Medicamentos inmunosupresores.',
        'Antiinflamatorios no esteroideos (AINEs).',
        'Corticosteroides para controlar brotes.'
    ].

tratamientos_comunes(artritis_reumatoide, Tratamientos) :-
    Tratamientos = [
        'Medicamentos antirreumáticos modificadores de la enfermedad (FARME).',
        'Terapias biológicas.',
        'Fisioterapia y terapia ocupacional.'
    ].

tratamientos_comunes(esclerosis_multiple, Tratamientos) :-
    Tratamientos = [
        'Medicamentos modificadores de la enfermedad (interferones, acetato de glatiramer).',
        'Terapias para controlar los síntomas (relajantes musculares, antidepresivos).',
        'Rehabilitación física y cognitiva.'
    ].

% Consejos para mejorar la calidad de vida
consejos_calidad_vida(lupus, Consejos) :-
    Consejos = [
        'Descansa lo suficiente y evita el estrés.',
        'Únete a grupos de apoyo para pacientes con lupus.',
        'Mantén una comunicación abierta con tu médico.'
    ].

consejos_calidad_vida(artritis_reumatoide, Consejos) :-
    Consejos = [
        'Usa dispositivos de asistencia para reducir la carga en las articulaciones.',
        'Mantén una dieta antiinflamatoria.',
        'Practica técnicas de relajación para manejar el dolor.'
    ].

consejos_calidad_vida(esclerosis_multiple, Consejos) :-
    Consejos = [
        'Mantén una rutina diaria estructurada.',
        'Evita el sobrecalentamiento y el estrés.',
        'Participa en actividades que estimulen la mente.'
    ].