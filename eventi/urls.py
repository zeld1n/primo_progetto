from django.urls import path 
from .views import vieweventi_a,vieweventi_b,vieweventi_c,vieweventi_d,indexEventi

app_name="eventi"

urlpatterns = [
    path("eventi/vieweventi_a",vieweventi_a,name="vieweventi_a"),
    path("eventi/vieweventi_b",vieweventi_b,name="vieweventi_b"),
     path("eventi/vieweventi_c",vieweventi_c,name="vieweventi_c"),
     path("eventi/vieweventi_d",vieweventi_d,name="vieweventi_d"),
     path("eventi/",indexEventi,name="indexEventi")
    
]
