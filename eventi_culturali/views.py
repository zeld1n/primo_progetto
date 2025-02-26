from django.shortcuts import render
from .models import Evento
import datetime

def indexEventiCulturali(request):
    return render(request,"index_eventi_culturali.html")

def vieweventi_culturali_a(request):
    eventiCulturali=Evento.objects.order_by('data_inizio')
    context={
        'eventiCulturali':eventiCulturali
    }
    
    return render(request,"vieweventi_culturali_a.html",context)

def vieweventi_culturali_b(request):
    eventiCulturali=Evento.objects.all()
    context={
        'eventiCulturali':eventiCulturali
    }
    
    return render(request,"vieweventi_culturali_b.html",context)
   
def vieweventi_culturali_c(request):
    
    eventiCulturali=Evento.objects.filter(data_inizio__gt=datetime.date(2025,6,11))

    context={
        'eventiCulturali':eventiCulturali
    }
    
    return render(request,"vieweventi_culturali_c.html",context)

def vieweventi_culturali_d(request):
    eventiCulturali=Evento.objects.filter(posti_disponibili__lt=80)
    context={
        'eventiCulturali':eventiCulturali
    }
    return render(request,"vieweventi_culturali_d.html",context)

def vieweventi_culturali_e(request):
    eventiCulturali=Evento.objects.filter(data_fine__lt=datetime.date(2025,5,31))
    
    context={
        'eventiCulturali':eventiCulturali
    }
    return render(request,"vieweventi_culturali_e.html",context)

def vieweventi_culturali_f(request):
    eventoMaggiorNumero=Evento.objects.order_by('-posti_disponibili').first()
    eventoMinorNumero=Evento.objects.order_by('posti_disponibili').first()


    eventiTotale=Evento.objects.all()
    NumeroTotaleDiPosti=0
    for singoloEvento in eventiTotale:
        NumeroTotaleDiPosti+=singoloEvento.posti_disponibili


    context={
            'eventoMaggiorNumero':eventoMaggiorNumero,
            'eventoMinorNumero':eventoMinorNumero,
            'NumeroTotaleDiPosti':NumeroTotaleDiPosti
        }


    return render(request,"vieweventi_culturali_f.html",context)

# Create your views here.
