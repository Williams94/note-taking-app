require 'json'
def alfred_output(title:, subtitle:, arg:)
  {
    items: [
      {
        title: title,
        subtitle: subtitle,
        arg: arg,
        icon: 'some_icon.png'
      }
    ]
  }.to_json
end

result = ARGV[0] + ARGV[1]
print alfred_output(
  title: result,
  subtitle: 'Sum of values',
  arg: result
)