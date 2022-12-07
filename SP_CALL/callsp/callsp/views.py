from django.shortcuts import render
from django.db import connection
from callsp.models import get_best_seller_item

def showdetails(request):
    cursor= connection.cursor()
    cursor.execute("call get_best_seller_item()")
    results=cursor.fetchall()
    return render(request, 'Index.html',{'get_best_seller_item':results})