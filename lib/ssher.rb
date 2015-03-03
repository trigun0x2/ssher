module SSHer
  class Application
    SERVER_FILE = File.expand_path("../../ssh-servers", __FILE__)

    def initialize(argv)
    end

    def run
      counter = 1
      server_commands = []
      File.open(SERVER_FILE, "r") do |infile|
        while (line = infile.gets)
          split = line.split(":")
          puts "#{counter}. #{split[0]}"
          server_commands << split[1]
          counter += 1
        end
      end
      choice = gets.to_i
      system("clear")
      out = server_commands[choice-1]
      system("#{out}")
    end
  end
end
