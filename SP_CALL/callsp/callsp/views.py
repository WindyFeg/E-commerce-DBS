from django.shortcuts import render
from django.db import connection
from callsp.models import getOrders

def showdetails(request):
    cursor= connection.cursor()
    cursor.execute("call getOrders()")
    results=cursor.fetchall()
    return render(request, 'Index.html',{'getOrders':results})