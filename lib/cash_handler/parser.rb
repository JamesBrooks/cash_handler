require 'timeout'
require 'yaml'

module CashHandler

  # Parses exchange rates sourced from x-rates.com
  class Parser
    attr_accessor :backup_rates_file_location

    def initialize(backup_rates_file_location = nil)
      @backup_rates_file_location = backup_rates_file_location
    end

    # Fetches a hash of up-to-date rates from x-rates.com
    def fetch_rates
      rates = {}
      begin
        Timeout.timeout(60) do
          doc = Hpricot(open('http://www.x-rates.com/d/USD/table.html'))
          rates = CashHandler::CURRENCIES.inject({}) do |collection, currency|
            code = currency.first
            collection[code] = (doc/"a[@href=\"/d/USD/#{code}/graph120.html\"]").html.to_f
            collection
          end.update({'USD' => 1.0})
          persist_rates(rates)
        end
      rescue Exception
        rates = fetch_persisted_rates
      end
      rates
    end
    
    private
    
    def persist_rates(rates)
      if @backup_rates_file_location && backup_file = File.new(@backup_rates_file_location, "w+")
        backup_file << rates.to_yaml
        backup_file.close
      end
    end
    
    def fetch_persisted_rates
      rates = {}
      if @backup_rates_file_location && backup_file = File.new(@backup_rates_file_location, "r")
        rates = YAML.load(backup_file)
        backup_file.close
      end
      rates
    end

  end
end
