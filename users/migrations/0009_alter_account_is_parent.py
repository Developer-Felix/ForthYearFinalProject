# Generated by Django 3.2.8 on 2022-05-25 17:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0008_account_avatar'),
    ]

    operations = [
        migrations.AlterField(
            model_name='account',
            name='is_parent',
            field=models.BooleanField(default=True),
        ),
    ]
