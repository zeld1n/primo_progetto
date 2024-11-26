from django.urls import path
from prima_app.views import homepage
from prima_app.views import welcome
from prima_app.views import lista,chi_siamo,variabili,index
from primo_progetto.views import index_root
from seconda_app.views import es_if,if_else_elif

app_name="prima_app"
urlpatterns=[
    path("",index_root,name='index_root'),
    path('index',index,name='index'),
    path('homepage',homepage,name='homepage'),
    path('welcome',welcome,name='welcome'),
    path('lista',lista,name='lista'),
    path('chi_siamo',chi_siamo,name='chi_siamo'),
    path('variabili',variabili,name='variabili'),
    path('index_root',index_root,name='index_root'),
    path('es_if',es_if,name='es_if'),
    path('if_else_elif',if_else_elif,name='if_else_elif')
    
]


