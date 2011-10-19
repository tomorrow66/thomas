from django.db import models

class News(models.Model):
    title = models.CharField("News Title", max_length=100)
    article = models.TextField("News Article")
    pub_date = models.DateTimeField("Date Published")
