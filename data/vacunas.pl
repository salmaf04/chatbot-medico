:- module(vacunas, [informacion_vacuna/2]).

informacion_vacuna(gripe, Info) :-
    Info = ['Vacuna recomendada: Vacuna anual contra la gripe',
            'Dosis: 1 dosis anual',
            'Efectos secundarios: dolor leve en el sitio de inyección, fiebre baja'].

informacion_vacuna(covid19, Info) :-
    Info = ['Vacunas recomendadas: Soberana, Abdala',
            'Dosis: 2 dosis',
            'Efectos secundarios: dolor en el sitio de inyección, fatiga, fiebre'].

informacion_vacuna(neumonia, Info) :-
    Info = ['Vacuna recomendada: Vacuna contra el neumococo',
            'Dosis: 1 dosis (puede variar según la edad y el estado de salud)',
            'Efectos secundarios: enrojecimiento en el sitio de inyección, fiebre leve'].