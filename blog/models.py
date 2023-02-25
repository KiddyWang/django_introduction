from django.db import models

# Create your models here.

class Article(models.Model):
    # ID
    article_id = models.AutoField(primary_key=True)
    # title
    title = models.TextField()
    # digest
    brief_content = models.TextField()
    # content
    content = models.TextField()
    # publised date
    publish_date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

