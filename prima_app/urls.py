from django.urls import path
from prima_app.views import homepage
from prima_app.views import welcome
from prima_app.views import lista,chi_siamo,variabili,index
from primo_progetto.views import index_root


app_name="prima_app"
urlpatterns=[
    path('prima_app/index',index,name='index'),
    path('prima_app/homepage',homepage,name='homepage'),
    path('prima_app/welcome',welcome,name='welcome'),
    path('prima_app/lista',lista,name='lista'),
    path('prima_app/chi_siamo',chi_siamo,name='chi_siamo'),
    path('prima_app/variabili',variabili,name='variabili'),
    path('prima_app/index_root',index_root,name='index_root'),
    
]


