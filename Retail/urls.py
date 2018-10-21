"""Retail URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include
from rest_framework import routers
from Retail.shops import views


router = routers.DefaultRouter()
router.register(r'shops', views.ShopViewSet)
router.register(r'salesmen', views.SalesmanViewSet)
router.register(r'orders', views.OrderViewSet)
router.register(r'items', views.ItemViewSet)
router.register(r'orderitems', views.OrderItemViewSet)
router.register(r'shops_report', views.ShopsReportViewSet, base_name='shops_report')
router.register(r'salesmen_report', views.InfoForSimpleUserViewSet, base_name='salesmen_report')



urlpatterns = [
    path('admin/', admin.site.urls),
    url(r'^', include(router.urls)),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]