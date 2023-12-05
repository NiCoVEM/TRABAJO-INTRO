from django.shortcuts import render, redirect
from .models import Pregunta
from random import sample
import random

def entrada_view(request):
    return render(request, 'entrada.html')

def index_view(request):
    return render(request, 'index.html')

def aki_arbol_view(request):
    # Obtiene 8 preguntas al azar sin repetirse
    preguntas = sample(list(Pregunta.objects.all())[:8], 8)

    if 'preguntas_mostradas' not in request.session:
        request.session['preguntas_mostradas'] = []

    preguntas_mostradas = request.session['preguntas_mostradas']

    # Filtra las preguntas que ya han sido mostradas
    preguntas = [pregunta for pregunta in preguntas if pregunta.id not in preguntas_mostradas]

    # Si no hay más preguntas para mostrar, redirige a final
    if not preguntas:
        request.session['preguntas_mostradas'] = []
        return redirect('arbol_final')

    # Obtiene la primera pregunta de la lista
    pregunta = preguntas[0]

    # Agrega la pregunta actual a la lista de preguntas mostradas
    preguntas_mostradas.append(pregunta.id)
    request.session['preguntas_mostradas'] = preguntas_mostradas

    context = {'pregunta': pregunta}
    return render(request, 'aki-arbol.html', context)


def arbol_final(request):

    n = 1
    a = 1
    while n < 999:
        i = 1
        b = 2
        while i <7999:
            b = b**(1/2)
            i+=1
        a= a**(1/2)*a+n
        n+=1
    
    # Lista de nombres de las páginas HTML
    paginas_html = ['pino.html', 'roble.html', 'abeto.html', 'cerezo.html', 'palmera.html', 'eucalipto.html', 'nogal.html', 'alamo.html', 'arce.html', 'araucaria.html']
    pagina_elegida = random.choice(paginas_html)
    
    # Redirige a la página seleccionada
    return render(request, pagina_elegida)

def acercade(request):
    return render(request, 'acercade.html')