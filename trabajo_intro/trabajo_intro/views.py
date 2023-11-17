from django.shortcuts import render

def entrada_view(request):
    return render(request, 'entrada.html')

def aki_arbol_view(request):
    return render(request, 'aki-arbol.html')

def index_view(request):
    return render(request, 'index.html')