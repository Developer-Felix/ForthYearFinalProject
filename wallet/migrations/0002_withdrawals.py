# Generated by Django 3.2.8 on 2022-06-19 08:59

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('wallet', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='WithDrawals',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ammount', models.IntegerField(default=0)),
                ('status', models.PositiveSmallIntegerField(blank=True, choices=[(1, 'Pending'), (2, 'Approved'), (3, 'Rejected'), (4, None)], default=1, null=True)),
                ('reason', models.CharField(blank=True, max_length=255, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
