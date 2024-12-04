from django.urls import path 
from .views import home,articoloDetailView

app_name="news"

urlpatterns = [
    path("news/",home,name="home"),
    path("news/articoli/<int:pk>",articoloDetailView,name="articolo_detail")

]
