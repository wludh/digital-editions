# _plugins/persname_extractor.rb
require 'nokogiri'
require 'csv'
require 'find'

module Jekyll
    class PluginName < Jekyll::Generator
    safe true

      Jekyll.logger.info "persname_extractor: ", "Plugin is running!"
    
    def generate(site)
      # Test  
      Jekyll.logger.info "persname_extractor: ", "Generator is running!"

      # Configuration
      source_dir = site.config['persname_extractor']['source_dir'] || 'editions'
      output_file = site.config['persname_extractor']['output_file'] || 'person_names.csv'
      
      # Full paths
      xml_source_path = File.join(site.source, source_dir)
      data_dir = File.join(site.source, '_data')
      csv_output_path = File.join(data_dir, output_file)
      
      # Check if source directory exists
      unless Dir.exist?(xml_source_path)
        Jekyll.logger.warn "PersName Extractor:", "Source directory '#{source_dir}' not found"
        return
      end
      
      # Ensure _data directory exists
      FileUtils.mkdir_p(data_dir) unless Dir.exist?(data_dir)
      
      # Extract person names
      person_names = extract_person_names(xml_source_path)
      
      # Write to CSV
      write_to_csv(csv_output_path, person_names)
      
      Jekyll.logger.info "PersName Extractor:", "Extracted #{person_names.length} person names to #{output_file}"
    end

    private

    def extract_person_names(source_path)
      person_names = []
      
      Find.find(source_path) do |file_path|
        next unless File.file?(file_path) && file_path.end_with?('.xml')
        
        begin
          # Parse XML file
          doc = Nokogiri::XML(File.read(file_path))
          
          # Find all persName elements
          pers_name_elements = doc.xpath('//persName')
          
          pers_name_elements.each do |element|
            # Extract text content and attributes
            name_text = element.text.strip
            next if name_text.empty?
            
            person_data = {
              name: name_text,
              source_file: File.basename(file_path),
              source_path: file_path
            }
            
            # Add any attributes as additional columns
            element.attributes.each do |attr_name, attr_value|
              person_data[attr_name.to_sym] = attr_value.value
            end
            
            person_names << person_data
          end
          
        rescue Nokogiri::XML::SyntaxError => e
          Jekyll.logger.warn "PersName Extractor:", "Error parsing #{file_path}: #{e.message}"
        rescue => e
          Jekyll.logger.warn "PersName Extractor:", "Error processing #{file_path}: #{e.message}"
        end
      end
      
      person_names
    end

    def write_to_csv(output_path, person_names)
      return if person_names.empty?
      
      # Get all unique keys for CSV headers
      all_keys = person_names.flat_map(&:keys).uniq
      
      CSV.open(output_path, 'w', write_headers: true, headers: all_keys) do |csv|
        person_names.each do |person_data|
          csv << all_keys.map { |key| person_data[key] }
        end
      end
    end
  end
end