from django.shortcuts import render
from .models import Evento


# Create your views here.
def vieweventi_a(request):
    eventiTitolo=Evento.objects.order_by('data')
    context={
        'eventiTitolo':eventiTitolo
    }
    
    return render(request,"vieweventi_a.html",context)


def vieweventi_b(request):
    eventiTitolo=Evento.objects.all()
    context={
        'eventiTitolo':eventiTitolo
    }
    
    return render(request,"vieweventi_b.html",context)



def vieweventi_c(request):
    eventiTotale=Evento.objects.all()
    numeventi=0
    totale=0
    for singoloEvento in eventiTotale:
        totale+=singoloEvento.partecipanti
        numeventi+=1

    mediaP=totale/numeventi

    context={
        'mediaP':mediaP,    
        'totale':totale
    }   
    
    return render(request,"vieweventi_c.html",context)



def vieweventi_d(request):
    eventoMax=Evento.objects.order_by('-partecipanti').first()

    
    eventoMin=Evento.objects.order_by('partecipanti').first()

    context={
        'eventoMax':eventoMax,
        'eventoMin':eventoMin
    }
    
    return render(request,"vieweventi_d.html",context)

def indexEventi(request):
    return render(request,"index_eventi.html")