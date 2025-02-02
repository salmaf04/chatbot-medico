:- module(diagnostico, [diagnosticar/2, sugerir_tratamiento/1]).

:- use_module('../data/conocimientos').

% Pesos de los síntomas 
peso_sintoma(fiebre, 1).                     
peso_sintoma('dolor de cabeza', 1).          
peso_sintoma(estornudos, 3).                 
peso_sintoma('congestión nasal', 1).         
peso_sintoma('malestar general', 1).         
peso_sintoma('dolor de garganta', 2).        
peso_sintoma(tos, 1).                        
peso_sintoma('dificultad respiratoria', 2).  
peso_sintoma('pérdida del olfato', 4).       
peso_sintoma('pérdida del gusto', 4).        
peso_sintoma('dolor muscular', 3).           
peso_sintoma(fatiga, 1).                     
peso_sintoma(náuseas, 2).                    
peso_sintoma(vómito, 3).                     
peso_sintoma(diarrea, 3).                    
peso_sintoma(desorientación, 4).             
peso_sintoma('temperatura baja', 4).         
peso_sintoma('dolor en el pecho', 3).        
peso_sintoma('dificultad para tragar', 4).   
peso_sintoma('ganglios inflamados', 4).      
peso_sintoma('dolor facial', 4).             
peso_sintoma('dolor abdominal', 3).          
peso_sintoma('dolor de oído', 4).            
peso_sintoma('pérdida de audición', 4).      
peso_sintoma(irritabilidad, 4).              
peso_sintoma('enrojecimiento ocular', 4).    
peso_sintoma(picazón, 3).                    
peso_sintoma(lagrimeo, 3).                   
peso_sintoma('secreción ocular', 4).         
peso_sintoma('dolor articular', 4).          
peso_sintoma(hinchazón, 4).                  
peso_sintoma(rigidez, 2).                    
peso_sintoma('silbidos en el pecho', 4).            
peso_sintoma(mareos, 2).                     
peso_sintoma('visión borrosa', 3).                               
peso_sintoma('micción frecuente', 4).        
peso_sintoma('dolor de cabeza intenso', 4).  
peso_sintoma('sensibilidad a la luz', 4).      
peso_sintoma('sensibilidad al ruido', 4).      
peso_sintoma(nerviosismo, 4).                
peso_sintoma(sudoración, 4).                 
peso_sintoma(palpitaciones, 4).              
peso_sintoma(insomnio, 4).                   
peso_sintoma(tristeza, 4).                   
peso_sintoma('pérdida de apetito', 4).    
peso_sintoma('opresión en el pecho', 4).
peso_sintoma('sed excesiva', 4).   
peso_sintoma('visión borrosa', 4).

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


