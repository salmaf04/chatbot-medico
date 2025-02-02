:- module(informacion_enfermedades, [informacion_enfermedad/5]).


% Información detallada sobre enfermedades
informacion_enfermedad(gripe, 
    causas(['virus de la influenza']),
    sintomas(['fiebre', 'tos', 'dolor de garganta', 'dolor muscular']),
    complicaciones(['neumonía', 'bronquitis', 'infecciones del oído']),
    vacunas(['Vacuna recomendada: Vacuna anual contra la gripe',
             'Dosis: 1 dosis anual',
             'Efectos secundarios: dolor leve en el sitio de inyección, fiebre baja'])).

informacion_enfermedad(covid19, 
    causas(['virus SARS-CoV-2']),
    sintomas(['fiebre', 'tos', 'dificultad respiratoria', 'pérdida del olfato', 'pérdida del gusto']),
    complicaciones(['neumonía', 'síndrome de dificultad respiratoria aguda', 'trombosis']),
    vacunas(['Vacunas recomendadas: Soberana, Abdala',
             'Dosis: 2 dosis',
             'Efectos secundarios: dolor en el sitio de inyección, fatiga, fiebre'])).

informacion_enfermedad(neumonia, 
    causas(['bacterias', 'virus', 'hongos']),
    sintomas(['fiebre', 'tos', 'dificultad respiratoria', 'dolor en el pecho']),
    complicaciones(['sepsis', 'derrame pleural', 'fallo respiratorio']),
    vacunas(['Vacuna recomendada: Vacuna contra el neumococo',
             'Dosis: 1 dosis (puede variar según la edad y el estado de salud)',
             'Efectos secundarios: enrojecimiento en el sitio de inyección, fiebre leve'])).

informacion_enfermedad(diabetes, 
    causas(['genética', 'obesidad', 'falta de ejercicio']),
    sintomas(['sed excesiva', 'micción frecuente', 'fatiga']),
    complicaciones(['enfermedad cardiovascular', 'daño renal', 'daño ocular']),
    vacunas(['No hay vacuna disponible para la diabetes.'])).

informacion_enfermedad(hipertension, 
    causas(['obesidad', 'consumo excesivo de sal', 'estrés']),
    sintomas(['dolor de cabeza', 'mareos', 'visión borrosa']),
    complicaciones(['infarto de miocardio', 'accidente cerebrovascular', 'daño renal']),
    vacunas(['No hay vacuna disponible para la hipertensión.'])).

informacion_enfermedad(asma, 
    causas(['alergias', 'factores ambientales', 'genética']),
    sintomas(['dificultad respiratoria', 'tos', 'silbidos en el pecho']),
    complicaciones(['ataques de asma graves', 'hospitalización', 'muerte']),
    vacunas(['No hay vacuna disponible para el asma.'])).

informacion_enfermedad('artritis reumatoide', 
    causas(['genética', 'factores ambientales', 'respuesta autoinmune']),
    sintomas(['dolor articular', 'hinchazón', 'rigidez matutina', 'fatiga']),
    complicaciones(['deformidad articular', 'daño cardíaco', 'osteoporosis']),
    vacunas(['No hay vacuna disponible para la artritis reumatoide.'])).

informacion_enfermedad(lupus, 
    causas(['genética', 'factores ambientales', 'respuesta autoinmune']),
    sintomas(['erupción cutánea', 'dolor articular', 'fiebre', 'fatiga']),
    complicaciones(['daño renal', 'problemas cardíacos', 'accidente cerebrovascular']),
    vacunas(['No hay vacuna disponible para el lupus.'])).

informacion_enfermedad(fibromialgia, 
    causas(['desconocidas', 'posiblemente genética y estrés']),
    sintomas(['dolor muscular generalizado', 'fatiga', 'problemas de sueño', 'niebla mental']),
    complicaciones(['depresión', 'ansiedad', 'deterioro de la calidad de vida']),
    vacunas(['No hay vacuna disponible para la fibromialgia.'])).

informacion_enfermedad(osteoporosis, 
    causas(['envejecimiento', 'deficiencia de calcio', 'menopausia']),
    sintomas(['fracturas frecuentes', 'dolor de espalda', 'pérdida de estatura']),
    complicaciones(['fracturas graves', 'discapacidad', 'muerte por complicaciones']),
    vacunas(['No hay vacuna disponible para la osteoporosis.'])).

