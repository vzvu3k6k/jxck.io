robots =<<-EOS
User-agent: *
Allow: *
EOS

Proc.new do |env|
  path = env["PATH_INFO"]
  if path.match(/.*\/robots.txt/)
    [
      200,
      {"content-type" => "text/plain"},
      [robots]
    ]
  else
    [399, {}, []]
  end
end
