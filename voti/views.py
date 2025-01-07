from django.shortcuts import render

def view_a(request):
    materie = ["Matematica","Italiano","Inglese","Storia","Geografia"]
    
    return render(request,"view_a.html",{'materie': materie})

def view_b(request):

    voti = {
        'Giuseppe Gullo': [("Matematica", 9, 0), ("Italiano", 7, 3), ("Inglese", 7, 4), ("Storia", 7, 4), ("Geografia", 5, 7)],
        'Antonio Barbera': [("Matematica", 8, 1), ("Italiano", 6, 1), ("Inglese", 9, 0), ("Storia", 8, 2), ("Geografia", 8, 1)],
        'Nicola Spina': [("Matematica", 7, 2), ("Italiano", 6, 2), ("Inglese", 4, 3), ("Storia", 8, 2), ("Geografia", 8, 2)],
    }
    
    return render(request,"view_b.html",{'voti':voti})

# Create your views here.
def view_c(request):
    voti = {
        'Giuseppe Gullo': [("Matematica", 9, 0), ("Italiano", 7, 3), ("Inglese", 7, 4), ("Storia", 7, 4), ("Geografia", 5, 7)],
        'Antonio Barbera': [("Matematica", 8, 1), ("Italiano", 6, 1), ("Inglese", 9, 0), ("Storia", 8, 2), ("Geografia", 8, 1)],
        'Nicola Spina': [("Matematica", 7, 2), ("Italiano", 6, 2), ("Inglese", 4, 3), ("Storia", 8, 2), ("Geografia", 8, 2)],
    }

    medie = {}

    for studente, materie in voti.items():
        totale_voti = 0
        numero_materie = len(materie)
       
        for materia, voto, assenze in materie:
            totale_voti += voto

        media = totale_voti / numero_materie
        medie[studente] = media

    return render(request, "view_c.html", {'medie': medie})


def index_voti(request):
    return render(request,"index_voti.html")