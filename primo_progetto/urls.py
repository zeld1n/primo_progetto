"""
URL configuration for primo_progetto project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from primo_progetto.views import index_root

app_name="primo_progetto"
urlpatterns = [
    path('admin/', admin.site.urls),
    path("",index_root,name='index_root'),
    path('',include("prima_app.urls",namespace="prima_app")),
    path('',include("seconda_app.urls",namespace="seconda_app")),
    path('',include("news.urls",namespace="news")),
    path('',include("voti.urls",namespace="voti")),
    path('',include("eventi.urls",namespace="eventi")),
    path('',include("eventi_culturali.urls",namespace="eventi_culturali")),
    path('accounts/', include('django.contrib.auth.urls')),
    path('',include("forms_app.urls",namespace="forms_app")),
    path('',include("api.urls",namespace="api")),


]
