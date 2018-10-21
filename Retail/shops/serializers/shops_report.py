from rest_framework import serializers

from Retail.shops.models import Order, OrderItem, Salesman, Shop

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