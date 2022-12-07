from django.db import models

class get_best_seller_item(models.Model):
    name = models.CharField(max_length=100)
    total_selling = models.IntegerField()
    