from django.shortcuts import render, redirect
from .models import Pregunta
from random import sample
import random

def entrada_view(request):
    return render(request, 'entrada.html')

def index_view(request):
    return render(request, 'index.html')

def aki_arbol_view(request):
    # Obtén 10 preguntas sin repetición
    preguntas = sample(list(Pregunta.objects.all())[:8], 8)

    # Guarda las preguntas en la sesión para llevar un registro y evitar repeticiones
    if 'preguntas_mostradas' not in request.session:
        request.session['preguntas_mostradas'] = []

    preguntas_mostradas = request.session['preguntas_mostradas']

    # Filtra las preguntas que ya han sido mostradas
    preguntas = [pregunta for pregunta in preguntas if pregunta.id not in preguntas_mostradas]

    # Si no hay más preguntas por mostrar, redirige a 'final.html'
    if not preguntas:
        request.session['preguntas_mostradas'] = []
        return redirect('arbol_final')

    # Obtén la primera pregunta de la lista
    pregunta = preguntas[0]

    # Agrega la pregunta actual a la lista de preguntas mostradas
    preguntas_mostradas.append(pregunta.id)
    request.session['preguntas_mostradas'] = preguntas_mostradas

    context = {'pregunta': pregunta}
    return render(request, 'aki-arbol.html', context)


def arbol_final(request):
    # Lista de nombres de las páginas HTML
    paginas_html = ['pino.html', 'roble.html', 'abeto.html']#, 'cerezo.html', 'palmera.html', 'arce.html', 'araucaria.html', 'eucalipto.html', 'nogal.html', 'alamo.html']
    pagina_elegida = random.choice(paginas_html)

    # Renderiza o redirige a la página seleccionada
    return render(request, pagina_elegida)