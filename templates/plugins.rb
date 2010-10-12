Haml::Template.options[:attr_wrapper]     = '"'
if Rails.env == "development"
  Sass::Plugin.options[:line_numbers]     = true
  Sass::Plugin.options[:style]            = :nested
else
  Sass::Plugin.options[:style]            = :compressed
end
Sass::Plugin.options[:syntax]             = :scss
Sass::Plugin.options[:template_location]  = (Rails.root + 'app' + 'sass').to_s
Sass::Plugin.options[:css_location]       = (Rails.root + 'public' + 'stylesheets').to_s