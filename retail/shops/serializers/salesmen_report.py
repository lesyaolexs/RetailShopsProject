from rest_framework import serializers
from retail.shops.models import Salesman, Order, OrderItem, Shop


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


