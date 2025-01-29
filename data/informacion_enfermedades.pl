:- module(informacion_enfermedades, [informacion_enfermedad/4]).

% Información detallada sobre enfermedades
informacion_enfermedad(gripe, 
    causas(['virus de la influenza']),
    sintomas(['fiebre', 'tos', 'dolor de garganta', 'dolor muscular']),
    complicaciones(['neumonía', 'bronquitis', 'infecciones del oído'])).

informacion_enfermedad(diabetes, 
    causas(['genética', 'obesidad', 'falta de ejercicio']),
    sintomas(['sed excesiva', 'micción frecuente', 'fatiga']),
    complicaciones(['enfermedad cardiovascular', 'daño renal', 'daño ocular'])).