informacion_enfermedad(epilepsia, 
    causas(['genética', 'traumatismos cerebrales', 'infecciones']),
    sintomas(['convulsiones', 'pérdida de conciencia', 'confusión temporal']),
    complicaciones(['lesiones durante convulsiones', 'estatus epiléptico', 'muerte súbita']),
    vacunas(['No hay vacuna disponible para la epilepsia.'])).

informacion_enfermedad(migraña, 
    causas(['genética', 'factores ambientales', 'estrés']),
    sintomas(['dolor de cabeza intenso', 'náuseas', 'sensibilidad a la luz', 'aura visual']),
    complicaciones(['accidente cerebrovascular', 'depresión', 'ansiedad']),
    vacunas(['No hay vacuna disponible para la migraña.'])).

informacion_enfermedad('cancer de mama', 
    causas(['genética', 'factores hormonales', 'estilo de vida']),
    sintomas(['bulto en el seno', 'cambios en la piel', 'secreción del pezón']),
    complicaciones(['metástasis', 'muerte']),
    vacunas(['No hay vacuna disponible para el cáncer de mama.'])).

informacion_enfermedad('cancer de pulmon', 
    causas(['tabaquismo', 'exposición a carcinógenos', 'genética']),
    sintomas(['tos persistente', 'dificultad para respirar', 'pérdida de peso', 'dolor torácico']),
    complicaciones(['metástasis', 'muerte']),
    vacunas(['No hay vacuna disponible para el cáncer de pulmón.'])).

informacion_enfermedad('cancer de colon', 
    causas(['genética', 'dieta pobre en fibra', 'enfermedades inflamatorias intestinales']),
    sintomas(['cambios en los hábitos intestinales', 'sangre en las heces', 'dolor abdominal']),
    complicaciones(['metástasis', 'muerte']),
    vacunas(['No hay vacuna disponible para el cáncer de colon.'])).

informacion_enfermedad(alzheimer, 
    causas(['genética', 'edad avanzada', 'factores ambientales']),
    sintomas(['pérdida de memoria', 'confusión', 'cambios de personalidad']),
    complicaciones(['incapacidad para realizar actividades diarias', 'muerte']),
    vacunas(['No hay vacuna disponible para el Alzheimer.'])).

informacion_enfermedad(parkinson, 
    causas(['genética', 'exposición a toxinas', 'edad avanzada']),
    sintomas(['temblores', 'rigidez muscular', 'lentitud de movimientos']),
    complicaciones(['demencia', 'dificultad para tragar', 'muerte']),
    vacunas(['No hay vacuna disponible para el Parkinson.'])).

informacion_enfermedad('insuficiencia cardiaca', 
    causas(['enfermedad coronaria', 'hipertensión', 'diabetes']),
    sintomas(['fatiga', 'dificultad para respirar', 'hinchazón en las piernas']),
    complicaciones(['arritmias', 'fallo cardíaco agudo', 'muerte']),
    vacunas(['No hay vacuna disponible para la insuficiencia cardíaca.'])).

informacion_enfermedad('bronquitis cronica', 
    causas(['tabaquismo', 'contaminación del aire', 'infecciones recurrentes']),
    sintomas(['tos con mucosidad', 'dificultad para respirar', 'fatiga']),
    complicaciones(['infecciones respiratorias graves', 'insuficiencia cardíaca', 'muerte']),
    vacunas(['No hay vacuna disponible para la bronquitis crónica.'])).

informacion_enfermedad('apnea del sueño', 
    causas(['obesidad', 'anatomía de las vías respiratorias', 'genética']),
    sintomas(['ronquidos fuertes', 'pausas en la respiración', 'somnolencia diurna']),
    complicaciones(['hipertensión', 'enfermedad cardíaca', 'accidente cerebrovascular']),
    vacunas(['No hay vacuna disponible para la apnea del sueño.'])).

informacion_enfermedad(gastritis, 
    causas(['infección por Helicobacter pylori', 'uso prolongado de antiinflamatorios', 'estrés']),
    sintomas(['dolor abdominal', 'náuseas', 'vómitos', 'pérdida de apetito']),
    complicaciones(['úlceras gástricas', 'sangrado gastrointestinal', 'cáncer de estómago']),
    vacunas(['No hay vacuna disponible para la gastritis.'])).

