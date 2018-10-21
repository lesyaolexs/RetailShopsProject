from rest_framework import serializers

from .models import *


class ShopSerializer(serializers.ModelSerializer):

    class Meta:
        model = Shop
        fields = '__all__'


class SalesmanSerializer(serializers.ModelSerializer):

    class Meta:
        model = Salesman
        fields = '__all__'


class OrderSerializer(serializers.ModelSerializer):

    class Meta:
        model = Order
        fields = '__all__'


class ItemSerializer(serializers.ModelSerializer):

    class Meta:
        model = Item
        fields = '__all__'


class OrderItemSerializer(serializers.ModelSerializer):

    class Meta:
        model = OrderItem
        fields = '__all__'


class CustomSelesmanSerializer(serializers.ModelSerializer):
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
                  'number_of_items',)

class ShopsReportSerializer(serializers.ModelSerializer):
    sellers = CustomSelesmanSerializer(many=True)

    class Meta:
        model = Shop
        fields = ('name',
                  'sellers', )


class SalesmenReportSerializer(serializers.ModelSerializer):

    average_number_of_item = serializers.SerializerMethodField()

    def get_average_number_of_item(self, obj):
        sellers = Salesman.objects.filter(shop=obj)
        if not sellers:
            return 0

        sum = 0
        for order in Order.objects.filter(shop=obj):
            for item in OrderItem.objects.filter(order=order):
                sum = sum + item.quantity
        return sum / len(list(sellers))

    class Meta:
       model = Shop
       fields = ('name',
                 'average_number_of_item',)


