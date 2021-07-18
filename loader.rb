$LOAD_PATH.unshift(File.expand_path('mediator_pattern', File.dirname(__FILE__)))

Dir['./**/*.rb'].sort.each { |file| require file }
