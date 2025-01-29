:- module(estilo_vida, [estilo_vida/2]).

estilo_vida(Edad, Consejo) :-
    ( Edad > 50 ->
        Consejo = 'Dieta Balanceada: Incluye una variedad de frutas, verduras, granos enteros, proteínas magras y grasas saludables.
        Control de Porciones: Presta atención al tamaño de las porciones para evitar el aumento de peso.
        Hidratación: Bebe suficiente agua a lo largo del día.
        Ejercicio Regular: Intenta realizar al menos 150 minutos de actividad aeróbica moderada o 75 minutos de actividad vigorosa a la semana.
        Fortalecimiento Muscular: Incorpora ejercicios de resistencia para mantener la masa muscular.
        Flexibilidad y Equilibrio: Practica yoga o tai chi para mejorar la flexibilidad y el equilibrio.
        Manejo del Estrés: Practica técnicas de relajación como la meditación o la respiración profunda.
        Socialización: Mantén relaciones sociales activas para evitar el aislamiento.
        Estimulación Cognitiva: Realiza actividades que desafíen tu mente, como leer, resolver rompecabezas o aprender algo nuevo.
        Revisiones Médicas: Realiza chequeos médicos regulares para detectar problemas de salud a tiempo.
        Vacunas: Asegúrate de estar al día con las vacunas recomendadas.
        Rutina de Sueño: Establece una rutina de sueño regular y asegúrate de dormir entre 7 y 9 horas por noche.
        Ambiente de Sueño: Crea un ambiente propicio para el descanso, con una habitación oscura y tranquila.
        No Fumar: Si fumas, busca ayuda para dejar de hacerlo.
        Consumo Moderado de Alcohol: Limita el consumo de alcohol a niveles moderados.'

        ; Edad < 12 ->
        Consejo = 'Come Saludable: dieta rica en frutas y verduras, evitar comida rápida.
        Tomar agua y jugos naturales, algunos de los mejores jugos para niños son manzana y naranja.
        Hacer deporte, siempre busca un deporte que disfrutes, como un partido de fútbol o cancha.
        Evitar estar mucho tiempo frente al televisor, computadora, tabley o movil.
        Tener hábitos de higiene correctos: Lavarse las manos antes de comer, cepillarse los dientes después de cada comida, bañarse todos los días.'
        
        ; Edad < 18 ->
        Consejo = 'Evitar el consumo del tabaco y el alcohol.
        Mantener una dieta equilibrada: debe estar formada por una proporción adecuada de calorías en forma de grasa (30-35%), carbohidratos (50-60%) y proteínas (10-15%), además de una distribución adecuada de la ingesta de energía a lo largo del día. El desayuno, por ejemplo, debe constituir el 25% de la ingesta energética diaria 
        Practicar actividad física a diario (una hora diaria de ejercicio físico de intensidad moderada sería lo recomendable). Evitar hacer ejercicios horas antes de irse a la cama. 
        Dormir lo suficiente (8 horas). 
        Evitar la ingesta de bebidas estimulantes como el café o bebidas de cola, especialmente, por la tarde y la noche. 
        Evitar el uso de móviles o dispositivos electrónicos en las horas previas al sueño. '

        ; Edad < 25 ->
        Consejo = 'Alimentación Balanceada: Consume una variedad de alimentos ricos en nutrientes, como frutas, verduras, granos enteros, proteínas magras y productos lácteos bajos en grasa. Controla las porciones y evita el exceso de azúcar, grasas saturadas y sodio.
        Bebe suficiente agua para mantener la hidratación.
        Actividad Física Regular: Intenta hacer al menos 150 minutos de ejercicio moderado o 75 minutos de ejercicio vigoroso a la semana. Encuentra actividades que disfrutes, como caminar, nadar, andar en bicicleta o bailar. Incorpora el ejercicio en tu rutina diaria, como caminar en lugar de usar el automóvil o subir escaleras en lugar de tomar el ascensor.
        Sueño de Calidad: Establece un horario regular de sueño y trata de dormir de 7 a 9 horas por noche. Crea un ambiente propicio para dormir, como una habitación oscura y tranquila. Evita la estimulación de dispositivos electrónicos antes de acostarte.
        Manejo del Estrés: Practica técnicas de relajación, como la meditación, la respiración profunda o el yoga. Encuentra actividades que te ayuden a liberar el estrés, como la lectura, la música o el arte.
        Evita el Consumo de Sustancias Nocivas: Limita o elimina el consumo de tabaco y alcohol. Evita el uso de drogas ilegales y el abuso de medicamentos recetados.
        Higiene Personal: Lava tus manos regularmente para prevenir enfermedades. Practica una buena higiene dental cepillándote y usando hilo dental a diario. Mantén una higiene corporal adecuada.'
    
        ; Edad < 40 ->
        Consejo = 'Mantener una dieta mediterránea: comer menos azúcar e incorporar más alimentos fermentados.
        Planifica tus entrenamientos en torno a los cinco pilares del fitness: fuerza, aptitud cardiovascular, movilidad, composición corporal y bienestar emocional. 
        Añade protección solar, retinoides y AHA a tu rutina de cuidado de la piel.
        '
        ; Edad < 50 ->
        Consejo = 'Consumir una variedad de alimentos ricos en nutrientes, como frutas, verduras, legumbres, cereales integrales, proteínas magras y grasas saludables.
        Limitar el consumo de alimentos procesados, bebidas azucaradas y comidas rápidas, que suelen ser altos en calorías vacías y bajos en nutrientes.
        Mantenerse bien hidratado bebiendo suficiente agua a lo largo del día.
        Controlar las porciones de comida y evitar los excesos, especialmente en alimentos poco saludables.
        Agregar ejercicios de fuerza, como levantamiento de pesas o yoga, para mantener la masa muscular y la densidad ósea.
        Incluir ejercicios de cardio, como correr, nadar o andar en bicicleta, para mejorar la salud cardiovascular y la resistencia.
        Realizar actividades de flexibilidad, como estiramientos o pilates, para mantener la flexibilidad y prevenir lesiones.
        Buscar actividades físicas que sean de tu agrado, para mantener la motivación y disfrutar del ejercicio.
        Practicar técnicas de relajación, como la meditación o la respiración profunda, para reducir el estrés y la ansiedad.
        Buscar actividades que te brinden placer y te ayuden a desconectar, como leer un libro, pintar o escuchar música.
        Mantener relaciones sociales saludables y cercanas, ya que el apoyo emocional de familiares y amigos es fundamental para nuestra salud mental.
        Buscar ayuda profesional si sientes que necesitas apoyo emocional, como terapias psicológicas o grupos de apoyo.
        Realizar chequeos médicos periódicos para detectar enfermedades en etapas tempranas.
        Mantener un peso saludable a través de una alimentación equilibrada y la práctica regular de ejercicio.
        Evitar el consumo de tabaco y alcohol, ya que son factores de riesgo para diversas enfermedades crónicas.
        Seguir el calendario de vacunación recomendado por los profesionales de la salud para prevenir enfermedades infecciosas.
        Establecer una rutina de sueño regular, acostándote y levantándote a la misma hora todos los días.
        Crear un ambiente propicio para el descanso, con una temperatura agradable, oscuridad y silencio en la habitación.
        Evitar el consumo de estimulantes, como cafeína o alcohol, antes de dormir.
        Realizar actividades relajantes antes de acostarte, como leer un libro o tomar un baño caliente.'
    ).




    
