from django.db import models

# Create your models here.
class SecoundPage(models.Model):
    overview_details = models.TextField(null=True)
    overview_details2 = models.TextField(null=True,max_length=1100)
    company_overview_details3 = models.TextField(null=True,max_length=1100)
    overview_image = models.ImageField(null=True, default="avatar.svg")
    overview_site_image = models.ImageField(null=True, default="avatar.svg")
    first_page_image = models.ImageField(null=True, default="avatar.svg")
    md_name = models.CharField(null=True, max_length=63)
    md_message = models.TextField(null=True)

    def __str__(self):
        return self.company_overview_details3
    class Meta:
        verbose_name_plural = "Secound & Third Page"


class FourthPage(models.Model):
    md = models.CharField(null=True, max_length=127)
    director = models.CharField(null=True, max_length=127)
    senior_general_manager = models.CharField(null=True, max_length=127)
    DGM = models.CharField(null=True, max_length=127)
    AGM = models.CharField(null=True, max_length=127)
    Sr_Manager = models.CharField(null=True, max_length=127)
    Manager = models.CharField(null=True, max_length=127)
    Assistant_Manager = models.CharField(null=True, max_length=127)
    Branch_Manager = models.CharField(null=True, max_length=127)
    Labor_Advisor = models.CharField(null=True, max_length=127)
    Tax_Advisor = models.CharField(null=True, max_length=127)
    Vat_Advisor = models.CharField(null=True, max_length=127)
    Legal_Advisor = models.CharField(null=True, max_length=127)
    General_Manager = models.CharField(null=True, max_length=127)
    Manager_site = models.CharField(null=True, max_length=127)

    def __str__(self):
        return self.md
    class Meta:
        verbose_name_plural = "Fourth Page"


class FivePage(models.Model):
    Our_Vision = models.TextField(null=True, max_length=511)
    vision_image = models.ImageField(null=True, default="avatar.svg")
    Our_mission = models.TextField(null=True, max_length=511)
    mission_image = models.ImageField(null=True, default="avatar.svg")
    Our_team = models.TextField(null=True, max_length=511)
    team_image = models.ImageField(null=True, default="avatar.svg")
    six_page_title = models.CharField(null=True, max_length=127)
    six_page_details = models.TextField(null=True)
    six_page_image = models.ImageField(null=True, default="avatar.svg")
   
    def __str__(self):
        return self.Our_Vision
    class Meta:
        verbose_name_plural = "Five & Six Page"

class SixPage(models.Model):
    Delivery_Point_Name = models.CharField(null=True, max_length=127)
    Point_details = models.TextField(null=True, max_length=255)
   
   
    def __str__(self):
        return self.Delivery_Point_Name
    class Meta:
        verbose_name_plural = "Six Page Delivery Point"

class MobileBuyers(models.Model):
    Mobile_Buyers_Name = models.CharField(null=True, max_length=127)
    Mobile_Buyers_address = models.TextField(null=True, max_length=255)
   
   
    def __str__(self):
        return self.Mobile_Buyers_Name
    class Meta:
        verbose_name_plural = "Mobile Buyers"

class MedicineBuyers(models.Model):
    Medicine_Buyers_Name = models.CharField(null=True, max_length=127)
    Medicine_Buyers_address = models.TextField(null=True, max_length=255)
   
   
    def __str__(self):
        return self.Medicine_Buyers_Name
    class Meta:
        verbose_name_plural = "Medicine Buyers"

class GroupCompanies(models.Model):
    Companies_Name = models.CharField(null=True, max_length=127)
    Companies_address = models.TextField(null=True, max_length=255)
   
   
    def __str__(self):
        return self.Companies_Name
    class Meta:
        verbose_name_plural = "Group Of Companies"

class ShoesCompanies(models.Model):
    Companies_Name = models.CharField(null=True, max_length=127)
    Companies_address = models.TextField(null=True, max_length=255)
   
   
    def __str__(self):
        return self.Companies_Name
    class Meta:
        verbose_name_plural = "Shoes Companies"

class ComputerAccessories(models.Model):
    Companies_Name = models.CharField(null=True, max_length=127)
    Companies_address = models.TextField(null=True, max_length=255)
   
   
    def __str__(self):
        return self.Companies_Name
    class Meta:
        verbose_name_plural = "Computer & Accessories"

class CosmeticCompanies(models.Model):
    Companies_Name = models.CharField(null=True, max_length=127)
    Companies_address = models.TextField(null=True, max_length=255)
   
   
    def __str__(self):
        return self.Companies_Name
    class Meta:
        verbose_name_plural = "Cosmetic Companies"

