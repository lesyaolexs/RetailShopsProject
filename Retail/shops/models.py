from django.db import models
from django.utils import timezone


class Shop(models.Model):

    name = models.CharField(max_length=120)

    def __str__(self):
        return self.name


class Salesman(models.Model):

    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.EmailField()
    shop = models.ForeignKey(Shop, on_delete=models.CASCADE, related_name='sellers')


class Order(models.Model):

    date = models.DateTimeField(default=timezone.now())
    shop = models.ForeignKey(Shop, on_delete=models.CASCADE)
    salesman = models.ForeignKey (Salesman, on_delete=models.CASCADE)


class Item(models.Model):
    name = models.CharField(max_length=100)


class OrderItem(models.Model):

    order = models.ForeignKey(Order, related_name='order_items', on_delete=models.CASCADE)
    item = models.ForeignKey(Item, on_delete=models.CASCADE)
    price = models.DecimalField(max_digits=6, decimal_places=2)
    quantity = models.IntegerField(default=0)













