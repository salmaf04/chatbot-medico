:- module(diagnostico, [diagnosticar/2, sugerir_tratamiento/1]).

:- use_module('../data/conocimientos').

% Pesos de los síntomas 
peso_sintoma(fiebre, 18).                     
peso_sintoma('dolor de cabeza', 18).          
peso_sintoma(estornudos, 20).                 
peso_sintoma('congestión nasal', 18).         
peso_sintoma('malestar general', 18).         
peso_sintoma('dolor de garganta', 19).        
peso_sintoma(tos, 18).                        
peso_sintoma('dificultad respiratoria', 19).  
peso_sintoma('pérdida del olfato', 21).       
peso_sintoma('pérdida del gusto', 21).        
peso_sintoma('dolor muscular', 20).           
peso_sintoma(fatiga, 18).                     
peso_sintoma(náuseas, 19).                    
peso_sintoma(vómito, 20).                     
peso_sintoma(diarrea, 20).                    
peso_sintoma(desorientación, 21).             
peso_sintoma('temperatura baja', 21).         
peso_sintoma('dolor en el pecho', 20).        
peso_sintoma('dificultad para tragar', 21).   
peso_sintoma('ganglios inflamados', 21).      
peso_sintoma('dolor facial', 21).             
peso_sintoma('dolor abdominal', 20).          
peso_sintoma('dolor de oído', 21).            
peso_sintoma('pérdida de audición', 21).      
peso_sintoma(irritabilidad, 21).              
peso_sintoma('enrojecimiento ocular', 21).    
peso_sintoma(picazón, 20).                    
peso_sintoma(lagrimeo, 20).                   
peso_sintoma('secreción ocular', 21).         
peso_sintoma('dolor articular', 21).          
peso_sintoma(hinchazón, 21).                  
peso_sintoma(rigidez, 19).                    
peso_sintoma('silbidos en el pecho', 21).            
peso_sintoma(mareos, 19).                     
peso_sintoma('visión borrosa', 20).                               
peso_sintoma('micción frecuente', 21).        
peso_sintoma('dolor de cabeza intenso', 21).  
peso_sintoma('sensibilidad a la luz', 21).      
peso_sintoma('sensibilidad al ruido', 21).      
peso_sintoma(nerviosismo, 21).                
peso_sintoma(sudoración, 21).                 
peso_sintoma(palpitaciones, 21).              
peso_sintoma(insomnio, 21).                   
peso_sintoma(tristeza, 21).                   
peso_sintoma('pérdida de apetito', 21).    
peso_sintoma('opresión en el pecho', 21).
peso_sintoma('sed excesiva', 21).   
peso_sintoma('visión borrosa', 21).

% Definir pesos base para las enfermedades
peso_enfermedad(gripe, 16).      
peso_enfermedad(covid19, 1).    
peso_enfermedad(neumonia, 8).   
peso_enfermedad(bronquitis, 9).     
peso_enfermedad(faringitis, 11).     
peso_enfermedad(sinusitis, 10).      
peso_enfermedad(gastroenteritis, 12).
peso_enfermedad(otitis, 7).         
peso_enfermedad(conjuntivitis, 6).  
peso_enfermedad(alergia, 17).        
peso_enfermedad(artritis, 2).       
peso_enfermedad(asma, 13).           
peso_enfermedad(hipertension, 15).   
peso_enfermedad(diabetes, 14).       
peso_enfermedad(migraña, 5).        
peso_enfermedad(ansiedad, 4).       
peso_enfermedad(depresion, 3).      

% Predicado principal para diagnosticar
diagnosticar(SintomasUsuario, EnfermedadProbable) :-
    findall(Enfermedad, enfermedad(Enfermedad), Enfermedades),
    maplist(calcular_puntuacion(SintomasUsuario), Enfermedades, Puntuaciones),
    max_member((MaxPuntuacion, EnfermedadProbable), Puntuaciones),
    MaxPuntuacion > 0.

% Calcular la puntuación de una enfermedad en función de los síntomas del usuario
calcular_puntuacion(SintomasUsuario, Enfermedad, (PuntuacionTotal, Enfermedad)) :-
    findall(Sintoma, tiene_sintoma(Enfermedad, Sintoma), SintomasEnfermedad),
    intersection(SintomasUsuario, SintomasEnfermedad, SintomasComunes),
    sumar_pesos(SintomasComunes, PuntuacionSintomas),
    (   peso_enfermedad(Enfermedad, PesoBase)
    ->  true
    ;   PesoBase = 0  % Si no tiene un peso base definido, asumimos 0
    ),
    PuntuacionTotal is PuntuacionSintomas + PesoBase.

% Sumar los pesos de los síntomas comunes
sumar_pesos([], 0).
sumar_pesos([Sintoma | Resto], PuntuacionTotal) :-
    (   peso_sintoma(Sintoma, Peso)
    ->  true
    ;   Peso = 1  % Si no tiene un peso definido, asumimos un peso de 1
    ),
    sumar_pesos(Resto, PuntuacionResto),
    PuntuacionTotal is PuntuacionResto + Peso.

% Sugerir tratamiento para una enfermedad
sugerir_tratamiento(Enfermedad) :-
    tratamiento(Enfermedad, Tratamiento),
    write('Tratamiento recomendado: '), write(Tratamiento), nl.


