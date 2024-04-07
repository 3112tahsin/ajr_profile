# Generated by Django 5.0.3 on 2024-03-20 06:49

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ComputerAccessories',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Companies_Name', models.CharField(max_length=127, null=True)),
                ('Companies_address', models.TextField(max_length=255, null=True)),
            ],
            options={
                'verbose_name_plural': 'Computer & Accessories',
            },
        ),
        migrations.CreateModel(
            name='ContactUs',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Office_Name', models.CharField(max_length=127, null=True)),
                ('phone_no', models.CharField(max_length=27, null=True)),
            ],
            options={
                'verbose_name_plural': 'Contact Us',
            },
        ),
        migrations.CreateModel(
            name='CosmeticCompanies',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Companies_Name', models.CharField(max_length=127, null=True)),
                ('Companies_address', models.TextField(max_length=255, null=True)),
            ],
            options={
                'verbose_name_plural': 'Cosmetic Companies',
            },
        ),
        migrations.CreateModel(
            name='FivePage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Our_Vision', models.TextField(max_length=511, null=True)),
                ('vision_image', models.ImageField(default='avatar.svg', null=True, upload_to='')),
                ('Our_mission', models.TextField(max_length=511, null=True)),
                ('mission_image', models.ImageField(default='avatar.svg', null=True, upload_to='')),
                ('Our_team', models.TextField(max_length=511, null=True)),
                ('team_image', models.ImageField(default='avatar.svg', null=True, upload_to='')),
                ('six_page_title', models.CharField(max_length=127, null=True)),
                ('six_page_details', models.TextField(null=True)),
                ('six_page_image', models.ImageField(default='avatar.svg', null=True, upload_to='')),
            ],
            options={
                'verbose_name_plural': 'Five & Six Page',
            },
        ),
        migrations.CreateModel(
            name='FourthPage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('md', models.CharField(max_length=127, null=True)),
                ('director', models.CharField(max_length=127, null=True)),
                ('senior_general_manager', models.CharField(max_length=127, null=True)),
                ('DGM', models.CharField(max_length=127, null=True)),
                ('AGM', models.CharField(max_length=127, null=True)),
                ('Sr_Manager', models.CharField(max_length=127, null=True)),
                ('Manager', models.CharField(max_length=127, null=True)),
                ('Assistant_Manager', models.CharField(max_length=127, null=True)),
                ('Branch_Manager', models.CharField(max_length=127, null=True)),
                ('Labor_Advisor', models.CharField(max_length=127, null=True)),
                ('Tax_Advisor', models.CharField(max_length=127, null=True)),
                ('Vat_Advisor', models.CharField(max_length=127, null=True)),
                ('Legal_Advisor', models.CharField(max_length=127, null=True)),
                ('General_Manager', models.CharField(max_length=127, null=True)),
                ('Manager_site', models.CharField(max_length=127, null=True)),
            ],
            options={
                'verbose_name_plural': 'Fourth Page',
            },
        ),
        migrations.CreateModel(
            name='GeneralParcelCompanies',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Companies_Name', models.CharField(max_length=127, null=True)),
                ('Companies_address', models.TextField(max_length=255, null=True)),
            ],
            options={
                'verbose_name_plural': 'General Parcel Companies',
            },
        ),
        migrations.CreateModel(
            name='GroupCompanies',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Companies_Name', models.CharField(max_length=127, null=True)),
                ('Companies_address', models.TextField(max_length=255, null=True)),
            ],
            options={
                'verbose_name_plural': 'Group Of Companies',
            },
        ),
        migrations.CreateModel(
            name='HeadOffice',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Head_Office_Name', models.CharField(max_length=255, null=True)),
                ('Head_phone_no', models.CharField(max_length=27, null=True)),
                ('site_image', models.ImageField(default='avatar.svg', null=True, upload_to='')),
                ('Transport_Office', models.CharField(max_length=255, null=True)),
                ('transport_phone_no', models.CharField(max_length=27, null=True)),
                ('hot_line', models.CharField(max_length=27, null=True)),
                ('Specification_image', models.ImageField(default='avatar.svg', null=True, upload_to='')),
                ('thanks_image', models.ImageField(default='avatar.svg', null=True, upload_to='')),
            ],
            options={
                'verbose_name_plural': 'Head & Transport Office',
            },
        ),
        migrations.CreateModel(
            name='Kg1000Vehiele',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Vehicle_Number', models.CharField(max_length=127, null=True)),
                ('Brand_Name', models.CharField(max_length=127, null=True)),
                ('Laden_Weight', models.CharField(max_length=127, null=True)),
                ('Type_Body', models.CharField(max_length=127, null=True)),
            ],
            options={
                'verbose_name_plural': '1000 KG Vehiele',
            },
        ),
        migrations.CreateModel(
            name='Kg1500Vehiele',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Vehicle_Number', models.CharField(max_length=127, null=True)),
                ('Brand_Name', models.CharField(max_length=127, null=True)),
                ('Laden_Weight', models.CharField(max_length=127, null=True)),
                ('Type_Body', models.CharField(max_length=127, null=True)),
            ],
            options={
                'verbose_name_plural': '1500 KG Vehiele',
            },
        ),
        migrations.CreateModel(
            name='Kg3000Vehiele',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Vehicle_Number', models.CharField(max_length=127, null=True)),
                ('Brand_Name', models.CharField(max_length=127, null=True)),
                ('Laden_Weight', models.CharField(max_length=127, null=True)),
                ('Type_Body', models.CharField(max_length=127, null=True)),
            ],
            options={
                'verbose_name_plural': '3000 KG Vehiele',
            },
        ),
        migrations.CreateModel(
            name='Kg7000Vehiele',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Vehicle_Number', models.CharField(max_length=127, null=True)),
                ('Brand_Name', models.CharField(max_length=127, null=True)),
                ('Laden_Weight', models.CharField(max_length=127, null=True)),
                ('Type_Body', models.CharField(max_length=127, null=True)),
            ],
            options={
                'verbose_name_plural': '7000 KG Vehiele',
            },
        ),
        migrations.CreateModel(
            name='MedicineBuyers',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Medicine_Buyers_Name', models.CharField(max_length=127, null=True)),
                ('Medicine_Buyers_address', models.TextField(max_length=255, null=True)),
            ],
            options={
                'verbose_name_plural': 'Medicine Buyers',
            },
        ),
        migrations.CreateModel(
            name='MobileBuyers',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Mobile_Buyers_Name', models.CharField(max_length=127, null=True)),
                ('Mobile_Buyers_address', models.TextField(max_length=255, null=True)),
            ],
            options={
                'verbose_name_plural': 'Mobile Buyers',
            },
        ),
        migrations.CreateModel(
            name='OfficeAddress',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Division', models.CharField(max_length=127, null=True)),
                ('Office_Name', models.CharField(max_length=127, null=True)),
                ('Office_Address', models.TextField(null=True)),
                ('Number1', models.CharField(max_length=15, null=True)),
                ('Number2', models.CharField(max_length=15, null=True)),
                ('showing_order', models.PositiveIntegerField(null=True)),
            ],
            options={
                'verbose_name_plural': 'All Office Address',
            },
        ),
        migrations.CreateModel(
            name='ProbihitedRestricted',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Probihited_Name', models.CharField(max_length=127, null=True)),
                ('Restricted_Name', models.CharField(max_length=127, null=True)),
            ],
            options={
                'verbose_name_plural': 'Probihited & Restricted Commodities',
            },
        ),
        migrations.CreateModel(
            name='SecoundPage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('overview_details', models.TextField(null=True)),
                ('overview_details2', models.TextField(max_length=1100, null=True)),
                ('company_overview_details3', models.TextField(max_length=1100, null=True)),
                ('overview_image', models.ImageField(default='avatar.svg', null=True, upload_to='')),
                ('overview_site_image', models.ImageField(default='avatar.svg', null=True, upload_to='')),
                ('first_page_image', models.ImageField(default='avatar.svg', null=True, upload_to='')),
                ('md_name', models.CharField(max_length=63, null=True)),
                ('md_message', models.TextField(null=True)),
            ],
            options={
                'verbose_name_plural': 'Secound & Third Page',
            },
        ),
        migrations.CreateModel(
            name='ShoesCompanies',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Companies_Name', models.CharField(max_length=127, null=True)),
                ('Companies_address', models.TextField(max_length=255, null=True)),
            ],
            options={
                'verbose_name_plural': 'Shoes Companies',
            },
        ),
        migrations.CreateModel(
            name='SixPage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Delivery_Point_Name', models.CharField(max_length=127, null=True)),
                ('Point_details', models.TextField(max_length=255, null=True)),
            ],
            options={
                'verbose_name_plural': 'Six Page Delivery Point',
            },
        ),
        migrations.CreateModel(
            name='SpecificationServices',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Domestic_Letters_name', models.CharField(max_length=127, null=True)),
                ('Domestic_Letters_values', models.CharField(max_length=255, null=True)),
                ('International_Letters_name', models.CharField(max_length=127, null=True)),
                ('International_Letters_values', models.CharField(max_length=255, null=True)),
                ('Domestic_Documents_name', models.CharField(max_length=127, null=True)),
                ('Domestic_Documents_values', models.CharField(max_length=255, null=True)),
                ('Domestic_Parcel_name', models.CharField(max_length=127, null=True)),
                ('Domestic_Parcel_values', models.CharField(max_length=255, null=True)),
                ('International_Documents_name', models.CharField(max_length=127, null=True)),
                ('International_Documents_values', models.CharField(max_length=255, null=True)),
                ('International_Parcel_name', models.CharField(max_length=127, null=True)),
                ('International_Parcel_values', models.CharField(max_length=255, null=True)),
            ],
            options={
                'verbose_name_plural': 'Specification Our Services',
            },
        ),
    ]