class GeneralParcelCompanies(models.Model):
    Companies_Name = models.CharField(null=True, max_length=127)
    Companies_address = models.TextField(null=True, max_length=255)
   
   
    def __str__(self):
        return self.Companies_Name
    class Meta:
        verbose_name_plural = "General Parcel Companies"


class ContactUs(models.Model):
    Office_Name = models.CharField(null=True, max_length=127)
    phone_no = models.CharField(null=True, max_length=27)
   
   
    def __str__(self):
        return self.Office_Name
    class Meta:
        verbose_name_plural = "Contact Us"

class HeadOffice(models.Model):
    Head_Office_Name = models.CharField(null=True, max_length=255)
    Head_phone_no = models.CharField(null=True, max_length=27)
    site_image = models.ImageField(null=True, default="avatar.svg")
    Transport_Office = models.CharField(null=True, max_length=255)
    transport_phone_no = models.CharField(null=True, max_length=27)
    hot_line = models.CharField(null=True, max_length=27)
    Specification_image = models.ImageField(null=True, default="avatar.svg")
    thanks_image = models.ImageField(null=True, default="avatar.svg")
   
   
    def __str__(self):
        return self.Head_Office_Name
    class Meta:
        verbose_name_plural = "Head & Transport Office"


class ProbihitedRestricted(models.Model):
    Probihited_Name = models.CharField(null=True, max_length=127)
    Restricted_Name = models.CharField(null=True, max_length=127)
   
    def __str__(self):
        return self.Probihited_Name
    class Meta:
        verbose_name_plural = "Probihited & Restricted Commodities"

class SpecificationServices(models.Model):
    Domestic_Letters_name = models.CharField(null=True, max_length=127)
    Domestic_Letters_values = models.CharField(null=True, max_length=255)
    International_Letters_name = models.CharField(null=True, max_length=127)
    International_Letters_values = models.CharField(null=True, max_length=255)
    Domestic_Documents_name = models.CharField(null=True, max_length=127)
    Domestic_Documents_values = models.CharField(null=True, max_length=255)
    Domestic_Parcel_name = models.CharField(null=True, max_length=127)
    Domestic_Parcel_values = models.CharField(null=True, max_length=255)
    International_Documents_name = models.CharField(null=True, max_length=127)
    International_Documents_values = models.CharField(null=True, max_length=255)
    International_Parcel_name = models.CharField(null=True, max_length=127)
    International_Parcel_values = models.CharField(null=True, max_length=255)
   
    def __str__(self):
        return self.Domestic_Letters_name
    class Meta:
        verbose_name_plural = "Specification Our Services"


class Kg1000Vehiele(models.Model):
    Vehicle_Number = models.CharField(null=True, max_length=127)
    Brand_Name = models.CharField(null=True, max_length=127)
    Laden_Weight = models.CharField(null=True, max_length=127)
    Type_Body = models.CharField(null=True, max_length=127)
   
    def __str__(self):
        return self.Vehicle_Number
    class Meta:
        verbose_name_plural = "1000 KG Vehiele"

class Kg1500Vehiele(models.Model):
    Vehicle_Number = models.CharField(null=True, max_length=127)
    Brand_Name = models.CharField(null=True, max_length=127)
    Laden_Weight = models.CharField(null=True, max_length=127)
    Type_Body = models.CharField(null=True, max_length=127)
   
    def __str__(self):
        return self.Vehicle_Number
    class Meta:
        verbose_name_plural = "1500 KG Vehiele"


class Kg3000Vehiele(models.Model):
    Vehicle_Number = models.CharField(null=True, max_length=127)
    Brand_Name = models.CharField(null=True, max_length=127)
    Laden_Weight = models.CharField(null=True, max_length=127)
    Type_Body = models.CharField(null=True, max_length=127)
   
    def __str__(self):
        return self.Vehicle_Number
    class Meta:
        verbose_name_plural = "3000 KG Vehiele"

class Kg7000Vehiele(models.Model):
    Vehicle_Number = models.CharField(null=True, max_length=127)
    Brand_Name = models.CharField(null=True, max_length=127)
    Laden_Weight = models.CharField(null=True, max_length=127)
    Type_Body = models.CharField(null=True, max_length=127)
   
    def __str__(self):
        return self.Vehicle_Number
    class Meta:
        verbose_name_plural = "7000 KG Vehiele"

class OfficeAddress(models.Model):
    Division = models.CharField(null=True, max_length=127)
    Office_Name = models.CharField(null=True, max_length=127)
    Office_Address = models.TextField(null=True)
    Number1 = models.CharField(null=True, max_length=15)
    Number2 = models.CharField(null=True, max_length=15)
    showing_order = models.PositiveIntegerField(null=True)
   
    def __str__(self):
        return self.Division
    class Meta:
        verbose_name_plural = "All Office Address"







