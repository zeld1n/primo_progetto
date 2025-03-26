from django.urls import path 
from .views import contatti,lista_contatti,elimina_contatto,modifica_contatto

app_name="forms_app"

urlpatterns = [
    path("contattaci/",contatti,name="contatti"),
    path("contattaci/lista_contatti",lista_contatti,name="lista_contatti"),
    path("contattaci/elimina_contatto/<int:pk>",elimina_contatto,name="elimina_contatto"),
    path("contattaci/modifica_contatto/<int:pk>",modifica_contatto,name="modifica_contatto"),


]
