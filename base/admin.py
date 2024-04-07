from django.contrib import admin
from django.utils.html import format_html
from base.models import ComputerAccessories, ContactUs, CosmeticCompanies, FivePage, FourthPage, GeneralParcelCompanies, GroupCompanies, HeadOffice, Kg1000Vehiele, Kg1500Vehiele, Kg3000Vehiele, Kg7000Vehiele, MedicineBuyers, MobileBuyers, OfficeAddress, ProbihitedRestricted, SecoundPage, ShoesCompanies, SixPage, SpecificationServices

# Register your models here.
admin.site.site_header  =  "AjrGroupBd"  
admin.site.site_title  =  "AjrGroupBd"
admin.site.index_title  =  "Welcome to AjrGroupBd Admin"

class SecondAdmin(admin.ModelAdmin):
    list_filter = ('overview_details2',)
    list_display_links = ('overview_details2',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'overview_details', 'overview_details2', 'overview_image_display', 'overview_site_image_display')

    def overview_image_display(self, obj):
        if obj.overview_image:
            return format_html('<img src="{}" style="max-height: 100px; max-width: 100px;" />', obj.overview_image.url)
        else:
            return "No Image"

    overview_image_display.short_description = 'Overview Image'

    def overview_site_image_display(self, obj):
        if obj.overview_site_image:
            return format_html('<img src="{}" style="max-height: 100px; max-width: 100px;" />', obj.overview_site_image.url)
        else:
            return "No Site Image"

    overview_site_image_display.short_description = 'Overview Site Image'

admin.site.register(SecoundPage, SecondAdmin)

class FourthPageAdmin(admin.ModelAdmin):
    list_filter = ('md',)
    list_display_links = ('md',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'md', 'director','senior_general_manager')

admin.site.register(FourthPage, FourthPageAdmin)

