from django.http import HttpResponse
from django.shortcuts import render

from base.models import ComputerAccessories, ContactUs, CosmeticCompanies, FivePage, FourthPage, GeneralParcelCompanies, GroupCompanies, HeadOffice, Kg1000Vehiele, Kg1500Vehiele, Kg3000Vehiele, Kg7000Vehiele, MedicineBuyers, MobileBuyers, OfficeAddress, ProbihitedRestricted, SecoundPage, ShoesCompanies, SixPage, SpecificationServices


# Create your views here...
def home(request):
    Secound_Page = SecoundPage.objects.all().order_by('-id')[:1]
    Fourth_Page = FourthPage.objects.all().order_by('-id')[:1]
    Five_Page = FivePage.objects.all().order_by('-id')[:1]
    Six_Page = SixPage.objects.all().order_by('id')[:10]
    Mobile_Buyers = MobileBuyers.objects.all().order_by('id')
    Medicine_Buyers = MedicineBuyers.objects.all().order_by('id')
    Group_Companies = GroupCompanies.objects.all().order_by('id')
    Shoes_Companies = ShoesCompanies.objects.all().order_by('id')
    Computer_Accessories = ComputerAccessories.objects.all().order_by('id')
    Cosmetic_Companies = CosmeticCompanies.objects.all().order_by('id')
    Parcel_Companies = GeneralParcelCompanies.objects.all().order_by('id')
    Contact_Us = ContactUs.objects.all().order_by('id')
    Head_Office = HeadOffice.objects.all().order_by('-id')[:1]
    Probihited_Admin = ProbihitedRestricted.objects.all().order_by('id')
    Specification_Services = SpecificationServices.objects.all().order_by('id')
    Kg1000_Vehiele = Kg1000Vehiele.objects.all().order_by('id')
    Kg1500_Vehiele = Kg1500Vehiele.objects.all().order_by('id')
    Kg3000_Vehiele = Kg3000Vehiele.objects.all().order_by('id')
    Kg7000_Vehiele = Kg7000Vehiele.objects.all().order_by('id')
    Office_Address = OfficeAddress.objects.all().order_by('showing_order')

    offices = OfficeAddress.objects.all().order_by('showing_order')
    num_offices = len(offices)
    num_sections = (num_offices // 32) + 1  # Calculate number of sections needed

    sections_data = []
    for i in range(num_sections):
        start_index = i * 32
        end_index = min((i + 1) * 32, num_offices)
        section_offices = offices[start_index:end_index]
        sections_data.append(section_offices)


    vehicles_7000kg = Kg7000Vehiele.objects.all().order_by('id')
    num_vehicles_7000kg = len(vehicles_7000kg)
    num_sections_7000kg = (num_vehicles_7000kg // 45) + 1  # Calculate number of sections needed

    sections_datav = []
    for i in range(num_sections_7000kg):
        start_index = i * 45
        end_index = min((i + 1) * 45, num_vehicles_7000kg)
        section_vehicles = vehicles_7000kg[start_index:end_index]
        sections_datav.append(section_vehicles)


    vehicles_3000kg = Kg3000Vehiele.objects.all().order_by('id')
    num_vehicles_3000kg = len(vehicles_3000kg)
    num_sections_3000kg = (num_vehicles_3000kg // 45) + 1  # Calculate number of sections needed

    sections_datac = []
    for i in range(num_sections_3000kg):
        start_index = i * 45
        end_index = min((i + 1) * 45, num_vehicles_3000kg)
        section_vehicles = vehicles_3000kg[start_index:end_index]
        sections_datac.append(section_vehicles)


    vehicles_1500kg = Kg1500Vehiele.objects.all().order_by('id')
    num_vehicles_1500kg = len(vehicles_1500kg)
    num_sections_1500kg = (num_vehicles_1500kg // 45) + 1  # Calculate number of sections needed

    sections_datal = []
    for i in range(num_sections_1500kg):
        start_index = i * 45
        end_index = min((i + 1) * 45, num_vehicles_1500kg)
        section_vehicles = vehicles_1500kg[start_index:end_index]
        sections_datal.append(section_vehicles)
    

    context = {
        'sections_data': sections_data,
        'sections_datav': sections_datav,
        'sections_datac': sections_datac,
        'sections_datal': sections_datal,
        'Secound_Page': Secound_Page,
        'Fourth_Page': Fourth_Page,
        'Five_Page': Five_Page,
        'Six_Page': Six_Page,
        'Mobile_Buyers': Mobile_Buyers,
        'Medicine_Buyers': Medicine_Buyers,
        'Group_Companies': Group_Companies,
        'Shoes_Companies': Shoes_Companies,
        'Computer_Accessories': Computer_Accessories,
        'Cosmetic_Companies': Cosmetic_Companies,
        'Parcel_Companies': Parcel_Companies,
        'Contact_Us': Contact_Us,
        'Head_Office': Head_Office,
        'Probihited_Admin': Probihited_Admin,
        'Specification_Services': Specification_Services,
        'Kg1000_Vehiele': Kg1000_Vehiele,
        'Kg1500_Vehiele': Kg1500_Vehiele,
        'Kg3000_Vehiele': Kg3000_Vehiele,
        'Kg7000_Vehiele': Kg7000_Vehiele,
        'Office_Address': Office_Address,
    }
    return render(request, 'base/home.html', context)


# Custom 404 view
def custom_404(request, exception):
    return render(request, 'base/404.html', status=404)


