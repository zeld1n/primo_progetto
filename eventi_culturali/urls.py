from django.urls import path 
from .views import indexEventiCulturali,vieweventi_culturali_a,vieweventi_culturali_b,vieweventi_culturali_c,vieweventi_culturali_d,vieweventi_culturali_e,vieweventi_culturali_f

app_name="eventi_culturali"

urlpatterns = [
    
    path("eventi_culturali/vieweventi_culturali_a",vieweventi_culturali_a,name="vieweventi_culturali_a"),
    path("eventi_culturali/vieweventi_culturali_b",vieweventi_culturali_b,name="vieweventi_culturali_b"),
     path("eventi_culturali/vieweventi_culturali_c",vieweventi_culturali_c,name="vieweventi_culturali_c"),
     path("eventi_culturali/vieweventi_culturali_d",vieweventi_culturali_d,name="vieweventi_culturali_d"),
     path("eventi_culturali/vieweventi_culturali_e",vieweventi_culturali_e,name="vieweventi_culturali_e"),
     path("eventi_culturali/vieweventi_culturali_f",vieweventi_culturali_f,name="vieweventi_culturali_f"),
     path("eventi_culturali/",indexEventiCulturali,name="index_eventi_culturali")
    
]
