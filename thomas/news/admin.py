from thomas.news.models import News
from django.contrib import admin

class NewsAdmin(admin.ModelAdmin):
    list_display = ('title', 'article', 'pub_date')

admin.site.register(News, NewsAdmin)
