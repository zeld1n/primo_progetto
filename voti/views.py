from django.shortcuts import render

voti = {
        'Giuseppe Gullo': [("Matematica", 9, 0), ("Italiano", 7, 3), ("Inglese", 7, 4), ("Storia", 7, 4), ("Geografia", 5, 7)],
        'Antonio Barbera': [("Matematica", 8, 1), ("Italiano", 6, 1), ("Inglese", 9, 0), ("Storia", 8, 2), ("Geografia", 8, 1)],
        'Nicola Spina': [("Matematica", 7, 2), ("Italiano", 6, 2), ("Inglese", 4, 3), ("Storia", 8, 2), ("Geografia", 8, 2)],
    }

def view_a(request):
    materie = ["Matematica","Italiano","Inglese","Storia","Geografia"]
    
    return render(request,"view_a.html",{'materie': materie})

def view_b(request):
    
    return render(request,"view_b.html",{'voti':voti})

def view_c(request):

    medie = {}

    for studente, materie in voti.items():
        totale_voti = 0
        numero_materie = len(materie)
       
        for materia, voto, assenze in materie:
            totale_voti += voto

        media = totale_voti / numero_materie
        medie[studente] = media

    return render(request, "view_c.html", {'medie': medie})
        

def view_d(request):
    votomax = 0
    votomin=10
    materieVotoMax={}
    studenteVotoMax={}
    studenteVotoMin={}
    materieVotoMin={}
    materieVotoMax['materia']=[]
    studenteVotoMax['materia']=[]
    studenteVotoMin['materia']=[]
    materieVotoMin['materia']=[]
    for studente, materie in voti.items():
        for materia, voto, assenze in materie:
            if (votomax<voto):
                votomax=voto
            if(votomin>voto):
                votomin=voto
    
    for studente, materie in voti.items():
        for materia, voto, assenze in materie:
            if(voto==votomax):
                
                materieVotoMax['materia'].append(materia)
                studenteVotoMax['materia'].append(studente)
            if(voto==votomin):
                
                materieVotoMin['materia'].append(materia)
                
                studenteVotoMin['materia'].append(studente)





    context={
        'votomax':votomax,
        'votomin':votomin,
        'materieVotoMax':materieVotoMax,
        'studenteVotoMax':studenteVotoMax,
        'studenteVotoMin':studenteVotoMin,
        'materieVotoMin':materieVotoMin

    }

    return render(request, "view_d.html", context)
                


def index_voti(request):
    return render(request,"index_voti.html")