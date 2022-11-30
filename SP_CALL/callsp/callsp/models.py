from django.db import models

class getOrders(models.Model):
    _id =models.IntegerField()
    p_id = models.IntegerField()
    p_name = models.CharField(max_length=100)
    u_id = models.IntegerField()
    u_name = models.CharField(max_length=100)
    quantity = models.IntegerField()
    u_address = models.CharField(max_length=100)
    u_contact = models.IntegerField()