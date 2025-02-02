:- module(conocimientos, [enfermedad/1, tiene_sintoma/2, tratamiento/2]).

enfermedad(gripe).
enfermedad(covid19).
enfermedad(neumonia).
enfermedad(bronquitis).
enfermedad(faringitis).
enfermedad(sinusitis).
enfermedad(gastroenteritis).
enfermedad(otitis).
enfermedad(conjuntivitis).
enfermedad(alergia).
enfermedad(artritis).
enfermedad(asma).
enfermedad(hipertension).
enfermedad(diabetes).
enfermedad(migraña).
enfermedad(ansiedad).
enfermedad(depresion).

tiene_sintoma(gripe, fiebre).
tiene_sintoma(gripe, 'dolor de cabeza').
tiene_sintoma(gripe, estornudos).
tiene_sintoma(gripe, 'congestión nasal').
tiene_sintoma(gripe, 'malestar general').
tiene_sintoma(gripe, 'dolor de garganta').
tiene_sintoma(gripe, tos).

tiene_sintoma(covid19, fiebre).
tiene_sintoma(covid19, tos).
tiene_sintoma(covid19, 'dificultad respiratoria').
tiene_sintoma(covid19, 'congestión nasal').
tiene_sintoma(covid19, 'pérdida del olfato').
tiene_sintoma(covid19, 'pérdida del gusto').
tiene_sintoma(covid19, 'dolor muscular').
tiene_sintoma(covid19, fatiga).
tiene_sintoma(covid19, náuseas).
tiene_sintoma(covid19, vómito).
tiene_sintoma(covid19, diarrea).

tiene_sintoma(neumonia, fiebre).
tiene_sintoma(neumonia, tos).
tiene_sintoma(neumonia, 'dificultad respiratoria').
tiene_sintoma(neumonia, desorientación).
tiene_sintoma(neumonia, 'temperatura baja').
tiene_sintoma(neumonia, 'dolor en el pecho').
tiene_sintoma(neumonia, fatiga).
tiene_sintoma(neumonia, náuseas).
tiene_sintoma(neumonia, vómito).
tiene_sintoma(neumonia, diarrea).

tiene_sintoma(bronquitis, tos).
tiene_sintoma(bronquitis, 'dificultad respiratoria').
tiene_sintoma(bronquitis, fatiga).
tiene_sintoma(bronquitis, fiebre).
tiene_sintoma(bronquitis, 'dolor en el pecho').

tiene_sintoma(faringitis, 'dolor de garganta').
tiene_sintoma(faringitis, fiebre).
tiene_sintoma(faringitis, 'dificultad para tragar').
tiene_sintoma(faringitis, 'ganglios inflamados').

tiene_sintoma(sinusitis, 'congestión nasal').
tiene_sintoma(sinusitis, 'dolor facial').
tiene_sintoma(sinusitis, 'dolor de cabeza').
tiene_sintoma(sinusitis, fiebre).

tiene_sintoma(gastroenteritis, diarrea).
tiene_sintoma(gastroenteritis, vómito).
tiene_sintoma(gastroenteritis, náuseas).
tiene_sintoma(gastroenteritis, 'dolor abdominal').

tiene_sintoma(otitis, 'dolor de oído').
tiene_sintoma(otitis, fiebre).
tiene_sintoma(otitis, 'pérdida de audición').
tiene_sintoma(otitis, irritabilidad).

tiene_sintoma(conjuntivitis, 'enrojecimiento ocular').
tiene_sintoma(conjuntivitis, picazón).
tiene_sintoma(conjuntivitis, lagrimeo).
tiene_sintoma(conjuntivitis, 'secreción ocular').

tiene_sintoma(alergia, estornudos).
tiene_sintoma(alergia, picazón).
tiene_sintoma(alergia, 'congestión nasal').
tiene_sintoma(alergia, lagrimeo).

tiene_sintoma(artritis, 'dolor articular').
tiene_sintoma(artritis, hinchazón).
tiene_sintoma(artritis, rigidez).
tiene_sintoma(artritis, fatiga).

tiene_sintoma(asma, 'dificultad respiratoria').
tiene_sintoma(asma, tos).
tiene_sintoma(asma, 'silbidos en el pecho').
tiene_sintoma(asma, 'opresión en el pecho').

tiene_sintoma(hipertension, 'dolor de cabeza').
tiene_sintoma(hipertension, mareos).
tiene_sintoma(hipertension, 'visión borrosa').
tiene_sintoma(hipertension, fatiga).

tiene_sintoma(diabetes, sed).
tiene_sintoma(diabetes, 'micción frecuente').
tiene_sintoma(diabetes, fatiga).
tiene_sintoma(diabetes, 'visión borrosa').

tiene_sintoma(migraña, 'dolor de cabeza intenso').
tiene_sintoma(migraña, náuseas).
tiene_sintoma(migraña, 'sensibilidad a la luz').
tiene_sintoma(migraña, 'sensibilidad al ruido').

tiene_sintoma(ansiedad, nerviosismo).
tiene_sintoma(ansiedad, sudoración).
tiene_sintoma(ansiedad, palpitaciones).
tiene_sintoma(ansiedad, insomnio).

tiene_sintoma(depresion, tristeza).
tiene_sintoma(depresion, fatiga).
tiene_sintoma(depresion, insomnio).
tiene_sintoma(depresion, 'pérdida de apetito').

% Tratamientos de las enfermedades
tratamiento(neumonia, 'Antibióticos y reposo').
tratamiento(gripe, 'Reposo, hidratación y medicamentos para aliviar los síntomas').
tratamiento(covid19, 'Aislamiento, monitoreo de síntomas y atención médica si es necesario').
tratamiento(bronquitis, 'Antibióticos (si es bacteriana), reposo y broncodilatadores').
tratamiento(faringitis, 'Analgésicos, antibióticos (si es bacteriana) y reposo').
tratamiento(sinusitis, 'Descongestionantes, analgésicos y antibióticos (si es bacteriana)').
tratamiento(gastroenteritis, 'Hidratación, dieta blanda y reposo').
tratamiento(otitis, 'Analgésicos y antibióticos (si es bacteriana)').
tratamiento(conjuntivitis, 'Gotas oculares y compresas frías').
tratamiento(alergia, 'Antihistamínicos y evitar alérgenos').
tratamiento(artritis, 'Antiinflamatorios y fisioterapia').
tratamiento(asma, 'Broncodilatadores y corticosteroides inhalados').
tratamiento(hipertension, 'Medicamentos antihipertensivos y cambios en el estilo de vida').
tratamiento(diabetes, 'Insulina o medicamentos orales, dieta y ejercicio').
tratamiento(migraña, 'Analgésicos y medicamentos específicos para migrañas').
tratamiento(ansiedad, 'Terapia y medicamentos ansiolíticos').
tratamiento(depresion, 'Terapia y medicamentos antidepresivos').



