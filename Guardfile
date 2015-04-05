# -- -*- mode: ruby; -*-
guard :shell do
  watch(%r{^(?!tests).*/.*\.yml$}) do |m|
    puts "#{m[0]} changed - running tests"
    system('vagrant ssh -c "specs -p"')
  end
end
