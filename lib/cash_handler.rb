require 'open-uri'
require 'hpricot'

module CashHandler
  CURRENCIES = {
    'ARS' => 'Argentine Peso',
    'AUD' => 'Australian Dollar',
    'BWP' => 'Botswana Pula',
    'BRL' => 'Brazilian Real',
    'GBP' => 'British Pound',
    'BND' => 'Brunei dollar',
    'BGN' => 'Bulgarian Lev',
    'CAD' => 'Canadian Dollar',
    'CLP' => 'Chilean Peso',
    'CNY' => 'Chinese Yuan',
    'COP' => 'Colombian Peso',
    'HRK' => 'Croatian Kuna',
    'DKK' => 'Danish Krone',
    'EEK' => 'Estonian Kroon',
    'EUR' => 'Euro',
    'HKD' => 'Hong Kong Dollar',
    'HUF' => 'Hungarian Forint',
    'ISK' => 'Iceland Krona',
    'INR' => 'Indian Rupee',
    'ILS' => 'Israeli New Shekel',
    'JPY' => 'Japanese Yen',
    'KZT' => 'Kazakhstani Tenge',
    'KWD' => 'Kuwaiti Dinar',
    'LVL' => 'Latvian Lat',
    'LYD' => 'Libyan Dinar',
    'LTL' => 'Lithuanian Litas',
    'MYR' => 'Malaysian Ringgit',
    'MTL' => 'Maltese Lira',
    'MUR' => 'Mauritius Rupee',
    'MXN' => 'Mexican Peso',
    'NPR' => 'Nepalese Rupee',
    'NZD' => 'New Zealand Dollar',
    'NOK' => 'Norwegian Kroner',
    'OMR' => 'Omani Rial',
    'PKR' => 'Pakistan Rupee',
    'QAR' => 'Qatari Rial',
    'RON' => 'Romanian Leu',
    'RUB' => 'Russian Ruble',
    'SAR' => 'Saudi Riyal',
    'SGD' => 'Singapore Dollar',
    'ZAR' => 'South African Rand',
    'KRW' => 'South Korean Won',
    'LKR' => 'Sri Lanka Rupee',
    'SEK' => 'Swedish Krona',
    'CHF' => 'Swiss Franc',
    'TWD' => 'Taiwan Dollar',
    'THB' => 'Thai Baht',
    'TTD' => 'Trinidad/Tobago Dollar',
    'TRY' => 'Turkish Lira',
    'VEF' => 'Venezuelan Bolivar',
    'USD' => 'United States Dollar'
  }
  
  class << self
    def load
    end
  end
end