class FivePageAdmin(admin.ModelAdmin):
    list_display_links = ('Our_Vision',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Our_Vision', 'vision_image_display', 'Our_mission', 'mission_image_display', 'team_image_display')

    def vision_image_display(self, obj):
        if obj.vision_image:
            return format_html('<img src="{}" style="max-height: 100px; max-width: 100px;" />', obj.vision_image.url)
        else:
            return "No Image"

    vision_image_display.short_description = 'Vision Image'

    def mission_image_display(self, obj):
        if obj.mission_image:
            return format_html('<img src="{}" style="max-height: 100px; max-width: 100px;" />', obj.mission_image.url)
        else:
            return "No Image"

    mission_image_display.short_description = 'Mission Image'

    def team_image_display(self, obj):
        if obj.team_image:
            return format_html('<img src="{}" style="max-height: 100px; max-width: 100px;" />', obj.team_image.url)
        else:
            return "No Image"

    team_image_display.short_description = 'Team Image'

admin.site.register(FivePage, FivePageAdmin)

class SixPageAdmin(admin.ModelAdmin):
    list_display_links = ('Delivery_Point_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Delivery_Point_Name', 'Point_details')

admin.site.register(SixPage, SixPageAdmin)

class mobileAdmin(admin.ModelAdmin):
    list_filter = ('Mobile_Buyers_Name',)
    list_display_links = ('Mobile_Buyers_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Mobile_Buyers_Name', 'Mobile_Buyers_address')

admin.site.register(MobileBuyers, mobileAdmin)

class medicineAdmin(admin.ModelAdmin):
    list_filter = ('Medicine_Buyers_Name',)
    list_display_links = ('Medicine_Buyers_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Medicine_Buyers_Name', 'Medicine_Buyers_address')

admin.site.register(MedicineBuyers, medicineAdmin)

class CompaniesAdmin(admin.ModelAdmin):
    list_filter = ('Companies_Name',)
    list_display_links = ('Companies_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Companies_Name', 'Companies_address')

admin.site.register(GroupCompanies, CompaniesAdmin)

class ShoesAdmin(admin.ModelAdmin):
    list_filter = ('Companies_Name',)
    list_display_links = ('Companies_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Companies_Name', 'Companies_address')

admin.site.register(ShoesCompanies, ShoesAdmin)

class ComputerAdmin(admin.ModelAdmin):
    list_filter = ('Companies_Name',)
    list_display_links = ('Companies_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Companies_Name', 'Companies_address')

admin.site.register(ComputerAccessories, ComputerAdmin)

class CosAdmin(admin.ModelAdmin):
    list_filter = ('Companies_Name',)
    list_display_links = ('Companies_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Companies_Name', 'Companies_address')

admin.site.register(CosmeticCompanies, CosAdmin)

class GeneralAdmin(admin.ModelAdmin):
    list_filter = ('Companies_Name',)
    list_display_links = ('Companies_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Companies_Name', 'Companies_address')

admin.site.register(GeneralParcelCompanies, GeneralAdmin)

class contactAdmin(admin.ModelAdmin):
    list_filter = ('Office_Name',)
    list_display_links = ('Office_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Office_Name', 'phone_no')

admin.site.register(ContactUs, contactAdmin)

class ContactboAdmin(admin.ModelAdmin):
    list_filter = ('Head_Office_Name',)
    list_display_links = ('Head_Office_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Head_Office_Name', 'Head_phone_no', 'site_image_display')

    def site_image_display(self, obj):
        if obj.site_image:
            return format_html('<img src="{}" style="max-height: 100px; max-width: 100px;" />', obj.site_image.url)
        else:
            return "No Image"

    site_image_display.short_description = 'Site Image'

admin.site.register(HeadOffice, ContactboAdmin)

class ProbihitedAdmin(admin.ModelAdmin):
    list_filter = ('Probihited_Name',)
    list_display_links = ('Probihited_Name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Probihited_Name', 'Restricted_Name')

admin.site.register(ProbihitedRestricted, ProbihitedAdmin)

class SpecificationServicesAdmin(admin.ModelAdmin):
    list_filter = ('Domestic_Letters_name',)
    list_display_links = ('Domestic_Letters_name',)
    list_per_page = 10
    ordering = ('id',)
    list_display=('id', 'Domestic_Letters_name', 'Domestic_Letters_values')

admin.site.register(SpecificationServices, SpecificationServicesAdmin)

class Kg1000VehieleAdmin(admin.ModelAdmin):
    search_fields = ('Vehicle_Number', 'Brand_Name','Laden_Weight')
    list_display_links = ('Vehicle_Number',)
    list_per_page = 15
    ordering = ('id',)
    list_display=('id', 'Vehicle_Number', 'Brand_Name','Laden_Weight','Type_Body')

admin.site.register(Kg1000Vehiele, Kg1000VehieleAdmin)

class Kg1500VehieleAdmin(admin.ModelAdmin):
    search_fields = ('Vehicle_Number', 'Brand_Name','Laden_Weight')
    list_display_links = ('Vehicle_Number',)
    list_per_page = 15
    ordering = ('id',)
    list_display=('id', 'Vehicle_Number', 'Brand_Name','Laden_Weight','Type_Body')

admin.site.register(Kg1500Vehiele, Kg1500VehieleAdmin)

class Kg3000VehieleAdmin(admin.ModelAdmin):
    search_fields = ('Vehicle_Number', 'Brand_Name','Laden_Weight')
    list_display_links = ('Vehicle_Number',)
    list_per_page = 15
    ordering = ('id',)
    list_display=('id', 'Vehicle_Number', 'Brand_Name','Laden_Weight','Type_Body')

admin.site.register(Kg3000Vehiele, Kg3000VehieleAdmin)

class Kg7000VehieleAdmin(admin.ModelAdmin):
    list_display_links = ('Vehicle_Number',)
    search_fields = ('Vehicle_Number', 'Brand_Name','Laden_Weight')
    list_per_page = 15
    ordering = ('id',)
    list_display=('id', 'Vehicle_Number', 'Brand_Name','Laden_Weight','Type_Body')

admin.site.register(Kg7000Vehiele, Kg7000VehieleAdmin)

class AddressAdmin(admin.ModelAdmin):
    list_display_links = ('Division',)
    search_fields = ('Division', 'Office_Name','Number1','Number2')
    list_per_page = 15
    ordering = ('id',)
    list_display=('id', 'Division', 'Office_Name','Office_Address','Number1','Number2','showing_order')

admin.site.register(OfficeAddress, AddressAdmin)





