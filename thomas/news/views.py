from django.template import Context, loader
from thomas.news.models import News
from django.http import HttpResponse

def home(request):
    latest_news_list = News.objects.all().order_by('pub_date')[:5]
    t = loader.get_template('base.html')
    c = Context({
            'latest_news_list': latest_news_list,
            })
    return HttpResponse(t.render(c))
