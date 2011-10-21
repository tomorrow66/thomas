from django.conf import settings
from django.conf.urls.defaults import patterns, include, url
from django.contrib import admin
from django.views.generic import TemplateView, DetailView, ListView

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'thomas.views.home', name='home'),
    # url(r'^thomas/', include('thomas.foo.urls')),
                       
    url(r'^$', 'news.views.home'),
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^admin/', include(admin.site.urls)),


)

if settings.DEBUG:
    from django.contrib.staticfiles.urls import staticfiles_urlpatterns
    urlpatterns += staticfiles_urlpatterns()
    urlpatterns += patterns('',
        url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {
                    'document_root': settings.MEDIA_ROOT,
        }),
    )
