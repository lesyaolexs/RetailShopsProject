from rest_framework.permissions import IsAdminUser

from .models import *
from rest_framework import viewsets
from Retail.shops.serializers import *
from rest_framework import permissions


class ShopViewSet(viewsets.ModelViewSet):

    queryset = Shop.objects.all()
    serializer_class = ShopSerializer


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


class ShopAndSellersViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAdminUser]
    queryset = Shop.objects.all()
    serializer_class = ShopAndSellersSerializer



# @api_view()
# def GeneralView():
#     pass



