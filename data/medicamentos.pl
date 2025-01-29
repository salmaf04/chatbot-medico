:- module(medicamentos, [informacion_medicamento/2]).

informacion_medicamento(paracetamol, Info) :-
    Info = ['Efectos secundarios: náuseas, mareos', 
            'Dosis usual: 500mg cada 8 horas'].