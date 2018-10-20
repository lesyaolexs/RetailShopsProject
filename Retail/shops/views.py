from .models import *
from rest_framework import viewsets
from Retail.shops.serializers import *
from rest_framework import permissions
from rest_framework.permissions import IsAdminUser, IsAuthenticated


class ShopViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Shop.objects.all()
    serializer_class = ShopSerializer


class SalesmanViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Salesman.objects.all()
    serializer_class = SalesmanSerializer


class OrderViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Order.objects.all()
    serializer_class = OrderSerializer


class ItemViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Item.objects.all()
    serializer_class = ItemSerializer


class OrderItemViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = OrderItem.objects.all()
    serializer_class = OrderItemSerializer


class ShopsReportViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAdminUser]
    queryset = Shop.objects.all()
    serializer_class = ShopsReportSerializer


class InfoForSimpleUserViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Shop.objects.all()
    serializer_class = InfoForSimpleUserSerializer







