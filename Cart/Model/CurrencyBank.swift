//
//  CurrencyBank.swift
//  Cart
//
//  Created by Jan Moravek on 22/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import Foundation

class CurrencyBank {
    
    var listOfCurrency = [CurrencyLabel] ()
    
    init() {
        listOfCurrency.append(CurrencyLabel(ticker: "AED", name: "United Arab Emirates Dirham"))
        listOfCurrency.append(CurrencyLabel(ticker: "AFN", name: "Afghan Afghani"))
        listOfCurrency.append(CurrencyLabel(ticker: "ALL", name: "Albanian Lek"))
        listOfCurrency.append(CurrencyLabel(ticker: "AMD", name: "Armenian Dram"))
        listOfCurrency.append(CurrencyLabel(ticker: "ANG", name: "Netherlands Antillean Guilder"))
        listOfCurrency.append(CurrencyLabel(ticker: "AOA", name: "Angolan Kwanza"))
        listOfCurrency.append(CurrencyLabel(ticker: "ARS", name: "Argentine Peso"))
        listOfCurrency.append(CurrencyLabel(ticker: "AUD", name: "Australian Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "AWG", name: "Aruban Florin"))
        listOfCurrency.append(CurrencyLabel(ticker: "AZN", name: "Azerbaijani Manat"))
        listOfCurrency.append(CurrencyLabel(ticker: "BAM", name: "Bosnia-Herzegovina Convertible Mark"))
        listOfCurrency.append(CurrencyLabel(ticker: "BBD", name: "Barbadian Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "BDT", name: "Bangladeshi Taka"))
        listOfCurrency.append(CurrencyLabel(ticker: "BGN", name: "Bulgarian Lev"))
        listOfCurrency.append(CurrencyLabel(ticker: "BHD", name: "Bahraini Dinar"))
        listOfCurrency.append(CurrencyLabel(ticker: "BIF", name: "Burundian Franc"))
        listOfCurrency.append(CurrencyLabel(ticker: "BMD", name: "Bermudan Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "BND", name: "Brunei Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "BOB", name: "Bolivian Boliviano"))
        listOfCurrency.append(CurrencyLabel(ticker: "BRL", name: "Brazilian Real"))
        listOfCurrency.append(CurrencyLabel(ticker: "BSD", name: "Bahamian Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "BTC", name: "Bitcoin"))
        listOfCurrency.append(CurrencyLabel(ticker: "BTN", name: "Bhutanese Ngultrum"))
        listOfCurrency.append(CurrencyLabel(ticker: "BWP", name: "Botswanan Pula"))
        listOfCurrency.append(CurrencyLabel(ticker: "BYR", name: "Belarusian Ruble"))
        listOfCurrency.append(CurrencyLabel(ticker: "BZD", name: "Belize Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "CAD", name: "Canadian Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "CDF", name: "Congolese Franc"))
        listOfCurrency.append(CurrencyLabel(ticker: "CHF", name: "Swiss Franc"))
        listOfCurrency.append(CurrencyLabel(ticker: "CLF", name: "Chilean Unit of Account (UF)"))
        listOfCurrency.append(CurrencyLabel(ticker: "CLP", name: "Chilean Peso"))
        listOfCurrency.append(CurrencyLabel(ticker: "CNY", name: "Chinese Yuan"))
        listOfCurrency.append(CurrencyLabel(ticker: "COP", name: "Colombian Peso"))
        listOfCurrency.append(CurrencyLabel(ticker: "CRC", name: "Costa Rican Colón"))
        listOfCurrency.append(CurrencyLabel(ticker: "CUC", name: "Cuban Convertible Peso"))
        listOfCurrency.append(CurrencyLabel(ticker: "CUP", name: "Cuban Peso"))
        listOfCurrency.append(CurrencyLabel(ticker: "CVE", name: "Cape Verdean Escudo"))
        listOfCurrency.append(CurrencyLabel(ticker: "CZK", name: "Czech Republic Koruna"))
        listOfCurrency.append(CurrencyLabel(ticker: "DJF", name: "Djiboutian Franc"))
        listOfCurrency.append(CurrencyLabel(ticker: "DKK", name: "Danish Krone"))
        listOfCurrency.append(CurrencyLabel(ticker: "DOP", name: "Dominican Peso"))
        listOfCurrency.append(CurrencyLabel(ticker: "DZD", name: "Algerian Dinar"))
        listOfCurrency.append(CurrencyLabel(ticker: "EGP", name: "Egyptian Pound"))
        listOfCurrency.append(CurrencyLabel(ticker: "ERN", name: "Eritrean Nakfa"))
        listOfCurrency.append(CurrencyLabel(ticker: "ETB", name: "Ethiopian Birr"))
        listOfCurrency.append(CurrencyLabel(ticker: "EUR", name: "Euro"))
        listOfCurrency.append(CurrencyLabel(ticker: "FJD", name: "Fijian Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "FKP", name: "Falkland Islands Pound"))
        listOfCurrency.append(CurrencyLabel(ticker: "GBP", name: "British Pound Sterling"))
        listOfCurrency.append(CurrencyLabel(ticker: "GEL", name: "Georgian Lari"))
        listOfCurrency.append(CurrencyLabel(ticker: "GGP", name: "Guernsey Pound"))
        listOfCurrency.append(CurrencyLabel(ticker: "GHS", name: "Ghanaian Cedi"))
        listOfCurrency.append(CurrencyLabel(ticker: "GIP", name: "Gibraltar Pound"))
        listOfCurrency.append(CurrencyLabel(ticker: "GMD", name: "Gambian Dalasi"))
        listOfCurrency.append(CurrencyLabel(ticker: "GNF", name: "Guinean Franc"))
        listOfCurrency.append(CurrencyLabel(ticker: "GTQ", name: "Guatemalan Quetzal"))
        listOfCurrency.append(CurrencyLabel(ticker: "GYD", name: "Guyanaese Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "HKD", name: "Hong Kong Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "HNL", name: "Honduran Lempira"))
        listOfCurrency.append(CurrencyLabel(ticker: "HRK", name: "Croatian Kuna"))
        listOfCurrency.append(CurrencyLabel(ticker: "HTG", name: "Haitian Gourde"))
        listOfCurrency.append(CurrencyLabel(ticker: "HUF", name: "Hungarian Forint"))
        listOfCurrency.append(CurrencyLabel(ticker: "IDR", name: "Indonesian Rupiah"))
        listOfCurrency.append(CurrencyLabel(ticker: "ILS", name: "Israeli New Sheqel"))
        listOfCurrency.append(CurrencyLabel(ticker: "IMP", name: "Manx pound"))
        listOfCurrency.append(CurrencyLabel(ticker: "INR", name: "Indian Rupee"))
        listOfCurrency.append(CurrencyLabel(ticker: "IQD", name: "Iraqi Dinar"))
        listOfCurrency.append(CurrencyLabel(ticker: "IRR", name: "Iranian Rial"))
        listOfCurrency.append(CurrencyLabel(ticker: "ISK", name: "Icelandic Króna"))
        listOfCurrency.append(CurrencyLabel(ticker: "JEP", name: "Jersey Pound"))
        listOfCurrency.append(CurrencyLabel(ticker: "JMD", name: "Jamaican Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "JOD", name: "Jordanian Dinar"))
        listOfCurrency.append(CurrencyLabel(ticker: "JPY", name: "Japanese Yen"))
        listOfCurrency.append(CurrencyLabel(ticker: "KES", name: "Kenyan Shilling"))
        listOfCurrency.append(CurrencyLabel(ticker: "KGS", name: "Kyrgystani Som"))
        listOfCurrency.append(CurrencyLabel(ticker: "KHR", name: "Cambodian Riel"))
        listOfCurrency.append(CurrencyLabel(ticker: "KMF", name: "Comorian Franc"))
        listOfCurrency.append(CurrencyLabel(ticker: "KPW", name: "North Korean Won"))
        listOfCurrency.append(CurrencyLabel(ticker: "KRW", name: "South Korean Won"))
        listOfCurrency.append(CurrencyLabel(ticker: "KWD", name: "Kuwaiti Dinar"))
        listOfCurrency.append(CurrencyLabel(ticker: "KYD", name: "Cayman Islands Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "KZT", name: "Kazakhstani Tenge"))
        listOfCurrency.append(CurrencyLabel(ticker: "LAK", name: "Laotian Kip"))
        listOfCurrency.append(CurrencyLabel(ticker: "LBP", name: "Lebanese Pound"))
        listOfCurrency.append(CurrencyLabel(ticker: "LKR", name: "Sri Lankan Rupee"))
        listOfCurrency.append(CurrencyLabel(ticker: "LRD", name: "Liberian Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "LSL", name: "Lesotho Loti"))
        listOfCurrency.append(CurrencyLabel(ticker: "LTL", name: "Lithuanian Litas"))
        listOfCurrency.append(CurrencyLabel(ticker: "LVL", name: "Latvian Lats"))
        listOfCurrency.append(CurrencyLabel(ticker: "LYD", name: "Libyan Dinar"))
        listOfCurrency.append(CurrencyLabel(ticker: "MAD", name: "Moroccan Dirham"))
        listOfCurrency.append(CurrencyLabel(ticker: "MDL", name: "Moldovan Leu"))
        listOfCurrency.append(CurrencyLabel(ticker: "MGA", name: "Malagasy Ariary"))
        listOfCurrency.append(CurrencyLabel(ticker: "MKD", name: "Macedonian Denar"))
        listOfCurrency.append(CurrencyLabel(ticker: "MMK", name: "Myanma Kyat"))
        listOfCurrency.append(CurrencyLabel(ticker: "MNT", name: "Mongolian Tugrik"))
        listOfCurrency.append(CurrencyLabel(ticker: "MOP", name: "Macanese Pataca"))
        listOfCurrency.append(CurrencyLabel(ticker: "MRO", name: "Mauritanian Ouguiya"))
        listOfCurrency.append(CurrencyLabel(ticker: "MUR", name: "Mauritian Rupee"))
        listOfCurrency.append(CurrencyLabel(ticker: "MVR", name: "Maldivian Rufiyaa"))
        listOfCurrency.append(CurrencyLabel(ticker: "MWK", name: "Malawian Kwacha"))
        listOfCurrency.append(CurrencyLabel(ticker: "MXN", name: "Mexican Peso"))
        listOfCurrency.append(CurrencyLabel(ticker: "MYR", name: "Malaysian Ringgit"))
        listOfCurrency.append(CurrencyLabel(ticker: "MZN", name: "Mozambican Metical"))
        listOfCurrency.append(CurrencyLabel(ticker: "NAD", name: "Namibian Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "NGN", name: "Nigerian Naira"))
        listOfCurrency.append(CurrencyLabel(ticker: "NIO", name: "Nicaraguan Córdoba"))
        listOfCurrency.append(CurrencyLabel(ticker: "NOK", name: "Norwegian Krone"))
        listOfCurrency.append(CurrencyLabel(ticker: "NPR", name: "Nepalese Rupee"))
        listOfCurrency.append(CurrencyLabel(ticker: "NZD", name: "New Zealand Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "OMR", name: "Omani Rial"))
        listOfCurrency.append(CurrencyLabel(ticker: "PAB", name: "Panamanian Balboa"))
        listOfCurrency.append(CurrencyLabel(ticker: "PEN", name: "Peruvian Nuevo Sol"))
        listOfCurrency.append(CurrencyLabel(ticker: "PGK", name: "Papua New Guinean Kina"))
        listOfCurrency.append(CurrencyLabel(ticker: "PHP", name: "Philippine Peso"))
        listOfCurrency.append(CurrencyLabel(ticker: "PKR", name: "Pakistani Rupee"))
        listOfCurrency.append(CurrencyLabel(ticker: "PLN", name: "Polish Zloty"))
        listOfCurrency.append(CurrencyLabel(ticker: "PYG", name: "Paraguayan Guarani"))
        listOfCurrency.append(CurrencyLabel(ticker: "QAR", name: "Qatari Rial"))
        listOfCurrency.append(CurrencyLabel(ticker: "RON", name: "Romanian Leu"))
        listOfCurrency.append(CurrencyLabel(ticker: "RSD", name: "Serbian Dinar"))
        listOfCurrency.append(CurrencyLabel(ticker: "RUB", name: "Russian Ruble"))
        listOfCurrency.append(CurrencyLabel(ticker: "RWF", name: "Rwandan Franc"))
        listOfCurrency.append(CurrencyLabel(ticker: "SAR", name: "Saudi Riyal"))
        listOfCurrency.append(CurrencyLabel(ticker: "SBD", name: "Solomon Islands Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "SCR", name: "Seychellois Rupee"))
        listOfCurrency.append(CurrencyLabel(ticker: "SDG", name: "Sudanese Pound"))
        listOfCurrency.append(CurrencyLabel(ticker: "SEK", name: "Swedish Krona"))
        listOfCurrency.append(CurrencyLabel(ticker: "SGD", name: "Singapore Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "SHP", name: "Saint Helena Pound"))
        listOfCurrency.append(CurrencyLabel(ticker: "SLL", name: "Sierra Leonean Leone"))
        listOfCurrency.append(CurrencyLabel(ticker: "SOS", name: "Somali Shilling"))
        listOfCurrency.append(CurrencyLabel(ticker: "SRD", name: "Surinamese Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "STD", name: "São Tomé and Príncipe Dobra"))
        listOfCurrency.append(CurrencyLabel(ticker: "SVC", name: "Salvadoran Colón"))
        listOfCurrency.append(CurrencyLabel(ticker: "SYP", name: "Syrian Pound"))
        listOfCurrency.append(CurrencyLabel(ticker: "SZL", name: "Swazi Lilangeni"))
        listOfCurrency.append(CurrencyLabel(ticker: "THB", name: "Thai Baht"))
        listOfCurrency.append(CurrencyLabel(ticker: "TJS", name: "Tajikistani Somoni"))
        listOfCurrency.append(CurrencyLabel(ticker: "TMT", name: "Turkmenistani Manat"))
        listOfCurrency.append(CurrencyLabel(ticker: "TND", name: "Tunisian Dinar"))
        listOfCurrency.append(CurrencyLabel(ticker: "TOP", name: "Tongan Paʻanga"))
        listOfCurrency.append(CurrencyLabel(ticker: "TRY", name: "Turkish Lira"))
        listOfCurrency.append(CurrencyLabel(ticker: "TTD", name: "Trinidad and Tobago Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "TWD", name: "New Taiwan Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "TZS", name: "Tanzanian Shilling"))
        listOfCurrency.append(CurrencyLabel(ticker: "UAH", name: "Ukrainian Hryvnia"))
        listOfCurrency.append(CurrencyLabel(ticker: "UGX", name: "Ugandan Shilling"))
        listOfCurrency.append(CurrencyLabel(ticker: "USD", name: "United States Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "UYU", name: "Uruguayan Peso"))
        listOfCurrency.append(CurrencyLabel(ticker: "UZS", name: "Uzbekistan Som"))
        listOfCurrency.append(CurrencyLabel(ticker: "VEF", name: "Venezuelan Bolívar Fuerte"))
        listOfCurrency.append(CurrencyLabel(ticker: "VND", name: "Vietnamese Dong"))
        listOfCurrency.append(CurrencyLabel(ticker: "VUV", name: "Vanuatu Vatu"))
        listOfCurrency.append(CurrencyLabel(ticker: "WST", name: "Samoan Tala"))
        listOfCurrency.append(CurrencyLabel(ticker: "XAF", name: "CFA Franc BEAC"))
        listOfCurrency.append(CurrencyLabel(ticker: "XAG", name: "Silver (troy ounce)"))
        listOfCurrency.append(CurrencyLabel(ticker: "XAU", name: "Gold (troy ounce)"))
        listOfCurrency.append(CurrencyLabel(ticker: "XCD", name: "East Caribbean Dollar"))
        listOfCurrency.append(CurrencyLabel(ticker: "XDR", name: "Special Drawing Rights"))
        listOfCurrency.append(CurrencyLabel(ticker: "XOF", name: "CFA Franc BCEAO"))
        listOfCurrency.append(CurrencyLabel(ticker: "XPF", name: "CFP Franc"))
        listOfCurrency.append(CurrencyLabel(ticker: "YER", name: "Yemeni Rial"))
        listOfCurrency.append(CurrencyLabel(ticker: "ZAR", name: "South African Rand"))
        listOfCurrency.append(CurrencyLabel(ticker: "ZMK", name: "Zambian Kwacha (pre-2013)"))
        listOfCurrency.append(CurrencyLabel(ticker: "ZMW", name: "Zambian Kwacha"))
        listOfCurrency.append(CurrencyLabel(ticker: "ZWL", name: "Zimbabwean Dollar"))
    }
    
}


