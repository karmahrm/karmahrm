class BootstrapDatepickerInput < SimpleForm::Inputs::Base
  def input
    text_field_options = input_html_options.with_indifferent_access
    format = text_field_options.delete(:format)
    hidden_field_options = text_field_options.dup
    hidden_field_options[:class] = text_field_options[:class].dup # so they won't work with same array object
    hidden_field_options[:id] = "#{attribute_name}_hidden"
    text_field_options[:class] << 'bootstrap-datepicker'
    text_field_options[:class] << 'form-control'
    text_field_options[:type] = 'text'
    text_field_options[:value] ||= format_date(value(object), format)
    set_data_option text_field_options, 'date-format', I18n.t(format, scope: [:date, :datepicker], default: :default)
    default_data_option text_field_options, 'provide', 'datepicker'

    return_string =
      "#{@builder.text_field(attribute_name, text_field_options.to_hash)}\n" \
      "#{@builder.hidden_field(attribute_name, hidden_field_options.to_hash)}\n"
    return_string.html_safe
  end

  protected

  def default_data_option(hash, key, value)
    set_data_option(hash, key, value) unless data_option(hash, key)
  end

  def data_option(hash, key)
    hash[:data].try(:[], key) || hash["data-#{key}"]
  end

  def set_data_option(hash, key, value)
    hash[:data].try(:[]=, key, value) || (hash["data-#{key}"] = value)
  end

  def value(object)
    object.send @attribute_name if object
  end

  def format_date(value, format = nil)
    value.try(:strftime, I18n.t(format, scope: [:date, :formats], default: :default))
    end
  end
