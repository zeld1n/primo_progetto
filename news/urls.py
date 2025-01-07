from django.urls import path 
from .views import home,index_news,articoloDetailViewCB,listaArticoli,queryBase,giornalistaDetailView

app_name="news"

urlpatterns = [
    path("news/",home,name="home"),
    path("news/articoli/<int:pk>",articoloDetailViewCB.as_view(),name="articolo_detail"),
    path("news/lista_articoli_giornalista/<int:pk>",listaArticoli,name="listaArticoli"),
    path("news/lista_articoli_giornalista/",listaArticoli,name="listaArticoli"),
    path("news/query_base/",queryBase,name="query_base"),
    path("news/lista_articoli_giornalista/<int:pk>",giornalistaDetailView,name="giornalista_detail"),
    path("news/index_news/",index_news,name="index_news")
]
