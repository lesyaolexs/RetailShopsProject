from .models import *
from rest_framework import serializers
from django.contrib.auth.models import User


class ShopSerializer(serializers.ModelSerializer):

    class Meta:
        model = Shop
        fields = ('name',)


class SalesmanSerializer(serializers.ModelSerializer):

    number_of_items = serializers.SerializerMethodField()

    def get_number_of_items(self, obj):

        sum = 0

        for order in Order.objects.filter(salesman=obj):
            for item in OrderItem.objects.filter(order=order):
                sum = sum + item.quantity

        return sum

    class Meta:
        model = Salesman
        fields = ('first_name',
                  'last_name',
                  'email',
                  'number_of_items',)


class OrderSerializer(serializers.ModelSerializer):

    class Meta:
        model = Order
        fields = ('date',)


class ItemSerializer(serializers.ModelSerializer):

    class Meta:
        model = Item
        fields = ('name',)


class OrderItemSerializer(serializers.ModelSerializer):

    class Meta:
        model = OrderItem
        fields = ('order',
                  'item',
                  'item',
                  'price',
                  'quantity',)


class ShopsReportSerializer(serializers.ModelSerializer):

    sellers = SalesmanSerializer(many=True)

    class Meta:
        model = Shop
        fields = ('name', 'sellers')


class InfoForSimpleUserSerializer(serializers.ModelSerializer):

    average_number_of_item = serializers.SerializerMethodField()

    def get_average_number_of_item(self, obj):

        sum = 0

        for order in Order.objects.filter(shop=obj):
            for item in OrderItem.objects.filter(order=order):
                sum = sum + item.quantity
        if Salesman.objects.filter(shop=obj):
            avr = sum/len(list(Salesman.objects.filter(shop=obj)))
            return avr
        else:
            return 'No sales'

    class Meta:
       model = Shop
       fields = ('name',
                 'average_number_of_item',)


