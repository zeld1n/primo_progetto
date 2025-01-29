from django.db import models

class Evento(models.Model):
    titolo = models.CharField(max_length=25)
    data = models.DateField(blank=True,null=False)
    descrizione=models.TextField(null=False)
    partecipanti=models.IntegerField(null=False)

    def __str__(self):
        return self.titolo+" "+self.data+" "+self.descrizione+" "+self.partecipanti
# Create your models here.
