# Generated by Django 3.2.8 on 2022-05-23 08:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0005_auto_20220523_0112'),
    ]

    operations = [
        migrations.AddField(
            model_name='account',
            name='email',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]
