from django.urls import path
from voti.views import view_a,view_b,view_c,index_voti



app_name="voti"

urlpatterns=[
    path("voti/",index_voti,name="index_voti"),
    path("voti/view_a",view_a,name="view_a"),
    path("voti/view_b",view_b,name="view_b"),
    path("voti/view_c",view_c,name="view_c"),
]