"""
URL configuration for trabajo_intro project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from .views import entrada_view, aki_arbol_view, index_view, arbol_final

urlpatterns = [
    path('admin/', admin.site.urls),
    path('entrada/', entrada_view, name='entrada'),
    path('aki-arbol/', aki_arbol_view, name='aki-arbol'),
    path('index/', index_view, name='index'),
    path('arbol_final/', arbol_final, name='arbol_final'),
]
