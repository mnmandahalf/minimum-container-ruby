def main
  case ARGV[0]
  when "run" then
    execute(ARGV[1..-1].join("\s"))
  else
    puts "#{ARGV[0]} is unsupported argument."
    exit!
  end
end

def execute(command)
  Dir.chroot("./rootfs")
  Dir.chdir("/")
  system(command)
end

main
