# Editarea::Rails

Gem for editarea


## Installation

Add this line to your application's Gemfile:

    gem 'editarea-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install editarea-rails

## Usage

add to application.js

    //= require edit_area_full

view code:

    .row-fluid 
      .span12.content_unit.section
        %form
          %textarea#textarea{:name => "content", :style => "width:100%", :rows => 15}
            define_method :name, &block

javascript code:

    :javascript 
      editAreaLoader.init({
        id: "textarea",          // textarea id
        syntax: "ruby",          // syntax to be uses for highgliting
        start_highlight: true,   // to display with highlight mode on start-up
        show_line_colors: true, 
        replace_tab_by_spaces: 4,
        allow_toggle: false
      });
    


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
