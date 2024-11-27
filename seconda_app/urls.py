from django.urls import path
from seconda_app.views import es_if,if_else_elif,es_for,index_seconda_app

app_name="seconda_app"

urlpatterns = [
    path("es_if",es_if,name="es_if"),
    path("if_else_elif",if_else_elif,name="if_else_elif"),
    path("es_for",es_for,name="es_for"),
    path("index_seconda_app",index_seconda_app,name="index_seconda_app")


]