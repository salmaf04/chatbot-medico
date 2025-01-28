:- module(conocimientos, [enfermedad/1, tiene_sintoma/2, tratamiento/2]).

enfermedad(gripe).
enfermedad(covid19).
enfermedad(neumonia).

tiene_sintoma(gripe, fiebre).
tiene_sintoma(gripe, dolor_de_cabeza).
tiene_sintoma(gripe, estornudos).
tiene_sintoma(gripe, congestión_nasal).
tiene_sintoma(gripe, malestar_general).
tiene_sintoma(gripe, dolor_de_garganta).
tiene_sintoma(gripe, tos).

tiene_sintoma(covid19, fiebre).
tiene_sintoma(covid19, tos).
tiene_sintoma(covid19, dificultad_respiratoria).
tiene_sintoma(covid19, congestión_nasal).
tiene_sintoma(covid19, pérdida_del_olfato).
tiene_sintoma(covid19, pérdida_del_gusto).
tiene_sintoma(covid19, dolor_muscular).
tiene_sintoma(covid19, fatiga).
tiene_sintoma(covid19, náuseas).
tiene_sintoma(covid19, vómito).
tiene_sintoma(covid19, diarrea).

tiene_sintoma(neumonia, fiebre).
tiene_sintoma(neumonia, tos).
tiene_sintoma(neumonia, dificultad_respiratoria).
tiene_sintoma(neumonia, desorientación).
tiene_sintoma(neumonia, temperatura_baja).
tiene_sintoma(neumonia, dolor_en_el_pecho).
tiene_sintoma(neumonia, fatiga).
tiene_sintoma(neumonia, náuseas).
tiene_sintoma(neumonia, vómito).
tiene_sintoma(neumonia, diarrea).

tratamiento(neumonia, 'Antibióticos y reposo').
tratamiento(gripe, 'Reposo, hidratación y medicamentos para aliviar los síntomas').
tratamiento(covid19, 'Aislamiento, monitoreo de síntomas y atención médica si es necesario').



