from django.urls import path 
from .views import contatti,lista_contatti

app_name="forms_app"

urlpatterns = [
    path("contattaci/",contatti,name="contatti"),
    path("contattaci/lista_contatti",lista_contatti,name="lista_contatti"),

]
