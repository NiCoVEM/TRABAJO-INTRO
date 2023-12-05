from django.db import models

class Pregunta(models.Model):
    pregunta = models.TextField()
    tipo = models.TextField()
    respuesta_correcta = models.TextField(db_column='respuesta correcta')
    respuesta_muy_positiva = models.TextField(db_column='respuesta muy positiva')
    respuesta_positiva = models.TextField(db_column='respuesta positiva')
    respuesta_neutral = models.TextField(db_column='respuesta neutra')
    respuesta_negativa = models.TextField(db_column='respuesta negativa')
    respuesta_muy_negativa = models.TextField(db_column='respuesta muy negativa')

    class Meta:
        db_table = 'preguntas'

    def __str__(self):
        return f"{self.pregunta}, {self.tipo}, {self.respuesta_correcta}, {self.respuesta_muy_positiva}, {self.respuesta_positiva}, {self.respuesta_neutral}, {self.respuesta_negativa}, {self.respuesta_muy_negativa}"