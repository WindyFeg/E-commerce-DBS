# Generated by Django 4.1.3 on 2022-12-07 16:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('test_test', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='get_best_seller_item',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('total_selling', models.IntegerField()),
            ],
        ),
    ]
