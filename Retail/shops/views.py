from rest_framework import viewsets
from rest_framework.decorators import action
from rest_framework.permissions import IsAdminUser, IsAuthenticatedOrReadOnly
from rest_framework.response import Response

from Retail.shops.serializers import *

permissions_classes = [IsAuthenticatedOrReadOnly]


class ShopViewSet(viewsets.ModelViewSet):
    queryset = Shop.objects.all()
    serializer_class = ShopSerializer

    @action(detail=False, permission_classes=[IsAdminUser])
    def shops_report(self, request):
        serializer = ShopsReportSerializer(data=Shop.objects.all(), many=True)
        serializer.is_valid()
        return Response(serializer.data)

    @action(detail=False, permission_classes =[IsAuthenticatedOrReadOnly])
    def salesmen_report(self, request):
        serializer = SalesmenReportSerializer(data=Shop.objects.all(), many=True)
        serializer.is_valid()
        return Response(serializer.data)


class SalesmanViewSet(viewsets.ModelViewSet):
    queryset = Salesman.objects.all()
    serializer_class = SalesmanSerializer


class OrderViewSet(viewsets.ModelViewSet):
    queryset = Order.objects.all()
    serializer_class = OrderSerializer


class ItemViewSet(viewsets.ModelViewSet):
    queryset = Item.objects.all()
    serializer_class = ItemSerializer


class OrderItemViewSet(viewsets.ModelViewSet):
    queryset = OrderItem.objects.all()
    serializer_class = OrderItemSerializer








