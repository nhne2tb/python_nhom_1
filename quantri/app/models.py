from django.db import models

class DashboardStats(models.Model):
    khach_hang = models.IntegerField(default=0)
    san_pham_da_ban = models.IntegerField(default=0)
    don_hang = models.IntegerField(default=0)
    doanh_thu = models.FloatField(default=0.0)

class MonthlyRevenue(models.Model):
    month = models.CharField(max_length=10) # T1, T2...
    revenue = models.FloatField()

    def __str__(self):
        return self.month