informacion_enfermedad(dengue, 
    causas(['virus del dengue', 'picadura de mosquito']),
    sintomas(['fiebre alta', 'dolor de cabeza', 'dolor muscular', 'erupción cutánea']),
    complicaciones(['sangrado severo', 'shock', 'muerte']),
    vacunas(['Vacuna recomendada: Dengvaxia',
             'Dosis: 3 dosis',
             'Efectos secundarios: dolor de cabeza, fiebre leve'])).

informacion_enfermedad('hepatitis a', 
    causas(['virus de la hepatitis A', 'agua o alimentos contaminados']),
    sintomas(['fatiga', 'náuseas', 'dolor abdominal', 'ictericia']),
    complicaciones(['fallo hepático', 'muerte']),
    vacunas(['Vacuna recomendada: Havrix',
             'Dosis: 2 dosis',
             'Efectos secundarios: dolor en el sitio de inyección, fiebre leve'])).

informacion_enfermedad('hepatitis b', 
    causas(['virus de la hepatitis B', 'contacto con fluidos corporales']),
    sintomas(['fatiga', 'náuseas', 'dolor abdominal', 'ictericia']),
    complicaciones(['cirrosis', 'cáncer de hígado', 'muerte']),
    vacunas(['Vacuna recomendada: Engerix-B',
             'Dosis: 3 dosis',
             'Efectos secundarios: dolor en el sitio de inyección, fiebre leve'])).

informacion_enfermedad(varicela, 
    causas(['virus de la varicela-zóster']),
    sintomas(['erupción cutánea', 'fiebre', 'picazón']),
    complicaciones(['infecciones bacterianas', 'neumonía', 'encefalitis']),
    vacunas(['Vacuna recomendada: Varivax',
             'Dosis: 2 dosis',
             'Efectos secundarios: fiebre leve, erupción cutánea'])).

informacion_enfermedad(bronquitis, 
    causas(['virus', 'bacterias', 'contaminación']),
    sintomas(['tos', 'dificultad respiratoria', 'fatiga', 'fiebre']),
    complicaciones(['neumonía', 'fallo respiratorio']),
    vacunas(['No hay vacuna específica para la bronquitis.'])).

informacion_enfermedad(faringitis, 
    causas(['virus', 'bacterias']),
    sintomas(['dolor de garganta', 'fiebre', 'dificultad para tragar']),
    complicaciones(['absceso periamigdalino', 'fiebre reumática']),
    vacunas(['No hay vacuna disponible para la faringitis.'])).

informacion_enfermedad(sinusitis, 
    causas(['infección bacteriana', 'alergias']),
    sintomas(['congestión nasal', 'dolor facial', 'dolor de cabeza']),
    complicaciones(['meningitis', 'absceso cerebral']),
    vacunas(['No hay vacuna disponible para la sinusitis.'])).

informacion_enfermedad(gastroenteritis, 
    causas(['virus', 'bacterias', 'parásitos']),
    sintomas(['diarrea', 'vómito', 'náuseas', 'dolor abdominal']),
    complicaciones(['deshidratación', 'fallo renal']),
    vacunas(['Vacuna recomendada: Rotavirus (para niños)',
             'Dosis: 2-3 dosis',
             'Efectos secundarios: irritabilidad, fiebre leve'])).

informacion_enfermedad(otitis, 
    causas(['infección bacteriana', 'infección viral']),
    sintomas(['dolor de oído', 'fiebre', 'pérdida de audición']),
    complicaciones(['mastoiditis', 'meningitis']),
    vacunas(['No hay vacuna disponible para la otitis.'])).

informacion_enfermedad(conjuntivitis, 
    causas(['virus', 'bacterias', 'alergias']),
    sintomas(['enrojecimiento ocular', 'picazón', 'lagrimeo']),
    complicaciones(['úlcera corneal', 'pérdida de visión']),
    vacunas(['No hay vacuna disponible para la conjuntivitis.'])).

informacion_enfermedad(alergia, 
    causas(['alérgenos como polen, ácaros, alimentos']),
    sintomas(['estornudos', 'picazón', 'congestión nasal']),
    complicaciones(['asma', 'anafilaxia']),
    vacunas(['No hay vacuna disponible para las alergias.'])).

informacion_enfermedad(artritis, 
    causas(['genética', 'respuesta autoinmune']),
    sintomas(['dolor articular', 'hinchazón', 'rigidez']),
    complicaciones(['deformidad articular', 'discapacidad']),
    vacunas(['No hay vacuna disponible para la artritis.'])).