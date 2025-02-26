from django.db import models


class Evento(models.Model):

    titolo = models.CharField(max_length=50)
    descrizione  = models.TextField()
    data_inizio = models.DateField(blank=True,null=True)
    data_fine = models.DateField(blank=True,null=True) 
    posti_disponibili=models.IntegerField(default=0,blank=True)

    def __str__(self):
        return self.titolo + " "+ self.descrizione 
    
    
    class Meta:
        verbose_name= "Evento"
        verbose_name_plural="Eventi"

# Create your models here.





